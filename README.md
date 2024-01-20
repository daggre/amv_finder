## AMV Finder
This RedM tool supplies a simple command to print the nearest AMV zones from the player's position.

Printed output provides:
- Name of the amv zone file
- Index of the item in the amv zone file
- Distance from the amv zone position
- Position of the amv zone (exact position format in file)
- Shows if the zone is interior, exterior or both

## Command:
First parameter is the number of nearest zones to output (Maximum: 10).
```
/amvfind <number>
```

## Example Command/Output:
```
/amvfind

amv_zone_69.ymt item=20 dist=3.46 <position x="-2592.165" y="436.7699" z="149.4071" /> exterior 
```
```
/amvfind 5

1: amv_zone_69.ymt item=20 dist=3.46 <position x="-2592.165" y="436.7699" z="149.4071" /> exterior 
2: amv_zone_69.ymt item=21 dist=17.58 <position x="-2594.175" y="457.2464" z="148.4071" /> exterior 
3: amv_zone_69.ymt item=12 dist=17.67 <position x="-2594.382" y="457.321" z="148.322" /> interior
4: amv_zone_69.ymt item=11 dist=17.75 <position x="-2590.937" y="457.295" z="147.114" /> exterior/interior
5: amv_zone_69.ymt item=10 dist=19.22 <position x="-2597.606" y="458.3814" z="147.114" /> exterior/interior
```
```
/amvfind 999

1: amv_zone_69.ymt item=20 dist=3.46 <position x="-2592.165" y="436.7699" z="149.4071" /> exterior 
2: amv_zone_69.ymt item=21 dist=17.58 <position x="-2594.175" y="457.2464" z="148.4071" /> exterior 
3: amv_zone_69.ymt item=12 dist=17.67 <position x="-2594.382" y="457.321" z="148.322" /> interior
4: amv_zone_69.ymt item=11 dist=17.75 <position x="-2590.937" y="457.295" z="147.114" /> exterior/interior
5: amv_zone_69.ymt item=10 dist=19.22 <position x="-2597.606" y="458.3814" z="147.114" /> exterior/interior
6: amv_zone_69.ymt item=33 dist=23.95 <position x="-2588.133" y="416.6089" z="151.7415" /> interior
7: amv_zone_69.ymt item=23 dist=26.59 <position x="-2608.497" y="459.2221" z="157.3839" /> exterior 
8: amv_zone_69.ymt item=35 dist=26.93 <position x="-2589.873" y="412.9948" z="148.9415" /> exterior/interior
9: amv_zone_69.ymt item=36 dist=28.12 <position x="-2590.835" y="411.9623" z="151.8239" /> exterior 
10: amv_zone_69.ymt item=37 dist=28.28 <position x="-2597.108" y="411.7239" z="148.9026" /> exterior/interior
```
