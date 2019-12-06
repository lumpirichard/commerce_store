require 'csv'

Product.delete_all

url = "https://raw.githubusercontent.com/salt-london/tech-challenge/master/data/openfoodfacts.csv"
csv_text = open(url)

CSV.foreach(csv_text, headers: true,  encoding: "bom|utf-8", col_sep: "\t" ) do |row|
  if row["categories"].nil?
    cat = nil
  else
    cat = row["categories"][0..250]
  end

  Product.create({
     name: row["product_name"],
     categories: cat, #error too long for certain things --> max for mysql is 255
     energy_kcal_100g: row["energy-kcal_100g"],
     url: row["url"]
  })
end
