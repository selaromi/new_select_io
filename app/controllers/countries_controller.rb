class CountriesController < InheritedResources::Base

  def index
    @countries = Country.all
    respond_to do |format|
      format.html
      format.xml { send_data @countries.to_xml(only: [ :name, :capital ]) }
      format.json { send_data @countries.to_json( only: [ :name, :capital ]) }
      format.csv { send_data @countries.to_csv }
      format.xls { send_data @countries.to_csv(col_sep: "\t") }
    end
  end
end
