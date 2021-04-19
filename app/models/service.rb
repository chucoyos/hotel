class Service < ApplicationRecord
    validates :title, presence: true
    after_create_commit { broadcast_prepend_to 'services' }
    after_update_commit { broadcast_replace_to 'services' }
    after_destroy_commit { broadcast_remove_to 'services' }
end
