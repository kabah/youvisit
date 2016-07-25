require './app/models/place'
require './app/models/user'
require './app/models/role'

User.destroy_all
Role.destroy_all
Place.destroy_all

User.create(
            {
            id: 1,
            name: "Kabah Conda",
            email: "1kabah@gmail.com",
            password: "123456",
            password_confirmation: "123456"
            }
  )

Role.create([
            {
              id: 1,
              name: "admin"
            },
            {
              id: 2,
              name: "driver"
            },
            {
              id: 3,
              name: "passenger"
            }
  ])

kabah = User.find(1)
kabah.add_role("admin")

Place.create([
                {
                 :id => 1,
               :name => "Big Muddy River Correctional Center",
        :address_one => "251 N. Illinois Highway 37",
        :address_two => "",
               :city => "Ina",
                :zip => 62846,
              :phone => "(618) 437-5300",
           :admin_id => 1,
         
    },
                 {
                 :id => 2,
               :name => "Centralia Correctional Center",
        :address_one => "9330 Shattuc Road",
        :address_two => "P.O. Box 1266",
               :city => "Centralia",
                :zip => 62801,
              :phone => "(618) 533-4111",
           :admin_id => 1,
    },
    {
                 :id => 3,
               :name => "Clayton Work Camp",
        :address_one => "207 W. Morgan",
        :address_two => "",
               :city => "Clayton",
                :zip => 62324,
              :phone => "(217) 894-6577",
           :admin_id => 1,
    },
    {
                 :id => 4,
               :name => "Crossroads Adult Transition Center",
        :address_one => "3210 West Arthington",
        :address_two => "",
               :city => "Chicago",
                :zip => 60624,
              :phone => "(773) 533-5000",
           :admin_id => 1,
    },
    {
                 :id => 5,
               :name => "Danville Correctional Center",
        :address_one => "3820 East Main Street",
        :address_two => "",
               :city => "Danville",
                :zip => 61834,
              :phone => "(217) 446-0441",
           :admin_id => 1,
    },
    {
                 :id => 6,
               :name => "Decatur Correctional Center",
        :address_one => "2310 East Mound Road",
        :address_two => "P.O. Box 3066",
               :city => "Decatur",
                :zip => 62524,
              :phone => "(217) 877-0353",
           :admin_id => 1,
    },
    {
                 :id => 7,
               :name => "Dixon Correctional Center",
        :address_one => "2600 N. Brinton Avenue",
        :address_two => "P.O. Box 1200",
               :city => "Dixon",
                :zip => 61021,
              :phone => "(815) 288-5561",
           :admin_id => 1,
    },
    {
                 :id => 8,
               :name => "East Moline Correctional Center",
        :address_one => "100 Hillcrest Road",
        :address_two => "",
               :city => "East Moline",
                :zip => 61244,
              :phone => "(309) 755-4511",
           :admin_id => 1,
    },
    {
                 :id => 9,
               :name => "Graham Correctional Center",
        :address_one => "12078 Illinois Route 185",
        :address_two => "",
               :city => "Hillsboro",
                :zip => 62049,
              :phone => "(217) 532-6962",
           :admin_id => 1,
    },
    {
                 :id => 10,
               :name => "Hill Correctional Center",
        :address_one => "600 South Linwood Road",
        :address_two => "P.O. Box 1327",
               :city => "Galesburg",
                :zip => 61402,
              :phone => "(309) 343-4212",
           :admin_id => 1,
    },
])
