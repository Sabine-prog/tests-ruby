# Méthode qui retourne la chaine passée en paramètre
def echo(str)
  return str
end

# Méthode qui passe toutes les lettres d'une chaine de caractères en majuscules
def shout(str)
  return str.upcase
end

# Méthode qui renvoie la chaine passée en paramètre répétée nb fois
# Si rien ne précise le nombre de fois (pas de paramètre passé), la chaine est rfépétée 2 fois
def repeat(str, *nb)
  if nb == []
    nb[0] = 2
  end
  return (((str  + " ") * nb[0].to_i).rstrip)
end

# Méthode qui retourne les n 1ères lettres d'une chaine
def start_of_word(str, nb)
  return str.slice(0, nb)
end

# Méthode qui renvoie le 1er mot d'une chaîne
def first_word(str)
  length = str.rindex(" ")
  return str.slice(0, length)
end

# Méthode qui retourne la chaine passée en paramètre avec des majuscules au début de chaque mot sauf ceux de 3 lettres et moins
# Le 1er mot de la chaine retournée commence toujours par une majuscule
def titleize(str)
  # Met une lettre majuscule au début de la phrase et range chaque mot de la phrase dans un tableau
  arr_str = str.capitalize.split(" ")
  # Met une majuscule au début des mots dont la taille est > 3
  arr_str.map! {|word| if word.length > 3 then word.capitalize else word end}
  # Reconstitue la phrase
  return (arr_str.join(" "))
end
