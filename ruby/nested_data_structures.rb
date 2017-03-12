# Release 3
supermarket = {
  checkout: {
    type: ['cashier', 'self checkout'],
    bag: ['paper', 'plastic'],
    no_aisles: 10,
    no_atms: 3
  },
  meat: [['beef', 'burgers'], ['chicken', 'wings'], ['pork', 'hotdogs'], ['seafood', 'ceviche']],
  health: ['vitamins', 'tooth paste', 'soap', 'deodorant'],
  dairy: ['milk', 'eggs', 'cheese', 'yogurt'],
  beverages: {
    alcoholic: ['vodka', 'whiskey', 'wine', 'beer'],
    non_alcoholic: ['juice', 'soda', 'water', 'tea']
  },
  produce: {
    vegetables: ['carrots', 'onions', 'celery', 'radish'],
    fruits: ['apples', 'oranges', 'peaches', 'bananas']
  }
}

p "Fastest way to checkout: #{supermarket[:checkout][:type][1]}"
p "Add 'reusable' to bag type: #{supermarket[:checkout][:bag] << 'reusable'}"
p "Popular seafood dish: #{supermarket[:meat][3][1]}"
p "Capitalize yogurt in dairy: #{supermarket[:dairy][3].capitalize}"
p "List all fruits: #{supermarket[:produce][:fruits]}"



