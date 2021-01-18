# Méthode qui conertit un nombre de seconde au format hh:mm:ss
def time_string(n_sec)
  nb_h = n_sec / 3600
  nb_min = n_sec / 60 - nb_h * 60
  nb_sec = n_sec - nb_min * 60 - nb_h * 3600
  str_time = ""

  # Heures
  if nb_h < 10
    str_time << "0%d:" % nb_h
  else
    str_time << "%d" % (nb_h / 10) << "%d:" % (nb_h % 10)
  end
  # Minutes
  if nb_min < 10
    str_time << "0%d:" % nb_min
  else
    str_time << "%d" % (nb_min / 10) << "%d:" % (nb_min % 10)
  end
  # Secondes
  if nb_sec < 10
    str_time << "0%d" % nb_sec
  else
    str_time << "%d" % (nb_sec / 10) << "%d" % (nb_sec % 10)
  end
  return str_time

end
