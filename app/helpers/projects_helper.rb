module ProjectsHelper
def resourse_name
:user
end

def resourse
	@resourse ||= User.new
end

def devise_mapping
	@devise_mapping ||=Devise.mappings[:user]
end

def resource_class
	devise_mapping.to
end
end
