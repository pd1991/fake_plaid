module FakePlaid
  class Configuration
    attr_writer :fixture_path

    DEFAULT_FIXTURE_PATH = File.join(File.dirname(__FILE__), 'fixtures/')

    def fixture_path
      @fixture_path || DEFAULT_FIXTURE_PATH
    end
  end
end
