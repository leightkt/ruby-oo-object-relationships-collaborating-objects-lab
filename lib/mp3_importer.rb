require 'pry'

class MP3Importer
    attr_accessor :path, :files

    def initialize(path)
        @path = path
    end
    
    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect do |f|
            f.gsub("#{path}/", "")
        # binding.pry
        end
    end

    def import
        files.each do |filename|
            Song.new_by_filename(filename)
        end
    end
end

# test_path = "./spec/fixtures/mp3s"

# binding.pry