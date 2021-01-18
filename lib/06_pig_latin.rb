# Méthode qui transforme tous les mots d'une chaine comme indiqué ci-dessous
def translate(str)
  # Décomposer chaque mot
  arr_str = Array.new str.split (" ")
  nb_words = arr_str.length
  arr_tmp1 = Array.new
  arr_tmp2 = Array.new

  # Trouver la 1ère voyelle de chaque mot
  # Faire commencer le nouveau mot par la 1ère voyelle autre que "u"
  arr_tmp1 = arr_str.map {|word| if word.index(/[aeio]/) != nil  # S'il y a au moins une voyelle autre que "u" dans le mot
                                 then word.slice(word.index(/[aeio]/), word.length - word.index(/[aeio]/))
                                 else word # sinon, le mot ne change pas
                                 end}

  # Ajouter la partie avant cette voyelle à la fin du mot
  arr_tmp2 = arr_str.map {|word| if word.index(/[aeio]/) != nil  # S'il y a au moins une voyelle autre que "u" dans le mot
                                 then word.slice(0, word.index(/[aeio]/))
                                 else word = "" # sinon, le mot ne change pas
                                 end}
  
  # Ajouter "ay" à la fin des nouveaux mots constitués
  nb_words.times do |i|
    # S'il y a des majuscules en début de certains mots, la nouvelle 1ère lettre du nouveau mot devient une majuscule
    # l'ancienne majuscule devient une minuscule
    if arr_tmp2[i][0].to_s >= 'A' && arr_tmp2[i][0].to_s <= 'Z'
      arr_tmp1[i][0] = arr_tmp1[i][0].upcase
      arr_tmp2[i][0] = arr_tmp2[i][0].downcase
    end

    arr_str[i] = arr_tmp1[i] + arr_tmp2[i] + "ay"
  end

  # Renvoie la chaine transformée
  return arr_str.join(" ")
end
