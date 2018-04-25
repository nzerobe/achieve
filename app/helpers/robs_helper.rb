module RobsHelper
def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_robs_path
    elsif action_name == 'edit'
      rob_path
    end
  end
end
