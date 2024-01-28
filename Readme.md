# Inverter analysis with sky130 pdk
Brief analysis os MOS transfer characteristic and Inverter characteristics.
|nmos| ![nfet_01_v8](https://imgur.com/fH1NI8Is.png) |
|--|--|
|pmos | ![pfet_01_v8](https://imgur.com/1tG3RNvs.png) |

## Circuits
**nMOS**
![nmos circuit diagram](https://imgur.com/EnDXLCs.png)
**pMOS**
![pmos circuit diagram](https://imgur.com/Iwy6rux.png)
### Analysis

DC analysis of both MOS transistors.

>DC sweep of vds
>Vds varies from 0 to 1.8 step of 1m 
>Vgs varies from 0 to 2 step of 0.5 

### DC Tranfer charateristics of MOS transistors
**nmos**
![nmos dc VTC](https://imgur.com/YUxFrlK.png)
**pmos**
![pmos dc VTC](https://imgur.com/x9CD1Qv.png)
>DC sweep of vgs
>Vgs varies from 0 to 1.8 step of 1m 
>Vds varies from 0 to 2 step of 0.3

**nmos**
![](https://imgur.com/Nb0RUJY.png)**pmos**
![](https://imgur.com/yXyPx17.png)
## Gm of MOS
**nmos**
Vds sweep
![](https://imgur.com/BDXNgoQ.png)
Vgs sweep
![](https://imgur.com/MAne8TM.png)
**pmos**
Vds sweep
![](https://imgur.com/e4rLkN6.png)
Vgs sweep
![](https://imgur.com/QDlHf5G.png)
|parameters|at|values|sweep|
|----|----|---|---|
|ids|1.8|5.215487e-04|Vgs|
|||6.068596e-04|Vds|
|gm_val|1.8|5.394031e-04|Vgs|
|||5.556977e-05|Vds|
|rds_val|1.8| 1.799539e+04|Vds|

```
meas ids dc find curr at=1.8
meas gm_val dc find gm at=1.8
meas rds_val dc find rds at=1.8
```
## Inverter analysis
circuit diagram
![](https://imgur.com/eapaFEU.png)

Test bench
![](https://imgur.com/yv5AVBx.png)
## DC analysis of inverter
DC characteristic curve
![](https://imgur.com/NsSF7mv.png)

Noise Margin analysis of inverter
---
![](https://imgur.com/W3uvMQj.png)

|name|values|
|---|---|
|VTH|  0.8637|
|VOH|1.80|
|VOL|5.879296e-06 ~ 0|
|VIL|0.7435556
|VIH|0.9804444|

![](https://imgur.com/iLmdeZ9.png)


