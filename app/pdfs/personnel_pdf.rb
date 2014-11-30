class PersonnelsPdf < Prawn::Document
  def initialize(personnels)
    super(top_margin: 70)
    @personnels = personnels
    #@view = view
    #text "Order goes here"
    header
    line_items
  end
 
  def header
    #This inserts an image in the pdf file and sets the size of the image
=begin
    logo = "#{Rails.root}/app/assets/images/images.jpg"
    image logo, width: 130, height: 150
    text "Order \##{@prestation.id}", size: 30, style: :bold
    text "Order \##{@prestation.somme}", size: 30, style: :bold
    text "Client :  \##{@cli.nom}", size: 30, style: :bold
=end
  end

  def line_items
    move_down 20
    table lignetable do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end

  def lignetable
    [['Id','Nom', 'Prenom', 'Adresse', 'E-mail']] +
    @personnels.map do |item|
      [item.id,item.nom, item.prenom, item.address, item.email]
    end
  end
 
  
end


class PersonnelPdf < Prawn::Document
  def initialize(personnel)
  	super(top_margin: 70)
  	@personnel = personnel
  	#@view = view
    #text "Order goes here"
    header
    
  end
 
  def header
    #This inserts an image in the pdf file and sets the size of the image
=begin
    logo = "#{Rails.root}/app/assets/images/images.jpg"
    image logo, width: 130, height: 150
    text "Order \##{@prestation.id}", size: 30, style: :bold
    text "Order \##{@prestation.somme}", size: 30, style: :bold
    text "Client :  \##{@cli.nom}", size: 30, style: :bold
=end

  #logo = "#{Rails.root}"+@personnel.cover.url(:original)
  #logo = "/PROJETS/ROR/mairieC4/public/system/personnels/covers/000/000/001/original/images.png"
  logo = @personnel.cover.path(:medium)
  image logo, width: 130, height: 150, right: 0
  end

  
 
  
end