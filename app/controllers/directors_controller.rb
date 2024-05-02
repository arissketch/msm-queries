class DirectorsController < ApplicationController
  def index
    render({:template => "directors_templates/list"})
  end

  def show
    the_id=params.fetch("the_id")
    if the_id=="eldest"
      matching_records=Director.where.not({ :dob => nil }).order({ :dob => :asc })
      @eldest=matching_records.at(0)

      render({:template =>"directors_templates/elder"})
    elsif the_id=="youngest"
      matching_records=Director.where.not({ :dob => nil }).order({ :dob => :desc })
      @junior=matching_records.at(0)

      render({:template =>"directors_templates/junior"})
    else
      matching_records=Director.where({:id => the_id })
      @the_director=matching_records.at(0)

      render({:template =>"directors_templates/details"})
      
    end

    
  end

end
