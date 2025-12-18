# Questions and results

<!-- https://www.convertcsv.com/csv-to-markdown.htm -->

note for improvement: some actors are included in a movie when they are already passed away, this dataset does not contain all movies in which an actor was in.

## Movies and Ratings

### Which top 10 directors have the highest average imdb rating, considering only directors with at least 5 movies?

A lot of smaller directors have 1 movie that is popular somewhere.
To take that into account i take an average number of votes of 10.000 per movie.

|director                                         |nconst|avg_rating|num_movies|
|-------------------------------------------------|------|----------|----------|
|Haruo Sotozaki                                   |nm1417038|8.2375000000000000|8         |
|Christopher Nolan                                |nm0634240|8.1750000000000000|12        |
|Vetrimaaran                                      |nm4274575|8.1000000000000000|8         |
|Hayao Miyazaki                                   |nm0594503|7.9357142857142857|14        |
|Andrei Tarkovsky                                 |nm0001789|7.8750000000000000|8         |
|Rajkumar Hirani                                  |nm0386246|7.8000000000000000|6         |
|Quentin Tarantino                                |nm0000233|7.7666666666666667|15        |
|Stanley Kubrick                                  |nm0000040|7.7307692307692308|13        |
|Peter Jackson                                    |nm0001392|7.7000000000000000|15        |
|Spike Jonze                                      |nm0005069|7.6500000000000000|6         |



### What are the top 10 movies in each decade?

Only counting movies with more than 10.000 votes. Results may vary because of random ordering of movies with the same rating

|primarytitle                                     |startyear|tconst    |decade|averagerating|cat_rank|
|-------------------------------------------------|---------|----------|------|-------------|--------|
|Intolerance                                      |1916     |tt0006864 |1910  |7.7          |1       |
|Broken Blossoms                                  |1919     |tt0009968 |1910  |7.2          |2       |
|The Birth of a Nation                            |1915     |tt0004972 |1910  |6.1          |3       |
|Man with a Movie Camera                          |1929     |tt0019760 |1920  |8.3          |1       |
|Metropolis                                       |1927     |tt0017136 |1920  |8.3          |2       |
|The Kid                                          |1921     |tt0012349 |1920  |8.2          |3       |
|Sherlock Jr.                                     |1924     |tt0015324 |1920  |8.1          |4       |
|Safety Last!                                     |1923     |tt0014429 |1920  |8.1          |5       |
|The Gold Rush                                    |1925     |tt0015864 |1920  |8.1          |6       |
|The Passion of Joan of Arc                       |1928     |tt0019254 |1920  |8.1          |7       |
|The Circus                                       |1928     |tt0018773 |1920  |8.1          |8       |
|Faust                                            |1926     |tt0016847 |1920  |8.1          |9       |
|Sunrise                                          |1927     |tt0018455 |1920  |8.1          |10      |
|City Lights                                      |1931     |tt0021749 |1930  |8.5          |1       |
|Modern Times                                     |1936     |tt0027977 |1930  |8.5          |2       |
|M                                                |1931     |tt0022100 |1930  |8.3          |3       |
|I Am a Fugitive from a Chain Gang                |1932     |tt0023042 |1930  |8.2          |4       |
|Gone with the Wind                               |1939     |tt0031381 |1930  |8.2          |5       |
|It Happened One Night                            |1934     |tt0025316 |1930  |8.1          |6       |
|The Wizard of Oz                                 |1939     |tt0032138 |1930  |8.1          |7       |
|The Grand Illusion                               |1937     |tt0028950 |1930  |8.1          |8       |
|Make Way for Tomorrow                            |1937     |tt0029192 |1930  |8.1          |9       |
|All Quiet on the Western Front                   |1930     |tt0020629 |1930  |8.1          |10      |
|It's a Wonderful Life                            |1946     |tt0038650 |1940  |8.6          |1       |
|Casablanca                                       |1942     |tt0034583 |1940  |8.5          |2       |
|The Great Dictator                               |1940     |tt0032553 |1940  |8.4          |3       |
|Double Indemnity                                 |1944     |tt0036775 |1940  |8.3          |4       |
|Children of Paradise                             |1945     |tt0037674 |1940  |8.3          |5       |
|Late Spring                                      |1949     |tt0041154 |1940  |8.2          |6       |
|Bicycle Thieves                                  |1948     |tt0040522 |1940  |8.2          |7       |
|The Treasure of the Sierra Madre                 |1948     |tt0040897 |1940  |8.2          |8       |
|Citizen Kane                                     |1941     |tt0033467 |1940  |8.2          |9       |
|White Heat                                       |1949     |tt0042041 |1940  |8.1          |10      |
|12 Angry Men                                     |1957     |tt0050083 |1950  |9.0          |1       |
|Seven Samurai                                    |1954     |tt0047478 |1950  |8.6          |2       |
|Rear Window                                      |1954     |tt0047396 |1950  |8.5          |3       |
|The Human Condition I: No Greater Love           |1959     |tt0053114 |1950  |8.5          |4       |
|Witness for the Prosecution                      |1957     |tt0051201 |1950  |8.4          |5       |
|Sunset Boulevard                                 |1950     |tt0043014 |1950  |8.4          |6       |
|Paths of Glory                                   |1957     |tt0050825 |1950  |8.4          |7       |
|The World of Apu                                 |1959     |tt0052572 |1950  |8.4          |8       |
|North by Northwest                               |1959     |tt0053125 |1950  |8.3          |9       |
|The Cranes Are Flying                            |1957     |tt0050634 |1950  |8.3          |10      |
|The Good, the Bad and the Ugly                   |1966     |tt0060196 |1960  |8.8          |1       |
|Harakiri                                         |1962     |tt0056058 |1960  |8.6          |2       |
|The Hole                                         |1960     |tt0054407 |1960  |8.5          |3       |
|Once Upon a Time in the West                     |1968     |tt0064116 |1960  |8.5          |4       |
|Psycho                                           |1960     |tt0054215 |1960  |8.5          |5       |
|High and Low                                     |1963     |tt0057565 |1960  |8.4          |6       |
|Operation 'Y' & Other Shurik's Adventures        |1965     |tt0059550 |1960  |8.4          |7       |
|Woman in the Dunes                               |1964     |tt0058625 |1960  |8.4          |8       |
|Samurai Rebellion                                |1967     |tt0061847 |1960  |8.3          |9       |
|2001: A Space Odyssey                            |1968     |tt0062622 |1960  |8.3          |10      |
|The Godfather                                    |1972     |tt0068646 |1970  |9.2          |1       |
|The Chaos Class                                  |1975     |tt0252487 |1970  |9.2          |2       |
|The Godfather Part II                            |1974     |tt0071562 |1970  |9.0          |3       |
|The Message                                      |1976     |tt0075143 |1970  |8.9          |4       |
|Tosun Pasha                                      |1976     |tt0253828 |1970  |8.9          |5       |
|The Foster Brothers                              |1976     |tt0253779 |1970  |8.8          |6       |
|Saban, Son of Saban                              |1977     |tt0253614 |1970  |8.7          |7       |
|The Chaos Class Is Waking Up                     |1976     |tt0252490 |1970  |8.7          |8       |
|One Flew Over the Cuckoo's Nest                  |1975     |tt0073486 |1970  |8.7          |9       |
|Happy Days                                       |1978     |tt0765833 |1970  |8.7          |10      |
|The Marathon Family                              |1982     |tt0084302 |1980  |8.8          |1       |
|Star Wars: Episode V - The Empire Strikes Back   |1980     |tt0080684 |1980  |8.7          |2       |
|Stop Making Sense                                |1984     |tt0088178 |1980  |8.7          |3       |
|Balkan Spy                                       |1984     |tt0086935 |1980  |8.7          |4       |
|Shoah                                            |1985     |tt0090015 |1980  |8.7          |5       |
|Who's Singin' Over There?                        |1980     |tt0076276 |1980  |8.7          |6       |
|Nayakan                                          |1987     |tt0093603 |1980  |8.6          |7       |
|The Broken Landlord                              |1985     |tt0201368 |1980  |8.6          |8       |
|Cinema Paradiso                                  |1988     |tt0095765 |1980  |8.5          |9       |
|Heart of a Dog                                   |1988     |tt0096126 |1980  |8.5          |10      |
|The Shawshank Redemption                         |1994     |tt0111161 |1990  |9.3          |1       |
|Ramayana: The Legend of Prince Rama              |1993     |tt0259534 |1990  |9.1          |2       |
|Schindler's List                                 |1993     |tt0108052 |1990  |9.0          |3       |
|Pulp Fiction                                     |1994     |tt0110912 |1990  |8.8          |4       |
|Fight Club                                       |1999     |tt0137523 |1990  |8.8          |5       |
|Forrest Gump                                     |1994     |tt0109830 |1990  |8.8          |6       |
|Manichithrathazhu                                |1993     |tt0214915 |1990  |8.7          |7       |
|The Matrix                                       |1999     |tt0133093 |1990  |8.7          |8       |
|Goodfellas                                       |1990     |tt0099685 |1990  |8.7          |9       |
|Life Is Beautiful                                |1997     |tt0118799 |1990  |8.6          |10      |
|The Dark Knight                                  |2008     |tt0468569 |2000  |9.1          |1       |
|The Lord of the Rings: The Return of the King    |2003     |tt0167260 |2000  |9.0          |2       |
|The Lord of the Rings: The Fellowship of the Ring|2001     |tt0120737 |2000  |8.9          |3       |
|The Lord of the Rings: The Two Towers            |2002     |tt0167261 |2000  |8.8          |4       |
|Kill Bill: The Whole Bloody Affair               |2006     |tt6019206 |2000  |8.7          |5       |
|A Dog's Will                                     |2000     |tt0271383 |2000  |8.6          |6       |
|Spirited Away                                    |2001     |tt0245429 |2000  |8.6          |7       |
|City of God                                      |2002     |tt0317248 |2000  |8.6          |8       |
|Earthlings                                       |2005     |tt0358456 |2000  |8.6          |9       |
|Anbe Sivam                                       |2003     |tt0367495 |2000  |8.6          |10      |
|Mirror Game                                      |2016     |tt5354160 |2010  |8.9          |1       |
|O.J.: Made in America                            |2016     |tt5275892 |2010  |8.9          |2       |
|Inception                                        |2010     |tt1375666 |2010  |8.8          |3       |
|The Phantom of the Opera at the Royal Albert Hall|2011     |tt2077886 |2010  |8.8          |4       |
|Resurrection                                     |2018     |tt7738784 |2010  |8.7          |5       |
|Interstellar                                     |2014     |tt0816692 |2010  |8.7          |6       |
|Pariyerum Perumal                                |2018     |tt8176054 |2010  |8.6          |7       |
|Whiplash                                         |2014     |tt2582802 |2010  |8.5          |8       |
|The Intouchables                                 |2011     |tt1675434 |2010  |8.5          |9       |
|96                                               |2018     |tt7019842 |2010  |8.5          |10      |
|Attack on Titan the Movie: The Last Attack       |2024     |tt33175825|2020  |9.1          |1       |
|Mahavatar Narsimha                               |2024     |tt34365591|2020  |9.1          |2       |
|Bomb                                             |2025     |tt28717622|2020  |9.0          |3       |
|David Attenborough: A Life on Our Planet         |2020     |tt11989890|2020  |8.9          |4       |
|The Silence of Swastika                          |2021     |tt16747572|2020  |8.9          |5       |
|Solo Leveling: ReAwakening                       |2024     |tt33428606|2020  |8.7          |6       |
|777 Charlie                                      |2022     |tt7466810 |2020  |8.7          |7       |
|Demon Slayer: Kimetsu no Yaiba - Mt. Natagumo Arc|2020     |tt14888874|2020  |8.7          |8       |
|Demon Slayer: Kimetsu no Yaiba - Infinity Castle |2025     |tt32820897|2020  |8.7          |9       |
|12th Fail                                        |2023     |tt23849204|2020  |8.7          |10      |


## Actors and collaborations

### Which actor pairs have appeared together most often and what is their average movie rating?

#### all actors

|actor1                                           |primaryname|actor2    |primaryname-2|title_count|average_rating|total_votes|
|-------------------------------------------------|-----------|----------|-------------|-----------|--------------|-----------|
|nm0019382                                        |Mohammad Ali|nm0103977 |Brahmanandam |170        |5.5877906976744186|128796     |
|nm0080238                                        |Tanikella Bharani|nm0103977 |Brahmanandam |152        |5.9699346405228758|188948     |
|nm0004469                                        |Kota Srinivasa Rao|nm0103977 |Brahmanandam |133        |6.3580882352941176|121640     |
|nm0006982                                        |Adoor Bhasi|nm0623427 |Prem Nazir   |112        |6.3803149606299213|2203       |
|nm0007106                                        |Shakti Kapoor|nm0434318 |Kader Khan   |99         |5.1660550458715596|64952      |
|nm0004660                                        |Rajkumar   |nm3183374 |T.N. Balakrishna|93         |8.7336538461538462|7839       |
|nm0415538                                        |Jagadish   |nm0415549 |Jagathy Sreekumar|93         |5.2383838383838384|19395      |
|nm0103977                                        |Brahmanandam|nm0621263 |M.S. Narayana|91         |5.6901098901098901|62064      |
|nm0415549                                        |Jagathy Sreekumar|nm0417314 |Janardanan   |89         |5.5000000000000000|32437      |
|nm0289960                                        |Franco Franchi|nm0409049 |Ciccio Ingrassia|89         |5.4179487179487179|12898      |


#### more than a million total votes per duo and more than 10 appearances together

|actor1                                           |primaryname|actor2    |primaryname-2|title_count|average_rating|total_votes|
|-------------------------------------------------|-----------|----------|-------------|-----------|--------------|-----------|
|nm0000568                                        |Frank Oz   |nm0001345 |Jim Henson   |17         |7.5368421052631579|1218746    |
|nm0000092                                        |John Cleese|nm0001589 |Michael Palin|12         |7.5197368421052632|11133426   |
|nm0000092                                        |John Cleese|nm0001402 |Terry Jones  |11         |7.5052631578947368|10887395   |
|nm0001536                                        |Toshirô Mifune|nm0793766 |Takashi Shimura|43         |7.4956521739130435|1201389    |
|nm0324397                                        |Dave Goelz |nm0625456 |Jerry Nelson |15         |7.4572727272727273|2012031    |
|nm0000568                                        |Frank Oz   |nm0625456 |Jerry Nelson |20         |7.3639097744360902|2042032    |
|nm0000568                                        |Frank Oz   |nm0324397 |Dave Goelz   |13         |7.3483870967741935|2273720    |
|nm0324397                                        |Dave Goelz |nm0926209 |Steve Whitmire|17         |6.8551724137931034|2913557    |
|nm0001774                                        |Ben Stiller|nm0005562 |Owen Wilson  |11         |6.0916666666666667|2192058    |
|nm0000514                                        |Michael Madsen|nm0001016 |David Carradine|11         |5.9363636363636364|2153765    |
|nm0000435                                        |Daryl Hannah|nm0000514 |Michael Madsen|11         |5.9181818181818182|2142898    |


### Which actors have the most appearances per genre?

#### All movies

|genre      |# of movies|nconst    |primaryname                |
|-----------|-----------|----------|---------------------------|
|Action     |301        |nm0103977 |Brahmanandam               |
|Action     |292        |nm0007106 |Shakti Kapoor              |
|Action     |244        |nm0149822 |Mithun Chakraborty         |
|Action     |198        |nm0004109 |Gulshan Grover             |
|Action     |192        |nm0004429 |Dharmendra                 |
|Adventure  |120        |nm0035067 |Cüneyt Arkin               |
|Adventure  |75         |nm0351566 |Yilmaz Güney               |
|Adventure  |72         |nm0919798 |Frank Welker               |
|Adventure  |65         |nm0048389 |Dee Bradley Baker          |
|Adventure  |63         |nm0251122 |Süheyl Egriboz             |
|Animation  |124        |nm0000305 |Mel Blanc                  |
|Animation  |108        |nm0919798 |Frank Welker               |
|Animation  |100        |nm0370677 |Megumi Hayashibara         |
|Animation  |93         |nm0637586 |Masako Nozawa              |
|Animation  |88         |nm0582106 |Don Messick                |
|Biography  |21         |nm0000164 |Anthony Hopkins            |
|Biography  |17         |nm0000545 |Helen Mirren               |
|Biography  |17         |nm0000603 |Vanessa Redgrave           |
|Biography  |16         |nm0001394 |Derek Jacobi               |
|Biography  |15         |nm0000024 |John Gielgud               |
|Comedy     |290        |nm0103977 |Brahmanandam               |
|Comedy     |230        |nm0415549 |Jagathy Sreekumar          |
|Comedy     |154        |nm0409204 |Innocent Vareed Thekkethala|
|Comedy     |142        |nm0415538 |Jagadish                   |
|Comedy     |140        |nm0611481 |Mukesh                     |
|Crime      |95         |nm0945189 |Simon Yam                  |
|Crime      |84         |nm0004109 |Gulshan Grover             |
|Crime      |82         |nm0837420 |Bunta Sugawara             |
|Crime      |82         |nm0938893 |Anthony Chau-Sang Wong     |
|Crime      |81         |nm0007106 |Shakti Kapoor              |
|Documentary|57         |nm0001075 |Peter Coyote               |
|Documentary|44         |nm0000640 |Martin Sheen               |
|Documentary|38         |nm0000215 |Susan Sarandon             |
|Documentary|26         |nm0000553 |Liam Neeson                |
|Documentary|25         |nm10659152|Lee Jagow                  |
|Drama      |352        |nm0103977 |Brahmanandam               |
|Drama      |301        |nm0415549 |Jagathy Sreekumar          |
|Drama      |274        |nm0007123 |Mammootty                  |
|Drama      |260        |nm0451600 |Anupam Kher                |
|Drama      |259        |nm0007106 |Shakti Kapoor              |
|Family     |66         |nm0000305 |Mel Blanc                  |
|Family     |66         |nm0103977 |Brahmanandam               |
|Family     |59         |nm0819825 |Ove Sprogøe                |
|Family     |55         |nm2993483 |Simon Hill                 |
|Family     |53         |nm0825234 |Karl Stegger               |
|Fantasy    |28         |nm0848910 |Germán Valdés              |
|Fantasy    |28         |nm0092008 |Jirina Bohdalová           |
|Fantasy    |24         |nm0473314 |Ku Feng                    |
|Fantasy    |23         |nm0000489 |Christopher Lee            |
|Fantasy    |22         |nm0161672 |Marcelo Chávez             |
|Film-Noir  |25         |nm0000007 |Humphrey Bogart            |
|Film-Noir  |20         |nm0002053 |Dan Duryea                 |
|Film-Noir  |19         |nm0000064 |Edward G. Robinson         |
|Film-Noir  |18         |nm0514344 |John Litel                 |
|Film-Noir  |18         |nm0007218 |Tom Conway                 |
|Game-Show  |2          |nm0424253 |Danny John-Jules           |
|Game-Show  |1          |nm0057368 |Chris Barrie               |
|Game-Show  |1          |nm0086296 |Lionel Blair               |
|Game-Show  |1          |nm0152481 |Nicki Chapman              |
|Game-Show  |1          |nm0153002 |Craig Charles              |
|History    |20         |nm0028674 |Harry Andrews              |
|History    |19         |nm0035067 |Cüneyt Arkin               |
|History    |18         |nm0646037 |Daniel Olbrychski          |
|History    |17         |nm0001426 |Ben Kingsley               |
|History    |16         |nm0000146 |Ralph Fiennes              |
|Horror     |84         |nm0000616 |Eric Roberts               |
|Horror     |83         |nm0442207 |Lloyd Kaufman              |
|Horror     |80         |nm5954636 |Sergey A.                  |
|Horror     |78         |nm0004193 |Debbie Rochon              |
|Horror     |75         |nm3025400 |Shawn C. Phillips          |
|Music      |68         |nm0122470 |Smiley Burnette            |
|Music      |62         |nm0000810 |Gene Autry                 |
|Music      |62         |nm0001678 |Roy Rogers                 |
|Music      |51         |nm0823633 |Charles Starrett           |
|Music      |39         |nm0004881 |Plácido Domingo            |
|Musical    |46         |nm0659250 |Pandari Bai                |
|Musical    |43         |nm0004417 |N.T. Rama Rao              |
|Musical    |36         |nm0405977 |Paul Hörbiger              |
|Musical    |36         |nm0695199 |Pran Sikand                |
|Musical    |32         |nm0001078 |Bing Crosby                |
|Mystery    |62         |nm0000616 |Eric Roberts               |
|Mystery    |45         |nm0608632 |William R. Moses           |
|Mystery    |33         |nm0007123 |Mammootty                  |
|Mystery    |31         |nm0000994 |Raymond Burr               |
|Mystery    |30         |nm0000489 |Christopher Lee            |
|News       |3          |nm0159008 |Noam Chomsky               |
|News       |3          |nm0001295 |Graham Greene              |
|News       |3          |nm0841384 |Boris Svrtan               |
|News       |3          |nm0001987 |Tantoo Cardinal            |
|News       |3          |nm0474092 |Drazen Kühn                |
|Reality-TV |2          |nm4706402 |Brandon Imp                |
|Reality-TV |2          |nm4706599 |Katherine Imp              |
|Reality-TV |2          |nm4706718 |Emily Ginger               |
|Reality-TV |2          |nm1693720 |Adelino Gomes              |
|Reality-TV |2          |nm14387374|Michael Anthony Vallone    |
|Romance    |193        |nm0103977 |Brahmanandam               |
|Romance    |177        |nm0814734 |Türkan Soray               |
|Romance    |120        |nm0856194 |Nubar Terziyan             |
|Romance    |107        |nm0080238 |Tanikella Bharani          |
|Romance    |107        |nm0448906 |Hulusi Kentmen             |
|Sci-Fi     |39         |nm0000616 |Eric Roberts               |
|Sci-Fi     |30         |nm0001017 |John Carradine             |
|Sci-Fi     |29         |nm0001595 |Michael Paré               |
|Sci-Fi     |26         |nm0000448 |Lance Henriksen            |
|Sci-Fi     |22         |nm0424060 |Scarlett Johansson         |
|Sport      |19         |nm0589498 |Warren Miller              |
|Sport      |12         |nm0000230 |Sylvester Stallone         |
|Sport      |12         |nm0949350 |Burt Young                 |
|Sport      |10         |nm0582126 |Marc Messier               |
|Sport      |10         |nm0531759 |J. Farrell MacDonald       |
|Talk-Show  |2          |nm0046021 |Nina Baden-Semper          |
|Talk-Show  |2          |nm0056271 |Lynda Baron                |
|Talk-Show  |2          |nm0239017 |Evelyn Duah                |
|Talk-Show  |2          |nm0254889 |June Ellis                 |
|Talk-Show  |1          |nm0005399 |Ben Savage                 |
|Thriller   |147        |nm0000616 |Eric Roberts               |
|Thriller   |77         |nm0007123 |Mammootty                  |
|Thriller   |73         |nm0482320 |Mohanlal                   |
|Thriller   |70         |nm1388202 |Siddique                   |
|Thriller   |68         |nm0000514 |Michael Madsen             |
|War        |49         |nm0957372 |Velimir 'Bata' Zivojinovic |
|War        |35         |nm0904303 |Pavle Vuisic               |
|War        |25         |nm0473041 |Nikolay Kryuchkov          |
|War        |24         |nm0417582 |Dusan Janicijevic          |
|War        |24         |nm0548589 |Rade Markovic              |
|Western    |183        |nm0454559 |Charles King               |
|Western    |174        |nm0823633 |Charles Starrett           |
|Western    |158        |nm0054117 |Roy Barcroft               |
|Western    |132        |nm0163417 |Tom London                 |
|Western    |128        |nm0113902 |Johnny Mack Brown          |

#### More than 10.000 votes per movie

|genre             |# of movies|nconst    |primaryname       |
|------------------|-----------|----------|------------------|
|Action            |59         |nm0000329 |Jackie Chan       |
|Action            |45         |nm0000168 |Samuel L. Jackson |
|Action            |43         |nm0000246 |Bruce Willis      |
|Action            |41         |nm0000115 |Nicolas Cage      |
|Action            |38         |nm0005458 |Jason Statham     |
|Adventure         |29         |nm0000168 |Samuel L. Jackson |
|Adventure         |28         |nm0000329 |Jackie Chan       |
|Adventure         |24         |nm0000092 |John Cleese       |
|Adventure         |24         |nm0000125 |Sean Connery      |
|Adventure         |24         |nm0000568 |Frank Oz          |
|Animation         |25         |nm0370677 |Megumi Hayashibara|
|Animation         |23         |nm0191906 |Jim Cummings      |
|Animation         |22         |nm0224007 |John DiMaggio     |
|Animation         |21         |nm0444786 |Tom Kenny         |
|Animation         |20         |nm0853301 |Veronica Taylor   |
|Biography         |14         |nm0000164 |Anthony Hopkins   |
|Biography         |11         |nm0000136 |Johnny Depp       |
|Biography         |11         |nm0000134 |Robert De Niro    |
|Biography         |10         |nm0000173 |Nicole Kidman     |
|Biography         |10         |nm0765597 |Peter Sarsgaard   |
|Comedy            |56         |nm0000552 |Eddie Murphy      |
|Comedy            |48         |nm0001191 |Adam Sandler      |
|Comedy            |44         |nm0474774 |Akshay Kumar      |
|Comedy            |43         |nm0000329 |Jackie Chan       |
|Comedy            |42         |nm0002071 |Will Ferrell      |
|Crime             |40         |nm0000134 |Robert De Niro    |
|Crime             |37         |nm0000168 |Samuel L. Jackson |
|Crime             |31         |nm0000115 |Nicolas Cage      |
|Crime             |28         |nm0000246 |Bruce Willis      |
|Crime             |26         |nm0000151 |Morgan Freeman    |
|Documentary       |3          |nm0001385 |Eric Idle         |
|Documentary       |3          |nm0001037 |Graham Chapman    |
|Documentary       |3          |nm0077103 |Max Bernstein     |
|Documentary       |3          |nm1396916 |Stacy Jones       |
|Documentary       |3          |nm11593352|Mike Meadows      |
|Drama             |63         |nm0000134 |Robert De Niro    |
|Drama             |48         |nm0474774 |Akshay Kumar      |
|Drama             |46         |nm0000164 |Anthony Hopkins   |
|Drama             |46         |nm0000173 |Nicole Kidman     |
|Drama             |45         |nm0000658 |Meryl Streep      |
|Family            |14         |nm0324397 |Dave Goelz        |
|Family            |14         |nm0000245 |Robin Williams    |
|Family            |11         |nm0926209 |Steve Whitmire    |
|Family            |11         |nm0000568 |Frank Oz          |
|Family            |10         |nm0173416 |Pinto Colvig      |
|Fantasy           |15         |nm0000115 |Nicolas Cage      |
|Fantasy           |13         |nm0000353 |Willem Dafoe      |
|Fantasy           |12         |nm0000136 |Johnny Depp       |
|Fantasy           |12         |nm0842770 |Tilda Swinton     |
|Fantasy           |11         |nm0427964 |Doug Jones        |
|Film-Noir         |6          |nm0000007 |Humphrey Bogart   |
|Film-Noir         |5          |nm0000044 |Burt Lancaster    |
|Film-Noir         |4          |nm0505249 |Sam Levene        |
|Film-Noir         |4          |nm0000074 |Gene Tierney      |
|Film-Noir         |4          |nm0000080 |Orson Welles      |
|History           |10         |nm0000146 |Ralph Fiennes     |
|History           |7          |nm0001426 |Ben Kingsley      |
|History           |7          |nm0000553 |Liam Neeson       |
|History           |7          |nm0117709 |Daniel Brühl      |
|History           |7          |nm0929489 |Tom Wilkinson     |
|Horror            |18         |nm0000387 |Robert Englund    |
|Horror            |15         |nm0000374 |Brad Dourif       |
|Horror            |14         |nm0068551 |Tobin Bell        |
|Horror            |13         |nm0000353 |Willem Dafoe      |
|Horror            |12         |nm0000130 |Jamie Lee Curtis  |
|Music             |5          |nm0000288 |Christian Bale    |
|Music             |5          |nm0571106 |Michael McKean    |
|Music             |4          |nm0001749 |Maggie Smith      |
|Music             |4          |nm0000949 |Cate Blanchett    |
|Music             |4          |nm0000191 |Ewan McGregor     |
|Musical           |13         |nm0451321 |Shah Rukh Khan    |
|Musical           |8          |nm0006795 |Salman Khan       |
|Musical           |8          |nm0481363 |Reema Lagoo       |
|Musical           |7          |nm0622186 |Alok Nath         |
|Musical           |7          |nm0451600 |Anupam Kher       |
|Mystery           |15         |nm0000173 |Nicole Kidman     |
|Mystery           |14         |nm0933940 |Patrick Wilson    |
|Mystery           |13         |nm0000115 |Nicolas Cage      |
|Mystery           |12         |nm0915208 |Naomi Watts       |
|Mystery           |12         |nm0000243 |Denzel Washington |
|News              |1          |nm16734548|Suchitra          |
|News              |1          |nm1498640 |Zana Briski       |
|News              |1          |nm2092248 |Shanti Das        |
|News              |1          |nm2095158 |Manik             |
|News              |1          |nm2099087 |Avijit Halder     |
|Romance           |20         |nm0000210 |Julia Roberts     |
|Romance           |19         |nm0000147 |Colin Firth       |
|Romance           |18         |nm0000173 |Nicole Kidman     |
|Romance           |18         |nm0748620 |Paul Rudd         |
|Romance           |18         |nm0000424 |Hugh Grant        |
|Sci-Fi            |22         |nm0424060 |Scarlett Johansson|
|Sci-Fi            |17         |nm0262635 |Chris Evans       |
|Sci-Fi            |16         |nm0000375 |Robert Downey Jr. |
|Sci-Fi            |16         |nm0413168 |Hugh Jackman      |
|Sci-Fi            |14         |nm2225369 |Jennifer Lawrence |
|Sport             |12         |nm0000230 |Sylvester Stallone|
|Sport             |8          |nm0949350 |Burt Young        |
|Sport             |6          |nm0001835 |Carl Weathers     |
|Sport             |5          |nm0001191 |Adam Sandler      |
|Sport             |5          |nm0000598 |Dennis Quaid      |
|Thriller          |34         |nm0000115 |Nicolas Cage      |
|Thriller          |32         |nm0000246 |Bruce Willis      |
|Thriller          |28         |nm0005458 |Jason Statham     |
|Thriller          |24         |nm0000553 |Liam Neeson       |
|Thriller          |20         |nm0000134 |Robert De Niro    |
|War               |5          |nm0000039 |Deborah Kerr      |
|War               |5          |nm0000078 |John Wayne        |
|War               |4          |nm0000044 |Burt Lancaster    |
|War               |4          |nm0000661 |Donald Sutherland |
|War               |4          |nm0229301 |Branko Djuric     |
|Western           |21         |nm0000078 |John Wayne        |
|Western           |10         |nm0000142 |Clint Eastwood    |
|Western           |8          |nm0000071 |James Stewart     |
|Western           |7          |nm0424565 |Ben Johnson       |
|Western           |7          |nm0001013 |Harry Carey Jr.   |

### Which actors have the longest career span between their first and last movie?

|primaryname       |nconst   |careerspan|from|till|birthyear|deathyear|
|------------------|---------|----------|----|----|---------|---------|
|Francia Seguy     |nm0782229|87        |1917|2004|1914     |2013     |
|Carla Laemmle     |nm0480675|85        |1928|2013|1909     |2014     |
|Karl Friedrich    |nm0294914|84        |1932|2016|1929     |2021     |
|Hanna Maron       |nm0576754|83        |1929|2012|1923     |2014     |
|Mária Szepes      |nm0843993|83        |1916|1999|1908     |2007     |
|Gisèle Casadesus  |nm0142704|83        |1934|2017|1914     |2017     |
|Alberto de Mendoza|nm0210274|81        |1930|2011|1923     |2011     |
|Marsha Hunt       |nm0402554|81        |1935|2016|1917     |2022     |
|Mickey Rooney     |nm0001682|80        |1932|2012|1920     |2014     |
|Milton Berle      |nm0000926|80        |1920|2000|1908     |2002     |

## Trends & Analytics

### How has the average runtime of movies changed over the decades?  

|decade            |average_minutes|difference with previous decade|
|------------------|---------------|-------------------------------|
|1890              |85             |                               |
|1900              |68             |-17                            |
|1910              |62             |-6                             |
|1920              |72             |10                             |
|1930              |80             |8                              |
|1940              |86             |6                              |
|1950              |87             |1                              |
|1960              |85             |-2                             |
|1970              |86             |1                              |
|1980              |88             |2                              |
|1990              |88             |0                              |
|2000              |85             |-3                             |
|2010              |87             |2                              |
|2020              |89             |2                              |

### Which genres have seen the biggest growth in the last 20 years?

|Romance    |4418640|137|
|-----------|-------|---|
|Comedy     |2976838|29 |
|Sci-Fi     |2949424|126|
|Drama      |2591926|13 |
|Family     |2326474|322|
|Horror     |1511375|46 |
|Action     |1428791|11 |
|Sport      |921177 |218|
|Fantasy    |909173 |36 |
|Biography  |797596 |48 |
|Mystery    |715966 |19 |
|Adventure  |562389 |5  |
|Documentary|409683 |50 |
|Animation  |364372 |9  |
|Reality-TV |186292 |155|
|Game-Show  |186122 |372|
|Musical    |176366 |43 |
|Music      |175212 |33 |
|War        |172120 |50 |
|Crime      |120431 |1  |
|Talk-Show  |112329 |403|
|Short      |74989  |39 |
|Western    |72112  |341|
|History    |42593  |3  |
|           |32960  |243|
|Thriller   |21435  |0  |
|Adult      |21397  |858|
|News       |1102   |3  |

## Awards & Popularity

### Which directors or actors have the highest average number of votes per title_rating bracket (5 brackets)?

The top actors are all in The Shawshank Redemption, which has a rating of 9.3 and 3.1 million votes

|rating_bracket|avg_num_votes|nconst    |primary_name                    |
|--------------|-------------|----------|--------------------------------|
|rating_bracket|avg_num_votes|nconst    |primary_name                    |
|--------------|-------------|----------|--------------------------------|
|5             |3128869      |nm0218810 |Jeffrey DeMunn                  |
|5             |3128869      |nm0104594 |Larry Brandenburg               |
|5             |3128869      |nm0004743 |Gil Bellows                     |
|5             |3128869      |nm0000209 |Tim Robbins                     |
|5             |3104589      |nm0350454 |Maggie Gyllenhaal               |
|5             |3104589      |nm1010931 |Monique Gabriela Curnen         |
|5             |3104589      |nm0005132 |Heath Ledger                    |
|5             |3104589      |nm0001173 |Aaron Eckhart                   |
|5             |3104589      |nm0212939 |Ron Dean                        |
|5             |2758879      |nm2438307 |Dileep Rao                      |
|5             |2758879      |nm0680983 |Elliot Page                     |
|5             |2543645      |nm0037118 |Richmond Arquette               |
|5             |2543645      |nm0127680 |Christina Cabot                 |
|5             |2543645      |nm0340260 |Zach Grenier                    |
|5             |2543645      |nm0000307 |Helena Bonham Carter            |
|5             |2445238      |nm0672225 |Bob Penny                       |
|5             |2445238      |nm0000705 |Robin Wright                    |
|5             |2445238      |nm0402011 |Michael Conner Humphreys        |
|5             |2445238      |nm0446404 |George Kelly                    |
|4             |1233055      |nm4406623 |Style Dayne                     |
|4             |930204       |nm7506216 |Melaw Nakehk'o                  |
|4             |928943       |nm1196732 |Saunders Triplets               |
|4             |903299       |nm3193259 |Azharuddin Mohammed Ismail      |
|4             |903299       |nm3193847 |Jira Banjara                    |
|4             |903299       |nm1261643 |Jeneva Talwar                   |
|4             |898548       |nm0389015 |Mark Hoffman                    |
|4             |891515       |nm3390180 |Basher Savage                   |
|4             |881509       |nm0628599 |Theodore Newton                 |
|4             |881509       |nm0801548 |Jean Sincere                    |
|4             |881509       |nm1751233 |Maeve Andrews                   |
|4             |881509       |nm0521861 |Dominique Louis                 |
|4             |875781       |nm1018521 |Benjamin Millepied              |
|4             |865081       |nm2333360 |Zara Phythian                   |
|4             |864348       |nm0287756 |Darrell Foster                  |
|4             |864348       |nm2724906 |Joanna Numata                   |
|4             |864348       |nm8421984 |Abbey                           |
|4             |842712       |nm7852444 |Jadyn Malone                    |
|4             |815792       |nm11419557|Jeff Dashnaw                    |
|3             |752113       |nm0246024 |Christopher Dyson               |
|3             |752113       |nm2968738 |Jaime FitzSimons                |
|3             |517806       |nm2960208 |Gregory Tyree Boyce             |
|3             |416655       |nm2079681 |Morgan Lily                     |
|3             |351985       |nm0853374 |Sam Taylor-Johnson              |
|3             |325484       |nm0000881 |Michael Bay                     |
|3             |307533       |nm0420941 |Patty Jenkins                   |
|3             |306373       |nm2633482 |Nick Jandl                      |
|3             |302575       |nm3548867 |Tine Stapelfeldt                |
|3             |300026       |nm3570321 |Ray Fisher                      |
|3             |296990       |nm17536610|Rob Bowen                       |
|3             |296990       |nm0916442 |Sian Webber                     |
|3             |289738       |nm0856257 |Todd Tesen                      |
|3             |279303       |nm0761545 |Elizabeth Sanders               |
|3             |274239       |nm0004716 |Darren Aronofsky                |
|3             |266732       |nm0003697 |Florian Henckel von Donnersmarck|
|3             |265649       |nm2524656 |Tony Ghosthawk                  |
|3             |250845       |nm2262926 |Bambadjan Bamba                 |
|3             |249454       |nm0905154 |Lana Wachowski                  |
|2             |391309       |nm10574081|Andrew Barth Feldman            |
|2             |391309       |nm8053695 |George Salazar                  |
|2             |391309       |nm10399505|Rachel Zegler                   |
|2             |391309       |nm0006463 |Jason Kravits                   |
|2             |391309       |nm4270695 |Tituss Burgess                  |
|2             |391309       |nm8084427 |Andrew Burnap                   |
|2             |391309       |nm2933757 |Gal Gadot                       |
|2             |391309       |nm0842596 |Jeremy Swift                    |
|2             |391309       |nm10491301|Emilia Faucher                  |
|2             |279674       |nm0001708 |Joel Schumacher                 |
|2             |279674       |nm0000563 |Chris O'Donnell                 |
|2             |279674       |nm0000512 |Elle Macpherson                 |
|2             |195669       |nm1989536 |Marc Webb                       |
|2             |193265       |nm0000216 |Arnold Schwarzenegger           |
|2             |179964       |nm0193295 |Cliff Curtis                    |
|2             |179964       |nm0396455 |Katharine Houghton              |
|2             |179964       |nm0869467 |Shaun Toub                      |
|2             |179964       |nm0541902 |Aasif Mandvi                    |
|2             |179964       |nm0796117 |M. Night Shyamalan              |
|1             |181306       |nm4899111 |Arjun Kanungo                   |
|1             |181306       |nm3642592 |Pravin Tarde                    |
|1             |181306       |nm7796669 |Disha Patani                    |
|1             |181306       |nm3245010 |Gautam Gulati                   |
|1             |181306       |nm0222150 |Prabhu Deva                     |
|1             |181306       |nm0393535 |Randeep Hooda                   |
|1             |181306       |nm11298789|Sangay Tsheltrim                |
|1             |181306       |nm0659249 |Sudhanshu Pandey                |
|1             |115643       |nm0006795 |Salman Khan                     |
|1             |97295        |nm1561561 |Tad Hilgenbrink                 |
|1             |97295        |nm2578007 |Kim Kardashian                  |
|1             |97295        |nm0294997 |Jason Friedberg                 |
|1             |97295        |nm0054697 |Ike Barinholtz                  |
|1             |97295        |nm0783536 |Aaron Seltzer                   |
|1             |97295        |nm0591373 |Vanessa Lachey                  |
|1             |97295        |nm0185272 |Tony Cox                        |
|1             |97295        |nm1674759 |Gary 'G. Thang' Johnson         |
|1             |97295        |nm1556400 |Crista Flanagan                 |
|1             |97295        |nm0001182 |Carmen Electra                  |


### Which directors or actors have the highest total number of votes per title_rating bracket (3 brackets)?

So which ones are most popular per movie score category (good, okay, bad)

|rating_bracket|avg_num_votes|nconst    |primary_name                    |
|--------------|-------------|----------|--------------------------------|
|3             |15877895     |nm0634240 |Christopher Nolan               |
|3             |11388179     |nm0000151 |Morgan Freeman                  |
|3             |10670413     |nm0000138 |Leonardo DiCaprio               |
|3             |10539354     |nm0000288 |Christian Bale                  |
|3             |9583905      |nm0000233 |Quentin Tarantino               |
|3             |8887513      |nm0000158 |Tom Hanks                       |
|3             |8777041      |nm0749263 |Mark Ruffalo                    |
|3             |8508943      |nm0614165 |Cillian Murphy                  |
|3             |8405364      |nm1019674 |Sala Baker                      |
|3             |8304781      |nm0000323 |Michael Caine                   |
|3             |8291536      |nm0000217 |Martin Scorsese                 |
|3             |8197478      |nm0000229 |Steven Spielberg                |
|3             |8079838      |nm0000198 |Gary Oldman                     |
|3             |8073755      |nm0000134 |Robert De Niro                  |
|3             |8004416      |nm0000093 |Brad Pitt                       |
|3             |7793739      |nm0000148 |Harrison Ford                   |
|3             |7504340      |nm0089217 |Orlando Bloom                   |
|3             |7368036      |nm0000704 |Elijah Wood                     |
|3             |7043588      |nm0424060 |Scarlett Johansson              |
|2             |19065050     |nm0424060 |Scarlett Johansson              |
|2             |18786207     |nm0000168 |Samuel L. Jackson               |
|2             |16160279     |nm0000375 |Robert Downey Jr.               |
|2             |14894236     |nm0262635 |Chris Evans                     |
|2             |13375826     |nm0000093 |Brad Pitt                       |
|2             |13250566     |nm0005351 |Ryan Reynolds                   |
|2             |12518079     |nm0000129 |Tom Cruise                      |
|2             |12095163     |nm0000136 |Johnny Depp                     |
|2             |12092154     |nm0719637 |Jeremy Renner                   |
|2             |11938264     |nm0413168 |Hugh Jackman                    |
|2             |11534334     |nm0000353 |Willem Dafoe                    |
|2             |11438861     |nm0177896 |Bradley Cooper                  |
|2             |11230358     |nm0749263 |Mark Ruffalo                    |
|2             |11023180     |nm0000158 |Tom Hanks                       |
|2             |10961669     |nm2225369 |Jennifer Lawrence               |
|2             |10663180     |nm0000255 |Ben Affleck                     |
|2             |10387083     |nm0000246 |Bruce Willis                    |
|2             |10360766     |nm0695435 |Chris Pratt                     |
|2             |10313884     |nm0000204 |Natalie Portman                 |
|1             |782618       |nm10574081|Andrew Barth Feldman            |
|1             |615886       |nm0000235 |Uma Thurman                     |
|1             |579796       |nm0000216 |Arnold Schwarzenegger           |
|1             |568335       |nm0000224 |Alicia Silverstone              |
|1             |561680       |nm0000123 |George Clooney                  |
|1             |559348       |nm0000563 |Chris O'Donnell                 |
|1             |469899       |nm0783536 |Aaron Seltzer                   |
|1             |445799       |nm0458514 |Martin Klebba                   |
|1             |441919       |nm0006795 |Salman Khan                     |
|1             |405948       |nm0294997 |Jason Friedberg                 |
|1             |391338       |nm1989536 |Marc Webb                       |
|1             |391309       |nm8084427 |Andrew Burnap                   |
|1             |391309       |nm10399505|Rachel Zegler                   |
|1             |391309       |nm8053695 |George Salazar                  |
|1             |391309       |nm4270695 |Tituss Burgess                  |
|1             |391309       |nm2933757 |Gal Gadot                       |
|1             |391309       |nm10491301|Emilia Faucher                  |
|1             |391309       |nm0006463 |Jason Kravits                   |
|1             |391309       |nm0842596 |Jeremy Swift                    |



### What are the most common genres among movies with a score in the upper quantile (high rated movies)?

|genre|count  |
|-----|-------|
|Drama|731    |
|Comedy|213    |
|Crime|212    |
|Action|163    |
|Adventure|145    |
|Romance|127    |
|Biography|117    |
|Thriller|111    |
|Documentary|93     |
|Mystery|79     |
|Animation|72     |
|History|64     |
|War  |61     |
|Family|48     |
|Fantasy|47     |
|Sci-Fi|43     |
|Music|38     |
|Sport|26     |
|Musical|21     |
|Horror|20     |
|Film-Noir|20     |
|Western|15     |
|News |2      |


## Complex Joins & Subqueries

### Find the most common “collaboration triangles”: actor A, actor B, and director C who worked together on multiple films.

|together|director_name            |actor1_name         |actor2_name         |director_id|actor1_id |actor2_id |
|--------|-------------------------|--------------------|--------------------|-----------|----------|----------|
|83      |Shirô Nakagawa           |Ritoku Arashi       |Hôshô Bandô         |nm2361543  |nm2366585 |nm2384746 |
|83      |Shirô Nakagawa           |Enshô Jitsukawa     |Ritoku Arashi       |nm2361543  |nm1698868 |nm2366585 |
|69      |Sasikumar                |Adoor Bhasi         |Prem Nazir          |nm0765881  |nm0006982 |nm0623427 |
|69      |Shirô Nakagawa           |Ritoku Arashi       |Shôzô Arashi        |nm2361543  |nm2366585 |nm2367854 |
|66      |Shirô Nakagawa           |Enshô Jitsukawa     |Hôshô Bandô         |nm2361543  |nm1698868 |nm2384746 |
|65      |Jirô Yoshino             |Shirôgorô Sawamura  |Enjuro Ichikawa     |nm1846347  |nm1984183 |nm1990182 |
|59      |Shirô Nakagawa           |Shôzô Arashi        |Hôshô Bandô         |nm2361543  |nm2367854 |nm2384746 |
|59      |Shirô Nakagawa           |Enshô Jitsukawa     |Shôzô Arashi        |nm2361543  |nm1698868 |nm2367854 |
|52      |Yôji Yamada              |Kiyoshi Atsumi      |Chieko Baishô       |nm0945282  |nm0040910 |nm0047962 |
|51      |Yôji Yamada              |Chieko Baishô       |Gin Maeda           |nm0945282  |nm0047962 |nm0535332 |
|49      |Yôji Yamada              |Kiyoshi Atsumi      |Gin Maeda           |nm0945282  |nm0040910 |nm0535332 |
|49      |Yôji Yamada              |Chieko Baishô       |Chieko Misaki       |nm0945282  |nm0047962 |nm0592654 |
|48      |Yôji Yamada              |Kiyoshi Atsumi      |Chieko Misaki       |nm0945282  |nm0040910 |nm0592654 |
|47      |Yôji Yamada              |Chieko Baishô       |Hisao Dazai         |nm0945282  |nm0047962 |nm0206795 |
|47      |Yôji Yamada              |Gin Maeda           |Chieko Misaki       |nm0945282  |nm0535332 |nm0592654 |
|46      |Yôji Yamada              |Hisao Dazai         |Chieko Misaki       |nm0945282  |nm0206795 |nm0592654 |
|46      |Jason Young              |Jason Young         |Ann Waugh           |nm3248232  |nm3248232 |nm3501384 |
|45      |Yôji Yamada              |Kiyoshi Atsumi      |Hisao Dazai         |nm0945282  |nm0040910 |nm0206795 |
|45      |Jason Young              |Jason Young         |Claudette Young     |nm3248232  |nm3248232 |nm3269501 |
|45      |Yôji Yamada              |Hisao Dazai         |Gin Maeda           |nm0945282  |nm0206795 |nm0535332 |
|44      |John Gabito Angel        |Leticia Leon Arrieta|Leo Bucio           |nm6193332  |nm2399295 |nm2604898 |
|44      |Yôji Yamada              |Chieko Baishô       |Gajirô Satô         |nm0945282  |nm0047962 |nm0766300 |
|44      |Yôji Yamada              |Gin Maeda           |Gajirô Satô         |nm0945282  |nm0535332 |nm0766300 |
|43      |Yôji Yamada              |Kiyoshi Atsumi      |Gajirô Satô         |nm0945282  |nm0040910 |nm0766300 |
|43      |Peng Hu                  |Tak-Hing Kwan       |Shih Kien           |nm0398898  |nm0477107 |nm0793384 |
|42      |Yôji Yamada              |Chieko Misaki       |Gajirô Satô         |nm0945282  |nm0592654 |nm0766300 |
|42      |Yôji Yamada              |Hisao Dazai         |Gajirô Satô         |nm0945282  |nm0206795 |nm0766300 |
|39      |Shirô Nakagawa           |Okuzan Asao         |Ritoku Arashi       |nm2361543  |nm0038373 |nm2366585 |
|38      |Sasikumar                |Adoor Bhasi         |Meena               |nm0765881  |nm0006982 |nm1467390 |
|38      |Sasikumar                |Prem Nazir          |Meena               |nm0765881  |nm0623427 |nm1467390 |
|38      |Peng Hu                  |Tat-Wah Tso         |Tak-Hing Kwan       |nm0398898  |nm0158656 |nm0477107 |
|38      |John Gabito Angel        |Leticia Leon Arrieta|Luis Leonardo Bucio |nm6193332  |nm2399295 |nm6236789 |
|37      |Keiichirô Yoshida        |Mitsuru Hirata      |Bokuzô Masana       |nm4418310  |nm0386294 |nm1210255 |
|37      |Keiichirô Yoshida        |Mitsuru Hirata      |Tsunehiko Watase    |nm4418310  |nm0386294 |nm0913912 |
|37      |John Gabito Angel        |Leo Bucio           |Luis Leonardo Bucio |nm6193332  |nm2604898 |nm6236789 |
|37      |Keiichirô Yoshida        |Mitsuru Hirata      |Shingo Kazami       |nm4418310  |nm0386294 |nm0443571 |
|37      |Keiichirô Yoshida        |Tsunehiko Watase    |Bokuzô Masana       |nm4418310  |nm0913912 |nm1210255 |
|37      |Keiichirô Yoshida        |Shingo Kazami       |Tsunehiko Watase    |nm4418310  |nm0443571 |nm0913912 |
|37      |Keiichirô Yoshida        |Shingo Kazami       |Bokuzô Masana       |nm4418310  |nm0443571 |nm1210255 |
|36      |Keiichirô Yoshida        |Mitsuru Hirata      |Yôko Ôshima         |nm4418310  |nm0386294 |nm0960015 |
|36      |Sasikumar                |Jayabharathi        |Prem Nazir          |nm0765881  |nm0419653 |nm0623427 |
|36      |Yôji Yamada              |Chieko Misaki       |Masami Shimojô      |nm0945282  |nm0592654 |nm0793726 |
|36      |Sam Newfield             |Buster Crabbe       |Al St. John         |nm0627864  |nm0185568 |nm0820607 |
|36      |Keiichirô Yoshida        |Shingo Kazami       |Miho Hayashi        |nm4418310  |nm0443571 |nm2082012 |
|36      |Sam Newfield             |Charles King        |Al St. John         |nm0627864  |nm0454559 |nm0820607 |
|36      |Keiichirô Yoshida        |Mitsuru Hirata      |Miho Hayashi        |nm4418310  |nm0386294 |nm2082012 |
|36      |Keiichirô Yoshida        |Shingo Kazami       |Yôko Ôshima         |nm4418310  |nm0443571 |nm0960015 |
|36      |Keiichirô Yoshida        |Yôko Ôshima         |Miho Hayashi        |nm4418310  |nm0960015 |nm2082012 |
|36      |Keiichirô Yoshida        |Yôko Ôshima         |Bokuzô Masana       |nm4418310  |nm0960015 |nm1210255 |
|36      |Yôji Yamada              |Chieko Baishô       |Masami Shimojô      |nm0945282  |nm0047962 |nm0793726 |
|36      |Keiichirô Yoshida        |Tsunehiko Watase    |Yôko Ôshima         |nm4418310  |nm0913912 |nm0960015 |
|36      |Yôji Yamada              |Kiyoshi Atsumi      |Masami Shimojô      |nm0945282  |nm0040910 |nm0793726 |
|36      |Keiichirô Yoshida        |Tsunehiko Watase    |Miho Hayashi        |nm4418310  |nm0913912 |nm2082012 |
|36      |Ray Nazarro              |Smiley Burnette     |Charles Starrett    |nm0623401  |nm0122470 |nm0823633 |
|36      |Keiichirô Yoshida        |Bokuzô Masana       |Miho Hayashi        |nm4418310  |nm1210255 |nm2082012 |
|35      |Yôji Yamada              |Gin Maeda           |Masami Shimojô      |nm0945282  |nm0535332 |nm0793726 |
|35      |Yôji Yamada              |Hisao Dazai         |Masami Shimojô      |nm0945282  |nm0206795 |nm0793726 |
|35      |Ashley Hays Wright       |Cadence Wright      |David Owen Wright   |nm10977492 |nm11001208|nm11004690|
|35      |Shirô Nakagawa           |Okuzan Asao         |Hôshô Bandô         |nm2361543  |nm0038373 |nm2384746 |
|35      |Peng Hu                  |Tat-Wah Tso         |Shih Kien           |nm0398898  |nm0158656 |nm0793384 |
|35      |Yôji Yamada              |Gajirô Satô         |Masami Shimojô      |nm0945282  |nm0766300 |nm0793726 |
|35      |Ladislav Povazay         |Sissy Löwinger      |Walter Scheuer      |nm2823681  |nm0530593 |nm4104325 |
|34      |Ashley Hays Wright       |Jaina Wright        |David Owen Wright   |nm10977492 |nm11001206|nm11004690|
|34      |Ashley Hays Wright       |Jaina Wright        |Cadence Wright      |nm10977492 |nm11001206|nm11001208|
|34      |Ashley Hays Wright       |Ashley Hays Wright  |David Owen Wright   |nm10977492 |nm10977492|nm11004690|
|34      |Ashley Hays Wright       |Jaina Wright        |Scout Wright        |nm10977492 |nm11001206|nm11001207|
|34      |Isamu Aitsuki            |Gô Wakabayashi      |Momiji Yamamura     |nm2739774  |nm0906688 |nm1736396 |
|34      |Ladislav Povazay         |Sissy Löwinger      |Hilde Rom           |nm2823681  |nm0530593 |nm0738560 |
|33      |Ashley Hays Wright       |Scout Wright        |David Owen Wright   |nm10977492 |nm11001207|nm11004690|
|33      |Ashley Hays Wright       |Scout Wright        |Cadence Wright      |nm10977492 |nm11001207|nm11001208|
|33      |Ashley Hays Wright       |Ashley Hays Wright  |Scout Wright        |nm10977492 |nm10977492|nm11001207|
|33      |Sasikumar                |Adoor Bhasi         |Jayabharathi        |nm0765881  |nm0006982 |nm0419653 |
|33      |Shirô Nakagawa           |Okuzan Asao         |Enshô Jitsukawa     |nm2361543  |nm0038373 |nm1698868 |
|33      |Ladislav Povazay         |Hilde Rom           |Walter Scheuer      |nm2823681  |nm0738560 |nm4104325 |
|33      |Ashley Hays Wright       |Ashley Hays Wright  |Jaina Wright        |nm10977492 |nm10977492|nm11001206|
|32      |Ashley Hays Wright       |Ashley Hays Wright  |Cadence Wright      |nm10977492 |nm10977492|nm11001208|
|32      |Rajiv Chilaka            |Julie Tejwani       |Jigna Bhardwaj      |nm5592581  |nm5598720 |nm5598807 |
|32      |Lambert Hillyer          |Johnny Mack Brown   |Raymond Hatton      |nm0385171  |nm0113902 |nm0369058 |
|31      |M. Krishnan Nair         |Adoor Bhasi         |Prem Nazir          |nm0619759  |nm0006982 |nm0623427 |
|31      |Shirô Nakagawa           |Okuzan Asao         |Shôzô Arashi        |nm2361543  |nm0038373 |nm2367854 |
|31      |Ladislav Povazay         |Paul Löwinger       |Sissy Löwinger      |nm2823681  |nm0530591 |nm0530593 |
|31      |Jesús Franco             |Antonio Mayans      |Lina Romay          |nm0001238  |nm0562210 |nm0739124 |
|31      |Mark Polonia             |Tim Hatch           |Jeff Kirkendall     |nm0689789  |nm2374888 |nm2386198 |
|31      |Rajiv Chilaka            |Jigna Bhardwaj      |Rajesh Kava         |nm5592581  |nm5598807 |nm5598824 |
|31      |Yoshinobu Ikeda          |Yûkichi Iwata       |Sumiko Kurishima    |nm1283324  |nm0412637 |nm0475732 |
|30      |Rajiv Chilaka            |Julie Tejwani       |Rajesh Kava         |nm5592581  |nm5598720 |nm5598824 |
|30      |Sasikumar                |Adoor Bhasi         |Bahadur             |nm0765881  |nm0006982 |nm0046850 |
|30      |Jason Young              |Jason Young         |Susan Jarrett       |nm3248232  |nm3248232 |nm3269386 |
|30      |Alonso O. Lara           |Luis Huizar         |Vianey Huizar       |nm1024715  |nm2593355 |nm4052191 |
|30      |Ladislav Povazay         |Paul Löwinger       |Hilde Rom           |nm2823681  |nm0530591 |nm0738560 |
|29      |William Beaudine         |Leo Gorcey          |Huntz Hall          |nm0064415  |nm0329832 |nm0355653 |
|29      |Sasikumar                |Bahadur             |Prem Nazir          |nm0765881  |nm0046850 |nm0623427 |
|28      |Gilberto Martínez Solares|Marcelo Chávez      |Germán Valdés       |nm0554924  |nm0161672 |nm0848910 |
|28      |Sasikumar                |Prem Nazir          |Sankaradi           |nm0765881  |nm0623427 |nm0762844 |
|28      |Jason Young              |Claudette Young     |Ann Waugh           |nm3248232  |nm3269501 |nm3501384 |
|28      |Leon Ding                |Justin J. Wheeler   |Paul 'Maxx' Rinehart|nm5694753  |nm5694766 |nm5703019 |
|27      |Kinya Ogawa              |Kiichirô Mutô       |Mayumi Sanjô        |nm0644554  |nm0992655 |nm1001836 |
|27      |Wui Ng                   |Yin Pak             |Wood-Yau Cheung     |nm0628860  |nm1720239 |nm1908630 |
|27      |William Witney           |Roy Rogers          |Trigger             |nm0936823  |nm0001678 |nm1022326 |
|27      |Lau Lauritzen            |Carl Schenstrøm     |Harald Madsen       |nm0491503  |nm0234670 |nm0535206 |

## Personal questions

### For the last and current year: 10 most watched movies per genre with score above average score of that genre for those two years.

|genre         |title                                                 |release year|above genre average|average rating|number of votes|imdb movie id|
|--------------|------------------------------------------------------|------------|-------------------|--------------|---------------|-------------|
|Action        |Dune: Part Two                                        |2024        |2.2                |8.4           |685526         |tt15239678   |
|Action        |Deadpool & Wolverine                                  |2024        |1.3                |7.5           |540708         |tt6263850    |
|Action        |Superman                                              |2025        |0.9                |7.1           |356931         |tt5950044    |
|Action        |Sinners                                               |2025        |1.4                |7.6           |319398         |tt31193180   |
|Action        |Furiosa: A Mad Max Saga                               |2024        |1.3                |7.5           |309014         |tt12037194   |
|Action        |Gladiator II                                          |2024        |0.3                |6.5           |280913         |tt9218128    |
|Action        |Civil War                                             |2024        |0.8                |7.0           |257081         |tt17279496   |
|Action        |F1: The Movie                                         |2025        |1.5                |7.7           |248997         |tt16311594   |
|Action        |Thunderbolts*                                         |2025        |0.9                |7.1           |244882         |tt20969586   |
|Action        |The Fall Guy                                          |2024        |0.6                |6.8           |242562         |tt1684562    |
|Adventure     |Dune: Part Two                                        |2024        |2.3                |8.4           |685526         |tt15239678   |
|Adventure     |Deadpool & Wolverine                                  |2024        |1.4                |7.5           |540708         |tt6263850    |
|Adventure     |Superman                                              |2025        |1.0                |7.1           |356931         |tt5950044    |
|Adventure     |Furiosa: A Mad Max Saga                               |2024        |1.4                |7.5           |309014         |tt12037194   |
|Adventure     |Gladiator II                                          |2024        |0.4                |6.5           |280913         |tt9218128    |
|Adventure     |Thunderbolts*                                         |2025        |1.0                |7.1           |244882         |tt20969586   |
|Adventure     |Inside Out 2                                          |2024        |1.4                |7.5           |237291         |tt22022452   |
|Adventure     |Mickey 17                                             |2025        |0.6                |6.7           |214851         |tt12299608   |
|Adventure     |The Fantastic Four: First Steps                       |2025        |0.8                |6.9           |213538         |tt10676052   |
|Adventure     |The Wild Robot                                        |2024        |2.1                |8.2           |205692         |tt29623480   |
|Animation     |Inside Out 2                                          |2024        |0.8                |7.5           |237291         |tt22022452   |
|Animation     |The Wild Robot                                        |2024        |1.5                |8.2           |205692         |tt29623480   |
|Animation     |Flow                                                  |2024        |1.2                |7.9           |100829         |tt4772188    |
|Animation     |KPop Demon Hunters                                    |2025        |0.8                |7.5           |100703         |tt14205554   |
|Animation     |Transformers One                                      |2024        |0.9                |7.6           |60350          |tt8864596    |
|Animation     |Demon Slayer: Kimetsu no Yaiba Infinity Castle        |2025        |1.8                |8.5           |53258          |tt32820897   |
|Animation     |Predator: Killer of Killers                           |2025        |0.7                |7.4           |53009          |tt36463894   |
|Animation     |Mahavatar Narsimha                                    |2024        |1.9                |8.6           |42900          |tt34365591   |
|Animation     |Wallace & Gromit: Vengeance Most Fowl                 |2024        |0.8                |7.5           |39153          |tt17163970   |
|Animation     |Elio                                                  |2025        |0.0                |6.7           |33177          |tt4900148    |
|Biography     |I'm Still Here                                        |2024        |1.2                |8.1           |123870         |tt14961016   |
|Biography     |A Complete Unknown                                    |2024        |0.4                |7.3           |107776         |tt11563598   |
|Biography     |The Apprentice                                        |2024        |0.2                |7.1           |68016          |tt8368368    |
|Biography     |Better Man                                            |2024        |0.6                |7.5           |41963          |tt14260836   |
|Biography     |Saturday Night                                        |2024        |0.0                |6.9           |36767          |tt27657135   |
|Biography     |Chandu Champion                                       |2024        |0.9                |7.8           |36122          |tt27470893   |
|Biography     |Roofman                                               |2025        |0.1                |7.0           |26754          |tt4627382    |
|Biography     |Maidaan                                               |2024        |1.0                |7.9           |23254          |tt10869778   |
|Biography     |Amaran                                                |2024        |1.2                |8.1           |23031          |tt27118357   |
|Biography     |The Outrun                                            |2024        |0.0                |6.9           |20548          |tt11687002   |
|Comedy        |Deadpool & Wolverine                                  |2024        |1.3                |7.5           |540708         |tt6263850    |
|Comedy        |The Fall Guy                                          |2024        |0.6                |6.8           |242562         |tt1684562    |
|Comedy        |Inside Out 2                                          |2024        |1.3                |7.5           |237291         |tt22022452   |
|Comedy        |Anora                                                 |2024        |1.2                |7.4           |236831         |tt28607951   |
|Comedy        |Mickey 17                                             |2025        |0.5                |6.7           |214851         |tt12299608   |
|Comedy        |Challengers                                           |2024        |0.8                |7.0           |169182         |tt16426418   |
|Comedy        |Beetlejuice Beetlejuice                               |2024        |0.4                |6.6           |167059         |tt2049403    |
|Comedy        |The Ministry of Ungentlemanly Warfare                 |2024        |0.6                |6.8           |149999         |tt5177120    |
|Comedy        |Moana 2                                               |2024        |0.1                |6.3           |118835         |tt13622970   |
|Comedy        |A Real Pain                                           |2024        |0.8                |7.0           |118421         |tt21823606   |
|Crime         |Thunderbolts*                                         |2025        |0.8                |7.1           |244882         |tt20969586   |
|Crime         |Longlegs                                              |2024        |0.3                |6.6           |212468         |tt23468450   |
|Crime         |One Battle After Another                              |2025        |1.7                |8.0           |186383         |tt30144839   |
|Crime         |Carry-On                                              |2024        |0.2                |6.5           |184288         |tt21382296   |
|Crime         |Juror #2                                              |2024        |0.7                |7.0           |118120         |tt27403986   |
|Crime         |The Accountant 2                                      |2025        |0.3                |6.6           |116839         |tt7068946    |
|Crime         |Abigail                                               |2024        |0.2                |6.5           |108478         |tt27489557   |
|Crime         |Rebel Ridge                                           |2024        |0.5                |6.8           |98400          |tt11301886   |
|Crime         |Monkey Man                                            |2024        |0.5                |6.8           |97600          |tt9214772    |
|Crime         |Wolfs                                                 |2024        |0.2                |6.5           |97042          |tt14257582   |
|Documentary   |No Other Land                                         |2024        |0.9                |8.2           |17194          |tt30953759   |
|Documentary   |The Greatest Night in Pop                             |2024        |0.6                |7.9           |15814          |tt30796448   |
|Documentary   |The Remarkable Life of Ibelin                         |2024        |0.9                |8.2           |14199          |tt19811010   |
|Documentary   |Will & Harper                                         |2024        |0.1                |7.4           |13347          |tt30321133   |
|Documentary   |We Will Dance Again                                   |2024        |0.3                |7.6           |11386          |tt31556612   |
|Documentary   |Super/Man: The Christopher Reeve Story                |2024        |0.7                |8.0           |11185          |tt27902121   |
|Documentary   |John Candy: I Like Me                                 |2025        |0.8                |8.1           |8755           |tt26683420   |
|Documentary   |I Am: Celine Dion                                     |2024        |0.4                |7.7           |8197           |tt28620587   |
|Documentary   |Avicii - I'm Tim                                      |2024        |0.4                |7.7           |8026           |tt32138523   |
|Documentary   |Jung Kook: I Am Still                                 |2024        |0.9                |8.2           |7658           |tt32903026   |
|Drama         |Dune: Part Two                                        |2024        |1.8                |8.4           |685526         |tt15239678   |
|Drama         |The Substance                                         |2024        |0.6                |7.2           |366414         |tt17526714   |
|Drama         |Sinners                                               |2025        |1.0                |7.6           |319398         |tt31193180   |
|Drama         |F1: The Movie                                         |2025        |1.1                |7.7           |248997         |tt16311594   |
|Drama         |The Fall Guy                                          |2024        |0.2                |6.8           |242562         |tt1684562    |
|Drama         |Anora                                                 |2024        |0.8                |7.4           |236831         |tt28607951   |
|Drama         |Conclave                                              |2024        |0.8                |7.4           |226471         |tt20215234   |
|Drama         |One Battle After Another                              |2025        |1.4                |8.0           |186383         |tt30144839   |
|Drama         |Frankenstein                                          |2025        |0.9                |7.5           |170476         |tt1312221    |
|Drama         |Challengers                                           |2024        |0.4                |7.0           |169182         |tt16426418   |
|Family        |The Wild Robot                                        |2024        |1.9                |8.2           |205692         |tt29623480   |
|Family        |Flow                                                  |2024        |1.6                |7.9           |100829         |tt4772188    |
|Family        |Karate Kid: Legends                                   |2025        |0.0                |6.3           |39517          |tt1674782    |
|Family        |Paddington in Peru                                    |2024        |0.3                |6.6           |31670          |tt5822536    |
|Family        |Wicked: For Good                                      |2025        |0.7                |7.0           |31235          |tt19847976   |
|Family        |Freakier Friday                                       |2025        |0.0                |6.3           |29944          |tt31956415   |
|Family        |Meiyazhagan                                           |2024        |2.2                |8.5           |20807          |tt26758372   |
|Family        |How to Make Millions Before Grandma Dies              |2024        |1.6                |7.9           |20058          |tt31392609   |
|Family        |Mission Muh Dikhayi                                   |2025        |2.8                |9.1           |9849           |tt38063392   |
|Family        |Young Hearts                                          |2024        |1.6                |7.9           |7430           |tt15245268   |
|Fantasy       |Nosferatu                                             |2024        |1.0                |7.1           |249204         |tt5040012    |
|Fantasy       |Mickey 17                                             |2025        |0.6                |6.7           |214851         |tt12299608   |
|Fantasy       |Wicked                                                |2024        |1.3                |7.4           |198520         |tt1262426    |
|Fantasy       |Frankenstein                                          |2025        |1.4                |7.5           |170476         |tt1312221    |
|Fantasy       |Beetlejuice Beetlejuice                               |2024        |0.5                |6.6           |167059         |tt2049403    |
|Fantasy       |Damsel                                                |2024        |0.0                |6.1           |115183         |tt13452446   |
|Fantasy       |Ghostbusters: Frozen Empire                           |2024        |0.0                |6.1           |100617         |tt21235248   |
|Fantasy       |Kantara: A Legend - Chapter 1                         |2025        |2.2                |8.3           |48406          |tt26439764   |
|Fantasy       |The Life of Chuck                                     |2024        |1.2                |7.3           |43460          |tt12908150   |
|Fantasy       |Better Man                                            |2024        |1.4                |7.5           |41963          |tt14260836   |
|Game-Show     |The Netflix Slam                                      |2024        |1.1                |7.2           |149            |tt30413143   |
|Game-Show     |Disaster Date Roulette (I Married a Monster on a Hill)|2025        |2.3                |8.4           |11             |tt36809646   |
|History       |I'm Still Here                                        |2024        |1.2                |8.1           |123870         |tt14961016   |
|History       |The Apprentice                                        |2024        |0.2                |7.1           |68016          |tt8368368    |
|History       |Chhaava                                               |2025        |0.4                |7.3           |39035          |tt27922706   |
|History       |September 5                                           |2024        |0.2                |7.1           |32992          |tt28082769   |
|History       |Maidaan                                               |2024        |1.0                |7.9           |23254          |tt10869778   |
|History       |The Girl with the Needle                              |2024        |0.6                |7.5           |18225          |tt10236164   |
|History       |Intoxicated by Love                                   |2024        |0.2                |7.1           |14979          |tt11281220   |
|History       |Kesari Chapter 2: The Untold Story of Jallianwala Bagh|2025        |1.1                |8.0           |14925          |tt3562110    |
|History       |Nuremberg                                             |2025        |0.7                |7.6           |14751          |tt29567915   |
|History       |Joy                                                   |2024        |0.2                |7.1           |11111          |tt10243672   |
|Horror        |The Substance                                         |2024        |1.8                |7.2           |366414         |tt17526714   |
|Horror        |Sinners                                               |2025        |2.2                |7.6           |319398         |tt31193180   |
|Horror        |Alien: Romulus                                        |2024        |1.7                |7.1           |274237         |tt18412256   |
|Horror        |Weapons                                               |2025        |2.1                |7.5           |253522         |tt26581740   |
|Horror        |Nosferatu                                             |2024        |1.7                |7.1           |249204         |tt5040012    |
|Horror        |Longlegs                                              |2024        |1.2                |6.6           |212468         |tt23468450   |
|Horror        |Heretic                                               |2024        |1.6                |7.0           |206222         |tt28015403   |
|Horror        |Frankenstein                                          |2025        |2.1                |7.5           |170476         |tt1312221    |
|Horror        |Beetlejuice Beetlejuice                               |2024        |1.2                |6.6           |167059         |tt2049403    |
|Horror        |A Quiet Place: Day One                                |2024        |0.9                |6.3           |165295         |tt13433802   |
|Music         |A Complete Unknown                                    |2024        |0.1                |7.3           |107776         |tt11563598   |
|Music         |Better Man                                            |2024        |0.3                |7.5           |41963          |tt14260836   |
|Music         |Kneecap                                               |2024        |0.4                |7.6           |23017          |tt27367464   |
|Music         |Amar Singh Chamkila                                   |2024        |0.6                |7.8           |17040          |tt26658272   |
|Music         |The Greatest Night in Pop                             |2024        |0.7                |7.9           |15814          |tt30796448   |
|Music         |The Ballad of Wallis Island                           |2025        |0.2                |7.4           |14980          |tt27674982   |
|Music         |I Am: Celine Dion                                     |2024        |0.5                |7.7           |8197           |tt28620587   |
|Music         |Avicii - I'm Tim                                      |2024        |0.5                |7.7           |8026           |tt32138523   |
|Music         |Jung Kook: I Am Still                                 |2024        |1.0                |8.2           |7658           |tt32903026   |
|Music         |Becoming Led Zeppelin                                 |2025        |0.3                |7.5           |7379           |tt10365912   |
|Musical       |Wicked                                                |2024        |0.6                |7.4           |198520         |tt1262426    |
|Musical       |Wicked: For Good                                      |2025        |0.2                |7.0           |31235          |tt19847976   |
|Musical       |Tere Ishk Mein                                        |2025        |1.2                |8.0           |21821          |tt28142095   |
|Musical       |Gaga Chromatica Ball                                  |2024        |1.3                |8.1           |2131           |tt29794647   |
|Musical       |Andaaz 2                                              |2025        |0.1                |6.9           |1662           |tt30224735   |
|Musical       |CMantham                                              |2025        |1.2                |8.0           |1528           |tt37919259   |
|Musical       |How Could I Live Without You?                         |2024        |0.1                |6.9           |1244           |tt29344974   |
|Musical       |Meghalu Cheppina Prema Katha                          |2025        |0.4                |7.2           |1040           |tt37140876   |
|Musical       |Songs of Paradise                                     |2025        |0.2                |7.0           |1028           |tt6540996    |
|Musical       |Roi Roi Binale                                        |2025        |2.1                |8.9           |940            |tt29939499   |
|Mystery       |Weapons                                               |2025        |1.3                |7.5           |253522         |tt26581740   |
|Mystery       |Nosferatu                                             |2024        |0.9                |7.1           |249204         |tt5040012    |
|Mystery       |Longlegs                                              |2024        |0.4                |6.6           |212468         |tt23468450   |
|Mystery       |Smile 2                                               |2024        |0.5                |6.7           |130943         |tt29268110   |
|Mystery       |Blink Twice                                           |2024        |0.3                |6.5           |120981         |tt14858658   |
|Mystery       |Juror #2                                              |2024        |0.8                |7.0           |118120         |tt27403986   |
|Mystery       |Bring Her Back                                        |2025        |0.9                |7.1           |98511          |tt32246771   |
|Mystery       |Black Bag                                             |2025        |0.5                |6.7           |78944          |tt30988739   |
|Mystery       |The Conjuring: Last Rites                             |2025        |0.0                |6.2           |77790          |tt22898462   |
|Mystery       |Do Patti                                              |2024        |0.1                |6.3           |70205          |tt28075881   |
|News          |Zurawski v Texas                                      |2024        |0.0                |7.6           |127            |tt33303798   |
|News          |Can't Look Away: The Case Against Social Media        |2025        |1.3                |8.9           |22             |tt36270205   |
|News          |Every Christopher Nolan Movie Ranked                  |2024        |1.0                |8.6           |18             |tt32204353   |
|News          |Investigating the Supernatural: Miracles              |2025        |0.5                |8.1           |14             |tt29089628   |
|News          |Minnesota v. We the People                            |2024        |1.8                |9.4           |7              |tt34096687   |
|Reality-TV    |The Netflix Slam                                      |2024        |0.1                |7.2           |149            |tt30413143   |
|Reality-TV    |Citizen Glenn                                         |2024        |1.4                |8.5           |106            |tt35286402   |
|Reality-TV    |Dinner Party Diaries with José Andrés                 |2024        |0.5                |7.6           |79             |tt31194941   |
|Reality-TV    |The Loneliest Boy on Earth                            |2024        |1.9                |9.0           |73             |tt31849609   |
|Reality-TV    |Giada in My Kitchen                                   |2025        |0.6                |7.7           |30             |tt37255713   |
|Reality-TV    |Nenn Country                                          |2024        |2.1                |9.2           |26             |tt28197836   |
|Reality-TV    |Sidelined: Rewind with Noah and Siena                 |2025        |1.2                |8.3           |14             |tt38686603   |
|Reality-TV    |Beta Squad vs AMP Charity Match 2024                  |2024        |1.7                |8.8           |10             |tt32565918   |
|Reality-TV    |Inquietus                                             |2024        |0.8                |7.9           |8              |tt33201707   |
|Romance       |Anora                                                 |2024        |1.0                |7.4           |236831         |tt28607951   |
|Romance       |Wicked                                                |2024        |1.0                |7.4           |198520         |tt1262426    |
|Romance       |Challengers                                           |2024        |0.6                |7.0           |169182         |tt16426418   |
|Romance       |Black Bag                                             |2025        |0.3                |6.7           |78944          |tt30988739   |
|Romance       |We Live in Time                                       |2024        |0.6                |7.0           |66852          |tt27131358   |
|Romance       |Fly Me to the Moon                                    |2024        |0.2                |6.6           |55547          |tt1896747    |
|Romance       |Together                                              |2025        |0.3                |6.7           |53664          |tt31184028   |
|Romance       |My Old Ass                                            |2024        |0.5                |6.9           |45376          |tt18559464   |
|Romance       |The Life List                                         |2025        |0.4                |6.8           |36493          |tt2172954    |
|Romance       |Bridget Jones: Mad About the Boy                      |2025        |0.1                |6.5           |30920          |tt32063050   |
|Sci-Fi        |The Substance                                         |2024        |1.3                |7.2           |366414         |tt17526714   |
|Sci-Fi        |Superman                                              |2025        |1.2                |7.1           |356931         |tt5950044    |
|Sci-Fi        |Furiosa: A Mad Max Saga                               |2024        |1.6                |7.5           |309014         |tt12037194   |
|Sci-Fi        |Alien: Romulus                                        |2024        |1.2                |7.1           |274237         |tt18412256   |
|Sci-Fi        |The Fantastic Four: First Steps                       |2025        |1.0                |6.9           |213538         |tt10676052   |
|Sci-Fi        |A Quiet Place: Day One                                |2024        |0.4                |6.3           |165295         |tt13433802   |
|Sci-Fi        |28 Years Later                                        |2025        |0.7                |6.6           |164652         |tt10548174   |
|Sci-Fi        |Jurassic World: Rebirth                               |2025        |0.0                |5.9           |158941         |tt31036941   |
|Sci-Fi        |Companion                                             |2025        |1.0                |6.9           |154839         |tt26584495   |
|Sci-Fi        |The Long Walk                                         |2025        |0.9                |6.8           |75361          |tt10374610   |
|Sport         |F1: The Movie                                         |2025        |0.7                |7.7           |248997         |tt16311594   |
|Sport         |Lubber Pandhu                                         |2024        |1.1                |8.1           |8519           |tt27007466   |
|Sport         |Gundi: Legend of Love                                 |2024        |1.9                |8.9           |5826           |tt31853193   |
|Sport         |Bison: Kaalamaadan                                    |2025        |0.9                |7.9           |5470           |tt15097358   |
|Sport         |Federer: Twelve Final Days                            |2024        |0.3                |7.3           |4433           |tt31392065   |
|Sport         |Giannis: The Marvelous Journey                        |2024        |1.3                |8.3           |1912           |tt30895834   |
|Sport         |EFC                                                   |2024        |0.6                |7.6           |1257           |tt5930062    |
|Sport         |Nasty                                                 |2024        |0.7                |7.7           |1144           |tt31437303   |
|Sport         |Marty Supreme                                         |2025        |0.6                |7.6           |991            |tt32916440   |
|Sport         |100 Meters                                            |2025        |1.1                |8.1           |781            |tt32600395   |
|Talk-Show     |Jim Jefferies: Two Limb Policy                        |2025        |0.2                |6.9           |1557           |tt37649515   |
|Talk-Show     |National Theatre Live: Dear England                   |2024        |1.5                |8.2           |152            |tt29640718   |
|Talk-Show     |(Verifying) Grief 80% // 65+ X59 // Stream 283        |2025        |2.2                |8.9           |8              |tt38792547   |
|Thriller      |Alien: Romulus                                        |2024        |1.1                |7.1           |274237         |tt18412256   |
|Thriller      |Civil War                                             |2024        |1.0                |7.0           |257081         |tt17279496   |
|Thriller      |Conclave                                              |2024        |1.4                |7.4           |226471         |tt20215234   |
|Thriller      |Heretic                                               |2024        |1.0                |7.0           |206222         |tt28015403   |
|Thriller      |Twisters                                              |2024        |0.5                |6.5           |187766         |tt12584954   |
|Thriller      |Mission: Impossible - The Final Reckoning             |2025        |1.2                |7.2           |187688         |tt9603208    |
|Thriller      |Carry-On                                              |2024        |0.5                |6.5           |184288         |tt21382296   |
|Thriller      |Road House                                            |2024        |0.2                |6.2           |178547         |tt3359350    |
|Thriller      |The Beekeeper                                         |2024        |0.3                |6.3           |172439         |tt15314262   |
|Thriller      |28 Years Later                                        |2025        |0.6                |6.6           |164652         |tt10548174   |
|War           |Civil War                                             |2024        |0.5                |7.0           |257081         |tt17279496   |
|War           |The Ministry of Ungentlemanly Warfare                 |2024        |0.3                |6.8           |149999         |tt5177120    |
|War           |Warfare                                               |2025        |0.7                |7.2           |93774          |tt31434639   |
|War           |The Six Triple Eight                                  |2024        |0.2                |6.7           |30262          |tt24458622   |
|War           |Nr. 24                                                |2024        |1.0                |7.5           |18368          |tt23782584   |
|War           |Sisu: Road to Revenge                                 |2025        |0.8                |7.3           |5060           |tt31844586   |
|War           |Eleanor the Great                                     |2025        |0.1                |6.6           |3659           |tt30268321   |
|War           |My Dead Friend Zoe                                    |2024        |0.0                |6.5           |3598           |tt22022784   |
|War           |Dead to Rights                                        |2025        |1.3                |7.8           |2379           |tt36598036   |
|War           |Sound of Falling                                      |2025        |0.7                |7.2           |1922           |tt28690468   |
|Western       |Horizon: An American Saga - Chapter 1                 |2024        |0.5                |6.6           |43590          |tt17505010   |
|Western       |Eddington                                             |2025        |0.5                |6.6           |41162          |tt31176520   |
|Western       |Manitou's Canoe                                       |2025        |0.2                |6.3           |3305           |tt30972054   |
|Western       |Broke                                                 |2025        |0.0                |6.1           |2702           |tt35048826   |
|Western       |Horizon: An American Saga - Chapter 2                 |2024        |1.0                |7.1           |1604           |tt27665778   |
|Western       |Eye for an Eye 2                                      |2024        |0.5                |6.6           |660            |tt30972810   |
|Western       |Same Old West                                         |2024        |1.4                |7.5           |617            |tt12636944   |
|Western       |Stolen Time                                           |2025        |1.6                |7.7           |584            |tt14453496   |
|Western       |Heads or Tails?                                       |2025        |0.3                |6.4           |239            |tt32448429   |
|Western       |Bitter Gold                                           |2024        |1.1                |7.2           |118            |tt20358190   |

### For the last and current year: 10 most watched movies per genre with score a score above the ALL TIME AVERGAE SCORE for a genre.

|genre         |title                                                 |release year|above genre average|average rating|number of votes|imdb movie id|
|--------------|------------------------------------------------------|------------|-------------------|--------------|---------------|-------------|
|Action        |Dune: Part Two                                        |2024        |1.3                |8.4           |685526         |tt15239678   |
|Action        |Deadpool & Wolverine                                  |2024        |0.4                |7.5           |540708         |tt6263850    |
|Action        |Superman                                              |2025        |0.0                |7.1           |356931         |tt5950044    |
|Action        |Sinners                                               |2025        |0.5                |7.6           |319398         |tt31193180   |
|Action        |Furiosa: A Mad Max Saga                               |2024        |0.4                |7.5           |309014         |tt12037194   |
|Action        |F1: The Movie                                         |2025        |0.6                |7.7           |248997         |tt16311594   |
|Action        |Thunderbolts*                                         |2025        |0.0                |7.1           |244882         |tt20969586   |
|Action        |Mission: Impossible - The Final Reckoning             |2025        |0.1                |7.2           |187688         |tt9603208    |
|Action        |One Battle After Another                              |2025        |0.9                |8.0           |186383         |tt30144839   |
|Action        |How to Train Your Dragon                              |2025        |0.7                |7.8           |110103         |tt26743210   |
|Adventure     |Dune: Part Two                                        |2024        |1.2                |8.4           |685526         |tt15239678   |
|Adventure     |Deadpool & Wolverine                                  |2024        |0.3                |7.5           |540708         |tt6263850    |
|Adventure     |Furiosa: A Mad Max Saga                               |2024        |0.3                |7.5           |309014         |tt12037194   |
|Adventure     |Inside Out 2                                          |2024        |0.3                |7.5           |237291         |tt22022452   |
|Adventure     |The Wild Robot                                        |2024        |1.0                |8.2           |205692         |tt29623480   |
|Adventure     |Mission: Impossible - The Final Reckoning             |2025        |0.0                |7.2           |187688         |tt9603208    |
|Adventure     |How to Train Your Dragon                              |2025        |0.6                |7.8           |110103         |tt26743210   |
|Adventure     |Flow                                                  |2024        |0.7                |7.9           |100829         |tt4772188    |
|Adventure     |KPop Demon Hunters                                    |2025        |0.3                |7.5           |100703         |tt14205554   |
|Adventure     |Transformers One                                      |2024        |0.4                |7.6           |60350          |tt8864596    |
|Animation     |Inside Out 2                                          |2024        |0.3                |7.5           |237291         |tt22022452   |
|Animation     |The Wild Robot                                        |2024        |1.0                |8.2           |205692         |tt29623480   |
|Animation     |Flow                                                  |2024        |0.7                |7.9           |100829         |tt4772188    |
|Animation     |KPop Demon Hunters                                    |2025        |0.3                |7.5           |100703         |tt14205554   |
|Animation     |Transformers One                                      |2024        |0.4                |7.6           |60350          |tt8864596    |
|Animation     |Demon Slayer: Kimetsu no Yaiba Infinity Castle        |2025        |1.3                |8.5           |53258          |tt32820897   |
|Animation     |Predator: Killer of Killers                           |2025        |0.2                |7.4           |53009          |tt36463894   |
|Animation     |Mahavatar Narsimha                                    |2024        |1.4                |8.6           |42900          |tt34365591   |
|Animation     |Wallace & Gromit: Vengeance Most Fowl                 |2024        |0.3                |7.5           |39153          |tt17163970   |
|Animation     |Chainsaw Man - The Movie: Reze Arc                    |2025        |1.3                |8.5           |25136          |tt30472557   |
|Biography     |I'm Still Here                                        |2024        |0.8                |8.1           |123870         |tt14961016   |
|Biography     |A Complete Unknown                                    |2024        |0.0                |7.3           |107776         |tt11563598   |
|Biography     |Better Man                                            |2024        |0.2                |7.5           |41963          |tt14260836   |
|Biography     |Chandu Champion                                       |2024        |0.5                |7.8           |36122          |tt27470893   |
|Biography     |Maidaan                                               |2024        |0.6                |7.9           |23254          |tt10869778   |
|Biography     |Amaran                                                |2024        |0.8                |8.1           |23031          |tt27118357   |
|Biography     |Young Woman and the Sea                               |2024        |0.2                |7.5           |19064          |tt5177114    |
|Biography     |Nr. 24                                                |2024        |0.2                |7.5           |18368          |tt23782584   |
|Biography     |Swatantrya Veer Savarkar                              |2024        |0.4                |7.7           |17999          |tt14753612   |
|Biography     |Ordinary Angels                                       |2024        |0.1                |7.4           |17973          |tt4996328    |
|Comedy        |Deadpool & Wolverine                                  |2024        |0.5                |7.5           |540708         |tt6263850    |
|Comedy        |Inside Out 2                                          |2024        |0.5                |7.5           |237291         |tt22022452   |
|Comedy        |Anora                                                 |2024        |0.4                |7.4           |236831         |tt28607951   |
|Comedy        |How to Train Your Dragon                              |2025        |0.8                |7.8           |110103         |tt26743210   |
|Comedy        |Bugonia                                               |2025        |0.5                |7.5           |56118          |tt12300742   |
|Comedy        |Wallace & Gromit: Vengeance Most Fowl                 |2024        |0.5                |7.5           |39153          |tt17163970   |
|Comedy        |Aavesham                                              |2024        |0.8                |7.8           |31920          |tt26660021   |
|Comedy        |Kneecap                                               |2024        |0.6                |7.6           |23017          |tt27367464   |
|Comedy        |Premalu                                               |2024        |0.8                |7.8           |22327          |tt28288786   |
|Comedy        |How to Make Millions Before Grandma Dies              |2024        |0.9                |7.9           |20058          |tt31392609   |
|Crime         |One Battle After Another                              |2025        |0.9                |8.0           |186383         |tt30144839   |
|Crime         |Maharaja                                              |2024        |1.2                |8.3           |77198          |tt26548265   |
|Crime         |Bugonia                                               |2025        |0.4                |7.5           |56118          |tt12300742   |
|Crime         |Lucky Baskhar                                         |2024        |0.9                |8.0           |39099          |tt27540542   |
|Crime         |The Girl with the Needle                              |2024        |0.4                |7.5           |18225          |tt10236164   |
|Crime         |The Seed of the Sacred Fig                            |2024        |0.5                |7.6           |18223          |tt32178949   |
|Crime         |Viduthalai Part 2                                     |2024        |0.6                |7.7           |18020          |tt25434834   |
|Crime         |Anweshippin Kandethum                                 |2024        |0.3                |7.4           |11880          |tt13885428   |
|Crime         |Eleven                                                |2025        |0.3                |7.4           |11462          |tt28679253   |
|Crime         |Identity                                              |2025        |0.1                |7.2           |10879          |tt27436132   |
|Documentary   |No Other Land                                         |2024        |1.0                |8.2           |17194          |tt30953759   |
|Documentary   |The Greatest Night in Pop                             |2024        |0.7                |7.9           |15814          |tt30796448   |
|Documentary   |The Remarkable Life of Ibelin                         |2024        |1.0                |8.2           |14199          |tt19811010   |
|Documentary   |Will & Harper                                         |2024        |0.2                |7.4           |13347          |tt30321133   |
|Documentary   |We Will Dance Again                                   |2024        |0.4                |7.6           |11386          |tt31556612   |
|Documentary   |Super/Man: The Christopher Reeve Story                |2024        |0.8                |8.0           |11185          |tt27902121   |
|Documentary   |John Candy: I Like Me                                 |2025        |0.9                |8.1           |8755           |tt26683420   |
|Documentary   |I Am: Celine Dion                                     |2024        |0.5                |7.7           |8197           |tt28620587   |
|Documentary   |Avicii - I'm Tim                                      |2024        |0.5                |7.7           |8026           |tt32138523   |
|Documentary   |Jung Kook: I Am Still                                 |2024        |1.0                |8.2           |7658           |tt32903026   |
|Drama         |Dune: Part Two                                        |2024        |1.3                |8.4           |685526         |tt15239678   |
|Drama         |The Substance                                         |2024        |0.1                |7.2           |366414         |tt17526714   |
|Drama         |Sinners                                               |2025        |0.5                |7.6           |319398         |tt31193180   |
|Drama         |F1: The Movie                                         |2025        |0.6                |7.7           |248997         |tt16311594   |
|Drama         |Anora                                                 |2024        |0.3                |7.4           |236831         |tt28607951   |
|Drama         |Conclave                                              |2024        |0.3                |7.4           |226471         |tt20215234   |
|Drama         |One Battle After Another                              |2025        |0.9                |8.0           |186383         |tt30144839   |
|Drama         |Frankenstein                                          |2025        |0.4                |7.5           |170476         |tt1312221    |
|Drama         |I'm Still Here                                        |2024        |1.0                |8.1           |123870         |tt14961016   |
|Drama         |The Brutalist                                         |2024        |0.2                |7.3           |110984         |tt8999762    |
|Family        |The Wild Robot                                        |2024        |1.1                |8.2           |205692         |tt29623480   |
|Family        |Flow                                                  |2024        |0.8                |7.9           |100829         |tt4772188    |
|Family        |Meiyazhagan                                           |2024        |1.4                |8.5           |20807          |tt26758372   |
|Family        |How to Make Millions Before Grandma Dies              |2024        |0.8                |7.9           |20058          |tt31392609   |
|Family        |Mission Muh Dikhayi                                   |2025        |2.0                |9.1           |9849           |tt38063392   |
|Family        |Young Hearts                                          |2024        |0.8                |7.9           |7430           |tt15245268   |
|Family        |Laggam                                                |2024        |1.2                |8.3           |5134           |tt32292009   |
|Family        |My Mom Jayne                                          |2025        |1.2                |8.3           |4240           |tt36464353   |
|Family        |Palayam PC                                            |2024        |0.2                |7.3           |3199           |tt30454120   |
|Family        |Fear                                                  |2024        |0.6                |7.7           |2945           |tt31064317   |
|Fantasy       |Wicked                                                |2024        |0.3                |7.4           |198520         |tt1262426    |
|Fantasy       |Frankenstein                                          |2025        |0.4                |7.5           |170476         |tt1312221    |
|Fantasy       |Kantara: A Legend - Chapter 1                         |2025        |1.2                |8.3           |48406          |tt26439764   |
|Fantasy       |The Life of Chuck                                     |2024        |0.2                |7.3           |43460          |tt12908150   |
|Fantasy       |Better Man                                            |2024        |0.4                |7.5           |41963          |tt14260836   |
|Fantasy       |Hanu Man                                              |2024        |0.6                |7.7           |30107          |tt15433956   |
|Fantasy       |Lokah Chapter One: Chandra                            |2025        |0.6                |7.7           |16549          |tt33372494   |
|Fantasy       |Mirai                                                 |2025        |0.1                |7.2           |9463           |tt30858568   |
|Fantasy       |Eternity                                              |2025        |0.1                |7.2           |8714           |tt24950660   |
|Fantasy       |Sore: Wife from the Future                            |2025        |1.3                |8.4           |2492           |tt34548722   |
|Game-Show     |The Netflix Slam                                      |2024        |0.1                |7.2           |149            |tt30413143   |
|Game-Show     |Disaster Date Roulette (I Married a Monster on a Hill)|2025        |1.3                |8.4           |11             |tt36809646   |
|History       |I'm Still Here                                        |2024        |0.7                |8.1           |123870         |tt14961016   |
|History       |Maidaan                                               |2024        |0.5                |7.9           |23254          |tt10869778   |
|History       |The Girl with the Needle                              |2024        |0.1                |7.5           |18225          |tt10236164   |
|History       |Kesari Chapter 2: The Untold Story of Jallianwala Bagh|2025        |0.6                |8.0           |14925          |tt3562110    |
|History       |Nuremberg                                             |2025        |0.2                |7.6           |14751          |tt29567915   |
|History       |The Children's Train                                  |2024        |0.0                |7.4           |9146           |tt29242846   |
|History       |The New Year That Never Came                          |2024        |0.7                |8.1           |6005           |tt33030375   |
|History       |I Swear                                               |2025        |1.2                |8.6           |4216           |tt31514146   |
|History       |Guru Nanak Jahaz                                      |2025        |1.4                |8.8           |3853           |tt36722524   |
|History       |Ataturk II: 1881-1919                                 |2024        |1.4                |8.8           |2840           |tt19396786   |
|Horror        |The Substance                                         |2024        |1.1                |7.2           |366414         |tt17526714   |
|Horror        |Sinners                                               |2025        |1.5                |7.6           |319398         |tt31193180   |
|Horror        |Alien: Romulus                                        |2024        |1.0                |7.1           |274237         |tt18412256   |
|Horror        |Weapons                                               |2025        |1.4                |7.5           |253522         |tt26581740   |
|Horror        |Nosferatu                                             |2024        |1.0                |7.1           |249204         |tt5040012    |
|Horror        |Longlegs                                              |2024        |0.5                |6.6           |212468         |tt23468450   |
|Horror        |Heretic                                               |2024        |0.9                |7.0           |206222         |tt28015403   |
|Horror        |Frankenstein                                          |2025        |1.4                |7.5           |170476         |tt1312221    |
|Horror        |Beetlejuice Beetlejuice                               |2024        |0.5                |6.6           |167059         |tt2049403    |
|Horror        |A Quiet Place: Day One                                |2024        |0.2                |6.3           |165295         |tt13433802   |
|Music         |A Complete Unknown                                    |2024        |0.2                |7.3           |107776         |tt11563598   |
|Music         |Better Man                                            |2024        |0.4                |7.5           |41963          |tt14260836   |
|Music         |Kneecap                                               |2024        |0.5                |7.6           |23017          |tt27367464   |
|Music         |Amar Singh Chamkila                                   |2024        |0.7                |7.8           |17040          |tt26658272   |
|Music         |The Greatest Night in Pop                             |2024        |0.8                |7.9           |15814          |tt30796448   |
|Music         |The Ballad of Wallis Island                           |2025        |0.3                |7.4           |14980          |tt27674982   |
|Music         |I Am: Celine Dion                                     |2024        |0.6                |7.7           |8197           |tt28620587   |
|Music         |Avicii - I'm Tim                                      |2024        |0.6                |7.7           |8026           |tt32138523   |
|Music         |Jung Kook: I Am Still                                 |2024        |1.1                |8.2           |7658           |tt32903026   |
|Music         |Becoming Led Zeppelin                                 |2025        |0.4                |7.5           |7379           |tt10365912   |
|Musical       |Wicked                                                |2024        |0.8                |7.4           |198520         |tt1262426    |
|Musical       |Wicked: For Good                                      |2025        |0.4                |7.0           |31235          |tt19847976   |
|Musical       |Tere Ishk Mein                                        |2025        |1.4                |8.0           |21821          |tt28142095   |
|Musical       |Badass Ravikumar                                      |2025        |0.2                |6.8           |9249           |tt23220552   |
|Musical       |Gaga Chromatica Ball                                  |2024        |1.5                |8.1           |2131           |tt29794647   |
|Musical       |Andaaz 2                                              |2025        |0.3                |6.9           |1662           |tt30224735   |
|Musical       |CMantham                                              |2025        |1.4                |8.0           |1528           |tt37919259   |
|Musical       |How Could I Live Without You?                         |2024        |0.3                |6.9           |1244           |tt29344974   |
|Musical       |Meghalu Cheppina Prema Katha                          |2025        |0.6                |7.2           |1040           |tt37140876   |
|Musical       |Songs of Paradise                                     |2025        |0.4                |7.0           |1028           |tt6540996    |
|Mystery       |Weapons                                               |2025        |0.4                |7.5           |253522         |tt26581740   |
|Mystery       |Rekhachithram                                         |2025        |0.8                |7.9           |16335          |tt32284154   |
|Mystery       |Kishkindha Kaandam                                    |2024        |0.9                |8.0           |14912          |tt15980138   |
|Mystery       |Sookshma Darshini                                     |2024        |0.7                |7.8           |12188          |tt32495687   |
|Mystery       |Anweshippin Kandethum                                 |2024        |0.3                |7.4           |11880          |tt13885428   |
|Mystery       |Eleven                                                |2025        |0.3                |7.4           |11462          |tt28679253   |
|Mystery       |Golam                                                 |2024        |0.1                |7.2           |7173           |tt29272469   |
|Mystery       |Thalavan                                              |2024        |0.1                |7.2           |6641           |tt27510257   |
|Mystery       |It Was Just an Accident                               |2025        |0.6                |7.7           |6557           |tt36491653   |
|Mystery       |Like Aani Subscribe                                   |2024        |0.1                |7.2           |6209           |tt33477418   |
|News          |Zurawski v Texas                                      |2024        |0.9                |7.6           |127            |tt33303798   |
|News          |Can't Look Away: The Case Against Social Media        |2025        |2.2                |8.9           |22             |tt36270205   |
|News          |Every Christopher Nolan Movie Ranked                  |2024        |1.9                |8.6           |18             |tt32204353   |
|News          |Investigating the Supernatural: Miracles              |2025        |1.4                |8.1           |14             |tt29089628   |
|News          |Minnesota v. We the People                            |2024        |2.7                |9.4           |7              |tt34096687   |
|Reality-TV    |The Netflix Slam                                      |2024        |0.1                |7.2           |149            |tt30413143   |
|Reality-TV    |Citizen Glenn                                         |2024        |1.4                |8.5           |106            |tt35286402   |
|Reality-TV    |Dinner Party Diaries with José Andrés                 |2024        |0.5                |7.6           |79             |tt31194941   |
|Reality-TV    |The Loneliest Boy on Earth                            |2024        |1.9                |9.0           |73             |tt31849609   |
|Reality-TV    |Giada in My Kitchen                                   |2025        |0.6                |7.7           |30             |tt37255713   |
|Reality-TV    |Nenn Country                                          |2024        |2.1                |9.2           |26             |tt28197836   |
|Reality-TV    |Sidelined: Rewind with Noah and Siena                 |2025        |1.2                |8.3           |14             |tt38686603   |
|Reality-TV    |Beta Squad vs AMP Charity Match 2024                  |2024        |1.7                |8.8           |10             |tt32565918   |
|Reality-TV    |Inquietus                                             |2024        |0.8                |7.9           |8              |tt33201707   |
|Romance       |Anora                                                 |2024        |0.4                |7.4           |236831         |tt28607951   |
|Romance       |Wicked                                                |2024        |0.4                |7.4           |198520         |tt1262426    |
|Romance       |Challengers                                           |2024        |0.0                |7.0           |169182         |tt16426418   |
|Romance       |We Live in Time                                       |2024        |0.0                |7.0           |66852          |tt27131358   |
|Romance       |Premalu                                               |2024        |0.8                |7.8           |22327          |tt28288786   |
|Romance       |Young Woman and the Sea                               |2024        |0.5                |7.5           |19064          |tt5177114    |
|Romance       |Borbaad                                               |2025        |0.0                |7.0           |18099          |tt33305312   |
|Romance       |Dragon                                                |2025        |0.8                |7.8           |16851          |tt32080876   |
|Romance       |Intoxicated by Love                                   |2024        |0.1                |7.1           |14979          |tt11281220   |
|Romance       |All We Imagine as Light                               |2024        |0.1                |7.1           |12844          |tt32086077   |
|Sci-Fi        |The Substance                                         |2024        |0.5                |7.2           |366414         |tt17526714   |
|Sci-Fi        |Superman                                              |2025        |0.4                |7.1           |356931         |tt5950044    |
|Sci-Fi        |Furiosa: A Mad Max Saga                               |2024        |0.8                |7.5           |309014         |tt12037194   |
|Sci-Fi        |Alien: Romulus                                        |2024        |0.4                |7.1           |274237         |tt18412256   |
|Sci-Fi        |The Fantastic Four: First Steps                       |2025        |0.2                |6.9           |213538         |tt10676052   |
|Sci-Fi        |Companion                                             |2025        |0.2                |6.9           |154839         |tt26584495   |
|Sci-Fi        |The Long Walk                                         |2025        |0.1                |6.8           |75361          |tt10374610   |
|Sci-Fi        |Kalki 2898 AD                                         |2024        |0.3                |7.0           |73449          |tt12735488   |
|Sci-Fi        |Bugonia                                               |2025        |0.8                |7.5           |56118          |tt12300742   |
|Sci-Fi        |Caddo Lake                                            |2024        |0.1                |6.8           |50934          |tt15552142   |
|Sport         |F1: The Movie                                         |2025        |0.7                |7.7           |248997         |tt16311594   |
|Sport         |Arthur the King                                       |2024        |0.0                |7.0           |37251          |tt10720352   |
|Sport         |Lubber Pandhu                                         |2024        |1.1                |8.1           |8519           |tt27007466   |
|Sport         |Gundi: Legend of Love                                 |2024        |1.9                |8.9           |5826           |tt31853193   |
|Sport         |Bison: Kaalamaadan                                    |2025        |0.9                |7.9           |5470           |tt15097358   |
|Sport         |Federer: Twelve Final Days                            |2024        |0.3                |7.3           |4433           |tt31392065   |
|Sport         |Giannis: The Marvelous Journey                        |2024        |1.3                |8.3           |1912           |tt30895834   |
|Sport         |My Sunshine                                           |2024        |0.0                |7.0           |1635           |tt22694908   |
|Sport         |EFC                                                   |2024        |0.6                |7.6           |1257           |tt5930062    |
|Sport         |Nasty                                                 |2024        |0.7                |7.7           |1144           |tt31437303   |
|Talk-Show     |Jim Jefferies: Two Limb Policy                        |2025        |0.2                |6.9           |1557           |tt37649515   |
|Talk-Show     |National Theatre Live: Dear England                   |2024        |1.5                |8.2           |152            |tt29640718   |
|Talk-Show     |(Verifying) Grief 80% // 65+ X59 // Stream 283        |2025        |2.2                |8.9           |8              |tt38792547   |
|Thriller      |Alien: Romulus                                        |2024        |0.6                |7.1           |274237         |tt18412256   |
|Thriller      |Civil War                                             |2024        |0.5                |7.0           |257081         |tt17279496   |
|Thriller      |Conclave                                              |2024        |0.9                |7.4           |226471         |tt20215234   |
|Thriller      |Heretic                                               |2024        |0.5                |7.0           |206222         |tt28015403   |
|Thriller      |Twisters                                              |2024        |0.0                |6.5           |187766         |tt12584954   |
|Thriller      |Mission: Impossible - The Final Reckoning             |2025        |0.7                |7.2           |187688         |tt9603208    |
|Thriller      |Carry-On                                              |2024        |0.0                |6.5           |184288         |tt21382296   |
|Thriller      |28 Years Later                                        |2025        |0.1                |6.6           |164652         |tt10548174   |
|Thriller      |Companion                                             |2025        |0.4                |6.9           |154839         |tt26584495   |
|Thriller      |Final Destination: Bloodlines                         |2025        |0.2                |6.7           |143210         |tt9619824    |
|War           |Warfare                                               |2025        |0.1                |7.2           |93774          |tt31434639   |
|War           |Nr. 24                                                |2024        |0.4                |7.5           |18368          |tt23782584   |
|War           |Sisu: Road to Revenge                                 |2025        |0.2                |7.3           |5060           |tt31844586   |
|War           |Dead to Rights                                        |2025        |0.7                |7.8           |2379           |tt36598036   |
|War           |Sound of Falling                                      |2025        |0.1                |7.2           |1922           |tt28690468   |
|War           |Porcelain War                                         |2024        |0.0                |7.1           |1385           |tt30294282   |
|War           |2000 Meters to Andriivka                              |2025        |1.6                |8.7           |1101           |tt34964205   |
|War           |Amrum                                                 |2025        |0.1                |7.2           |989            |tt22507216   |
|War           |Red Rain                                              |2025        |0.8                |7.9           |853            |tt37997249   |
|War           |Dharmarakshak Mahaveer Chhatrapati Sambhaji Maharaj   |2024        |1.1                |8.2           |694            |tt32166678   |
|Western       |Horizon: An American Saga - Chapter 2                 |2024        |0.1                |7.1           |1604           |tt27665778   |
|Western       |Same Old West                                         |2024        |0.5                |7.5           |617            |tt12636944   |
|Western       |Stolen Time                                           |2025        |0.7                |7.7           |584            |tt14453496   |
|Western       |Bitter Gold                                           |2024        |0.2                |7.2           |118            |tt20358190   |
|Western       |Was Once a Hero                                       |2024        |1.2                |8.2           |86             |tt19715532   |
|Western       |Adiós al amigo                                        |2024        |1.0                |8.0           |85             |tt27856708   |
|Western       |Harsh Treatment                                       |2024        |0.8                |7.8           |61             |tt21625826   |
|Western       |Velvet Hammer                                         |2025        |2.5                |9.5           |50             |tt20863750   |
|Western       |Bad Men Must Bleed                                    |2025        |0.3                |7.3           |47             |tt13594688   |
|Western       |A Gunfighter's Deal                                   |2025        |1.5                |8.5           |46             |tt27450169   |


### high scoring movies with lesser known actors in the past 70 years

1. First look for movies with lessser votes that average, but not too much. so in the second lowest quantile.
2. Find the actors that are present in those movies
3. Find all movies for those actors that have a score higher than 7

