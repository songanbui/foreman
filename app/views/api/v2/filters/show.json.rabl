object @filter

extends "api/v2/filters/main"

# TODO: Fix when https://github.com/theforeman/foreman/pull/1208 is merged
if SETTINGS[:organizations_enabled]
  child :organizations => :organizations do
    attributes :id, :name
  end
end

if SETTINGS[:locations_enabled]
  child :locations => :locations do
    attributes :id, :name
  end
end
