module UserHelper
  #Méthode permettant d'afficher un calendrier à partir duquel l'individu devra selectionner sa date de naissance
  def set_age(birthdate)
    if birthdate != ""
      date = Time.parse(birthdate)
      now = Time.now.utc.to_date
      now.year - date.year - ((now.month > date.month || (date.month == date.month && now.day >= date.day)) ? 0 : 1)
    end
  end
end
