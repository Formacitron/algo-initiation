class Personnage:
    def __init__(self,nom,vie,force):
        self.nom = nom
        self.vie = vie
        self.force = force

    def afficher_info(self):
        print(f"Nom:{self.nom} Vie:{self.vie if self.vie>0 else 0} Force:{self.force}")

    def attaquer(self, cible):
        print(f"{self.nom} attaque {cible.nom}")
        cible.vie -= self.force

mario = Personnage("Mario", 100, 5)
koopa = Personnage("Koopa", 10, 25)

mario.afficher_info()
koopa.afficher_info()
 
while mario.vie>0 and koopa.vie>0:
    koopa.attaquer(mario)
    mario.afficher_info()
    mario.attaquer(koopa)
    koopa.afficher_info()
