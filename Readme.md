# Inverter analysis with sky130 pdk
Brief analysis os MOS transfer characteristic and Inverter characteristics.
|nmos| ![nfet_01_v8](https://imgur.com/fH1NI8Is.png) |
|--|--|
|pmos | ![pfet_01_v8](https://imgur.com/1tG3RNvs.png) |

## Circuits
**nMOS**</br>
![nmos circuit diagram](https://imgur.com/EnDXLCs.png)</br>
**pMOS**</br>
![pmos circuit diagram](https://imgur.com/Iwy6rux.png)</br>
### Analysis

DC analysis of both MOS transistors.

>DC sweep of vds</br>
>Vds varies from 0 to 1.8 step of 1m </br>
>Vgs varies from 0 to 2 step of 0.5 

### DC Tranfer charateristics of MOS transistors
**nmos**</br>
![nmos dc VTC](https://imgur.com/YUxFrlK.png)</br>
**pmos**</br>
![pmos dc VTC](https://imgur.com/x9CD1Qv.png)</br>

>DC sweep of vgs</br>
>Vgs varies from 0 to 1.8 step of 1m </br>
>Vds varies from 0 to 2 step of 0.3</br>

**nmos**</br>
![](https://imgur.com/Nb0RUJY.png)</br>
**pmos**</br>
![](https://imgur.com/yXyPx17.png)<br>

## Gm of MOS
**nmos**
Vds sweep</br>
![](https://imgur.com/BDXNgoQ.png)</br>
Vgs sweep</br>
![](https://imgur.com/MAne8TM.png)</br>
**pmos**
Vds sweep</br>
![](https://imgur.com/e4rLkN6.png)</br>
Vgs sweep</br>
![](https://imgur.com/QDlHf5G.png)</br>

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
circuit diagram </br>
![](https://imgur.com/eapaFEU.png)</br>

Test bench</br>
![](https://imgur.com/yv5AVBx.png)</br>
## DC analysis of inverter
DC characteristic curve</br>
![](https://imgur.com/NsSF7mv.png)</br>

Noise Margin analysis of inverter
---
![](https://imgur.com/W3uvMQj.png)</br>

|Parameters|values|
|:---:|:---:|
|VTH|  0.86V|
|VOH|1.75V|
|VOL|0.067V|
|VIL|0.74V|
|VIH|0.98V|

![](https://imgur.com/iLmdeZ9.png)</br>


>NML = VIL - VOL<br />
>NMH = VOH - VIH

|Noise Margin|value|
|:----:|:----:|
|Low Noise Margin|0.673V|
|High Noise Margin|0.77V|
|Difference|0.097V|

## Power Analysis
![](https://imgur.com/nF1j5Me.png)</br>
|||
|:---:|:---:|
|Time interval|10n|
|Supply voltage|1.8V|
|Integration of current|-0.54pA|
|Power consumption|-0.973pW|
|AVG power|-97.3uW|
|Dissipated power|5.24uW|
|Dynamic Power|0.0972pW|




