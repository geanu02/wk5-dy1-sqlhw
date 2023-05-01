inventory = {'oranges': 3, 'apples': 10, 'bananas': 5}

def sort_inventory(_inventory):
    _keys = list(_inventory.keys())
    _keys.sort()
    sorted_dict = {i: _inventory[i] for i in _keys}
    for k, v in sorted_dict.items():
        print(f"We have {v} {k} in stock.\n")
    
sort_inventory(inventory)