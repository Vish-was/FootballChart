class TeamsService
  attr_reader :filepath, :col_separator
    
  def initialize(filepath)
    @filepath = filepath
    @col_separator = /[\s|-]{2,}/
  end

  def parse
    open(filepath) do |f|
      headers = extract_header(f.gets)
      f.each do |line|
        fields = extract_fields(line, headers)
        yield fields unless fields.nil? 
      end
    end
  end
  
  private 

  def extract_header(string)
    extract_data(string).collect(&:downcase)
  end  

  def extract_fields(string, headers)
    data = extract_data(string)

    return Hash[headers.zip(data)] unless data.empty?
    nil
  end  

  def extract_data(string)
    string.strip.split(col_separator)
  end  
end