global.StackSize = 99

function add(Inv, item, qtd) {
	var itemsAdd = qtd
	
	if item.Stacks {
		for(var i = 0; i < array_length(Inv); i++) {
			if Inv[i] != -1 {
				if Inv[i][0].Name == Item.Name {
					var limite = global.StackSize - Inv[i][1]
					if limite <= itemsAdd {
						itemsAdd -= limite
						Inv[i][1] = global.StackSize
					} else {
						Inv[i][1] += itemsAdd
						return
					}
				}
			}
		}
	}
	
	for(var i = 0; i < array_length(Inv); i++) {
		if Inv[i] == -1 {
			if itemsAdd > global.StackSize {
				Inv[i] = [item,99]
				itemsAdd -= global.StackSize
			} else {
				Inv[i] = [item,qtd]
				return
			}
		}
	}
	return
}

function remove(Inv, item, qtd) {
	itemRemove = qtd
	
	for(var i = 0; i < array_length(Inv); i++) {
		if Inv[i] != -1 {
			if Inv[i][0].Name == item.Name {
				var remover = Inv[i][1];
				if remover < itemRemove {
					itemRemove -= remover
					Inv[i] = -1
				} else {
					Inv[i][1] -= itemRemove
					if Inv[i][1] <= 0 {	Inv[i] = -1 }
					return 
				}
			}
		}
	}
	return
}