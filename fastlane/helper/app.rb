APP_JSON_PATH = './app.json'
PACKAGE_JSON_PATH = './package.json'

def app_name
  app = load_json(json_path: APP_JSON_PATH)
  app['name']
end

def app_version
  package = load_json(json_path: PACKAGE_JSON_PATH)
  package['version']
end
