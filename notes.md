Restaurant -< RestaurantPizza >- Pizza

Restaurant has_many: pizzas

pizza has_many :restaurants 

restaurant_pizza(foreign key) belongs_to :pizza belongs_to :restaurant
    has a pizza_id and restaurant_id


        pizza 
            show
            new- pizza form
                redirect_to show

        restaurant 
            show
            index - link to show

validations
pizza unique name
errors if invalid input


        