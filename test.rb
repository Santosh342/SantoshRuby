this is the sample test script
require 'rubygems'

require 'active_record'

ActiveRecord::Base.establish_connection({

:adapter => 'postgresql',

:user => 'foo',

:password => 'bar',

:database => 'whatever'

})

class Task <>

set_table_tame "a_legacy_thingie"

def utility_methods

update_attribute(:title, "yep")

end

end

Task.find(:first)

Etcetera. It’s ActiveRecord, you know what to do. Going wild:

ActiveRecord::Base.establish_connection(:adapter => "sqlite3",

:dbfile => ":memory:")

ActiveRecord::Schema.define(:version => 1) do

create_table :posts do |t|

t.string :title

t.text :excerpt, :body

end

end

class Post <>

validates_presence_of :title

end

Post.create(:title => "A new post!")

Post.create(:title => "Another post",

:excerpt => "The excerpt is an excerpt.")


