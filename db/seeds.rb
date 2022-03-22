puts "🌱 Seeding spices..."

# Seed your database here
mary = Owner.create(name: "Mary", budget: 100)
henry = Owner.create(name: "Henry", budget: 200)
chase = Owner.create(name: "Chase", budget: 150)
tina = Owner.create(name: "Tina", budget: 50)

Fruit.create(name: "Apple", price: 5, stock: 10, health_benefit:"Excellent source of soluble fiber. High in vitamin C. Great low-calorie snack.", owner_id:mary.id)
Fruit.create(name: "Apricot", price: 2, stock: 50, health_benefit:"Notable source of dietary fiber. Outstanding source of vitamin A and vitamin C. Provides calcium for healthy bones.", owner_id:henry.id)
Fruit.create(name: "Avocado", price: 3, stock: 20, health_benefit:"Contains high amounts of healthy fats. Good source of fiber. Rich in protein and potassium.", owner_id:chase.id)
Fruit.create(name: "Banana", price: 1, stock: 100, health_benefit:"Excellent source of potassium. Provides necessary minerals like manganese. Rich in vitamin B6 and vitamin C.", owner_id:chase.id)
Fruit.create(name: "Blackberry", price: 7, stock: 75, health_benefit:"Packed with vitamin C, vitamin K and vitamin E. Great source of magnesium and manganese. Very good source of dietary fiber.", owner_id:tina.id)
Fruit.create(name: "Blueberry", price: 9, stock: 80, health_benefit:"Rich in vitamin K and vitamin C. Outstanding source of manganese. High in antioxidants, particularly flavonoids.", owner_id:tina.id)

puts "✅ Done seeding!"
