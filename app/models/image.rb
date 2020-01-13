class Image < ApplicationRecord
    self.per_page = 10
end

# set per_page globally
WillPaginate.per_page = 10
