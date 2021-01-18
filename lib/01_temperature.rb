# Méthode qui convertit une température en °F passée en paramètre en une température en °C
def ftoc(temp_f)
  temp_c = (temp_f.to_f - 32) * 5.0 / 9.0
  return (temp_c)
end

# Méthode qui convertit une température en °C passée en paramètre en une température en °F
def ctof(temp_c)
  temp_f = temp_c.to_f * 9 / 5 + 32
  return (temp_f)
end
