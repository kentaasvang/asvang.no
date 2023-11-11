<!-- Page Header-->
<h1> Fra kode til pixel </h1>
<h2> Hode først ned i voxel-verden </h2>

<img src="/img/fra-kode-til-pixel/voxel-world-header.png" alt="voxel world">

<!-- Post Content-->
<article>

    <p> 
        Jeg kan ingenting om grafikkprogrammering. Jeg kan ingenting om voxler heller, men det er litt av poenget. Når man lærer nye ting utforsker man samtidig seg selv og våre begrensninger. 
        Det er ikke feil å tenke at vårt mentale selvbilde er en labyrint. Og når man går veier vi ikke har gått før, så lærer vi mer om oss selv. Om livet har en mening med seg selv, så er det kanskje å utforske denne labyrinten
        så fullstendig som mulig.
    </p>

    <p>
        <q> I was born not knowing and have had only a little time to change that here and there.  </q>
        <br>
        - Richard P. Feynman
    </p>

    <h2> Hvorfor voxler </h2>

    <p>
        Jeg har aldri vært fascinert av spill eller grafikk, men jeg er glad i ting jeg kan skape selv. Programmering har latt meg utfolde denne delen av meg på utallige måter. En bekjent av meg
        skal få mye av skylden for at nettopp voxler ble valgt som oppheng de neste par ukene (hei konge). Etter å ha hørt mye proklamasjon rundt voxel-motorer og de interessante utfordringene som ligger der begynte jeg å ville vite mer.
    </p>

    <h2> Utviklermiljø </h2>

    <p>
        Etter en kort samtale med chatGPT landet jeg på python og Panda3D. Det er noen åpenbare ulemper med å bruke python til 3d-spillprogrammering, men det har et par fordeler også. 
        Først og fremst er jeg veldig familiær med språket. Og sist men ikke minst så er det veldig lite abstraksjonslag på prosedyrer i språket. Dette hjelper meg å forstå hva som skjer under panseret.
    </p>

    <p>
        <b>Sette opp miljøet</b>
    </p>   

    <p>
        Vi starter med å lage en ny mappe for prosjektet og installere Panda3D.
    </p>

    <code>
        mkdir mini-voxel && cd mini-voxel && virtualenv venv && source venv/bin/activate && pip install panda3d 
    </code>

    <p>
        Det er og god skikk å lage en requirements.txt fil for å holde styr på avhengigheter.  <br>
    </p>

    <code>
        pip freeze > requirements.txt
    </code>

    <p>
        Nå kan vi lage en liten testfil for å se om alt fungerer som det skal.
    </p>

    <pre>
touch mini_voxel.py
echo "#!./venv/bin/python
from direct.showbase.ShowBase import ShowBase

class MiniVoxel(ShowBase):

    def __init__(self):
        ShowBase.__init__(self)

        # Load the environment model.
        self.scene = self.loader.loadModel("models/environment")

        # Reparent the model to render.
        self.scene.reparentTo(self.render)

        # Apply scale and position transforms on the model.
        self.scene.setScale(0.25, 0.25, 0.25)
        self.scene.setPos(-8, 42, 0)

mini_voxel = MiniVoxel()
mini_voxel.run()" > mini_voxel.py
    </pre>

    <p>
        Nå kan vi kjøre programmet vårt med:
    </p>

    <code>
        python mini_voxel.py
    </code>

    <p>
        Om alt har gått som det skal skal du nå se et vindu med noe gress og gråstein.
    </p>

    <img src="/img/fra-kode-til-pixel/panda3d-hello-world-window.png" alt="mini voxel">

    <p>
        Vi har nå et fungerende utviklermiljø. Nå kan vi begynne å lage noe.
    </p>

    <h2> Referanser </h2>

    <ul>
        <li><a href="https://docs.panda3d.org/1.10">Panda3D documentation</a></li>   
    </ul>

</article>