# Méthode qui recherche le + grand nombre parmi 3 passés en paramètres
def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  else
    if a >= b && a >= c
      return "a is bigger"
    end
    if b >= a && b >= c
      return "b is bigger"
    end
    if c >= a && c >= b
      return "c is bigger"
    end
  end
end

# Méthode qui enlève les lettres L,T,A d'une chaine après l'avoir passée en majuscule et inversé l'ordre des lettres
def reverse_upcase_noLTA(str)
   return str.reverse.upcase.gsub(/[LTA]/, '')
end

# Méthode qui vérifie si un tableau contient le nombre 42
def array_42(arr)
  return arr.include?(42)
end


def magic_array(arr)
  # flatten supprime les tableaux internes
  # sort range les termes par ordre de grandeur
  # Les nombres sont multipliés par 2
  # Les multiples de 3 sont supprimés ainsi que les doublons (uniq)
  return arr.flatten.sort.map {|a| a * 2}.reject {|a| a % 3 == 0}.uniq.sort
end
