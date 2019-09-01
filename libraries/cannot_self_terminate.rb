# frozen_string_literal: true

module CannotSelfTerminate
  def eval_post_install_action
    Chef::Log.info ">>>>>>>>>>>>>>>>>                         <<<<<<<<<<<<<<<<"
    Chef::Log.info ">>>>>>>>>>>>>>>>> I cannot self terminate <<<<<<<<<<<<<<<<"
    Chef::Log.info ">>>>>>>>>>>>>>>>>                         <<<<<<<<<<<<<<<<"
  end
end
