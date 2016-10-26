module ApplicationHelper
    def error_message(resource, attr_name)
    if resource.errors[attr_name].present?
      %Q(<p class="error">#{ resource.errors.full_messages_for(attr_name).join('<br>')}</p>)
    end.to_s.html_safe
    end
end

