namespace :todo do
  desc "TODO"
  task delete_items: :environment do
    Item.where("created_at < ?", 7.days.ago).delete_all
    puts "hey I can run this with a rake task"
  end

end
