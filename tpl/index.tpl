<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="color-scheme" content="dark light">
  <title>Battlefleet Gothic Ship Profiles</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="assets/style.css">
  <link rel="shortcut icon" href="assets/favicon.png">
</head>
<body>
<main>
  <header>
    <img src="assets/Battlefleet_Gothic_Logo_01.png" alt="BATTLEFLEET GOTHIC" style="display:block;max-width:33%;max-heigth:2em;margin:0 auto">
    <h1 style="text-align:center">Battlefleet Gothic Ship Profiles</h1>
  </header>
  <aside>
    <p>This site contains mobile-friendly HTML profile pages for all the ships in
      the <em>Battlefleet Gothic: Remastered</em> Fleets Book. These pages are
      built using images taken from the PDF and statistical data taken from the
      <a href="https://bfgtools.kuldare.com/">Gothic Fleet Registry</a>.</p>
    <p>To report an issue, use the <a href="https://github.com/jodrell/ships.battlefleet-game.org/issues/new">GitHub issues page</a>.</p>
  </aside>

  <nav>
    <ul>
      <li>Jump to:</li>
      {% for fleet in fleets %}
        <li>
          <a href="#{{ fleet.slug }}">{{ fleet.name }}</a>
        </li>
      {% endfor %}
    </ul>
  </nav>

  {% for fleet in fleets %}
    <article>
      <a name="{{ fleet.slug }}"></a>
      <h2>{{ fleet.name }}</h2>

      {% for section in fleet.sections %}
        {% if section.count > 0 %}
          <section>
            <h3>{{ section.name }}</h3>
            <table class="index-table"><tbody>
              {% for ship in section.ships %}
                <tr>
                  <td class="index-ship-name">{{ ship.name }}</td>
                  <td class="index-ship-points">
                    {% if ship.bp > 0 %}
                      {{ ship.bp }} pts
                    {% else %}
                      -
                    {% endif %}
                  </td>
                  <td class="index-ship-link"><a href="{{ ship.href }}"><img class="link-icon" src="assets/display-solid-full.svg" alt="[Profile]"></a></td>
                  <td class="index-ship-link"><a href="{{ ship.card_href }}" title="Open printable version"><img class="link-icon" src="assets/print-solid-full.svg" alt="[Printable]"></a></td>
                </tr>
              {% endfor %}
            </tbody></table>
          </section>
        {% endif %}
      {% endfor %}
    </article>
  {% endfor %}

</main>

<footer><span>
  <a href="https://github.com/jodrell/ships.battlefleet-game.org">GitHub</a>
  &middot;
  Brought to you by <a href="https://jodrell.org">𝔍𝔬𝔡𝔯𝔢𝔩𝔩.𝔬𝔯𝔤</a>
</span></footer>

<script src="//analytics.tau.uk.com"></script>
</body>
</html>
