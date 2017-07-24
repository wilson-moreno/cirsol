class AddForeignKeys < ActiveRecord::Migration[5.0]
  def change
      # Foreign keys for cirs_calls table
      add_foreign_key :cirs_calls, :cirs_contacts, column: :contact_id, primary_key: "id"
      add_foreign_key :cirs_calls, :cirs_call_statuses, column: :call_status_id, primary_key: "id"

      # Foreign keys for cirs_circuits table
      add_foreign_key :cirs_circuits, :cirs_publishers, column: :circuit_overseer_id, primary_key: "id"
      add_foreign_key :cirs_circuits, :cirs_languages, column: :language_id, primary_key: "id" 

      # Foreign keys for cirs_congregations table
      add_foreign_key :cirs_congregations, :cirs_circuits, column: :circuit_id, primary_key: "id"
      add_foreign_key :cirs_congregations, :cirs_cities, column: :city_id, primary_key: "id" 
      add_foreign_key :cirs_congregations, :cirs_languages, column: :language_id, primary_key: "id"

      # Foreign keys for cirs_contacts table
      add_foreign_key :cirs_contacts, :cirs_congregations, column: :congregation_id, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_territories, column: :territory_id, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_service_groups, column: :service_group_id, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_cities, column: :city_id, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_municipals, column: :municipal_id, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_provinces, column: :province_id, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_religions, column: :religion_id, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_publishers, column: :found_by, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_languages, column: :language_id, primary_key: "id"
      add_foreign_key :cirs_contacts, :cirs_contact_statuses, column: :contact_status_id, primary_key: "id"

      # Foreign keys for cirs_location_maps table
      add_foreign_key :cirs_location_maps, :cirs_contacts, column: :contact_id, primary_key: "id"
      
      # Foreign keys for cirs_publishers table
      add_foreign_key :cirs_publishers, :cirs_congregations, column: :congregation_id, primary_key: "id"
      add_foreign_key :cirs_publishers, :cirs_service_privileges, column: :service_privilege_id, primary_key: "id"

      # Foreign keys for cirs_service_groups
      add_foreign_key :cirs_service_groups, :cirs_congregations, column: :congregation_id, primary_key: "id"
      add_foreign_key :cirs_service_groups, :cirs_publishers, column: :group_overseer_id, primary_key: "id"
      add_foreign_key :cirs_service_groups, :cirs_publishers, column: :group_assistant_id, primary_key: "id"

      # Foreign keys for cirs_territories
      add_foreign_key :cirs_territories, :cirs_congregations, column: :congregation_id, primary_key: "id"
      add_foreign_key :cirs_territories, :cirs_service_groups, column: :service_group_id, primary_key: "id"
  end
end
