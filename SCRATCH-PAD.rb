require  'pry';

CSV.foreach("lib/seeds/pictureviewer.csv") do |row|
    image_rule = ImageRule.find_or_create_by(name: row[1])

    # row[2].split('/').select(&:create?).each do |example|
    #     if example.present?
    #         example = Example.find_or_create_by(text: '#{example}')
    #     end
    # end
    binding.pry
end

process_images