# Méthode qui additionne 2 nombres
def add(nb1, nb2)
  return nb1 + nb2
end

# Méthode qui soustrait 2 nombres
def subtract(nb1,nb2)
  return nb1 - nb2
end

# Méthode qui fait la somme de tous les termes d'un tableau
def sum(arr)
  return arr.sum
end

# Méthode qui multiplie 2 nombres
def multiply(nb1, nb2)
  return nb1 * nb2
end

# Méthode qui renvoie nb1 puissance nb2
def power(nb1, nb2)
  return nb1 ** nb2
end

# Méthode qui calcule la factorielle de nb
def factorial(nb)
  if nb == 0
    fact = 0
  else
    fact = 1
  end
  for i in 1 .. nb
    fact = fact * i
  end
  return fact
end
