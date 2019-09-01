# frozen_string_literal: true

Ohai.plugin(:DpkgDowngradeProtection) do
  shim = Module.new do
    DOWNGRADE_PROTECTED_PACKAGES = %w(chef-client).freeze

    def target_version_already_installed?(current_version, target_version)
      if DOWNGRADE_PROTECTED_PACKAGES.include?(@new_resource.package_name)
        Chef::Log.info("#{@new_resource} version checked with downgrade protection")
        return false unless current_version && target_version
        !shell_out("dpkg", "--compare-versions", current_version.to_s, "ge", target_version.to_s).error?
      else
        super
      end
    end
  end

  Chef::Provider::Package.prepend shim
end
