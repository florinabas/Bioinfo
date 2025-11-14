<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.36 (Build 260) (http://www.copasi.org) at 2022-08-04T15:48:14Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="36" versionDevel="260" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_6">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="HXT kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(GLCo-GLCi)/Kglc/(1+(GLCo+GLCi)/Kglc+Ki*GLCo*GLCi/Kglc^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="GLCi" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_392" name="GLCo" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_393" name="Kglc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="Ki" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="Vmax" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="HK kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(GLCi*ATP/(Kglc*Katp)-G6P*ADP/(Kglc*Katp*Keq))/((1+GLCi/Kglc+G6P/Kg6p)*(1+ATP/Katp+ADP/Kadp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_406" name="ADP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_407" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="G6P" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_409" name="GLCi" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="Kadp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="Katp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="Keq" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="Kg6p" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="Kglc" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="Vmax" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="PGI kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(G6P/Kg6p-F6P/(Kg6p*Keq))/(1+G6P/Kg6p+F6P/Kf6p)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_390" name="F6P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_401" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_389" name="Keq" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="Kf6p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="Kg6p" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="Vmax" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="PFK kinetics_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(gR*(F6P/Kf6p)*(ATP/Katp)*(1+F6P/Kf6p+ATP/Katp+gR*F6P/Kf6p*ATP/Katp)/((1+F6P/Kf6p+ATP/Katp+gR*F6P/Kf6p*ATP/Katp)^2+L0*((1+Ciatp*ATP/Kiatp)/(1+ATP/Kiatp))^2*((1+Camp*AMP/Kamp)/(1+AMP/Kamp))^2*((1+Cf26*F26bP/Kf26+Cf16*F16bP/Kf16)/(1+F26bP/Kf26+F16bP/Kf16))^2*(1+Catp*ATP/Katp)^2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_447" name="AMP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_448" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_449" name="Camp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="Catp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_451" name="Cf16" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="Cf26" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="Ciatp" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="F16bP" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_455" name="F26bP" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_456" name="F6P" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_457" name="Kamp" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="Katp" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="Kf16" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="Kf26" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_461" name="Kf6p" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="Kiatp" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="L0" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="Vmax" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="gR" order="18" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="ALD kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(F16bP/Kf16bp-DHAP*GAP/(Kf16bp*Keq))/(1+F16bP/Kf16bp+DHAP/Kdhap+GAP/Kgap+F16bP*GAP/(Kf16bp*Kigap)+DHAP*GAP/(Kdhap*Kgap))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_405" name="DHAP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_441" name="F16bP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_444" name="GAP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_435" name="Kdhap" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="Kf16bp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="Kgap" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="Kigap" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="Vmax" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="GAPDH kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        C*(Vmaxf*GAP*NAD/(Kgap*Knad)-Vmaxr*BPG*NADH/(Kbpg*Knadh))/((1+GAP/Kgap+BPG/Kbpg)*(1+NAD/Knad+NADH/Knadh))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_499" name="BPG" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_500" name="C" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_501" name="GAP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_502" name="Kbpg" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_503" name="Kgap" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_504" name="Knad" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_505" name="Knadh" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="NAD" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_507" name="NADH" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_508" name="Vmaxf" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="Vmaxr" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="PGK kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*((Keq*BPG*ADP-P3G*ATP)/(Kp3g*Katp))/((1+BPG/Kbpg+P3G/Kp3g)*(1+ADP/Kadp+ATP/Katp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_495" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_521" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_522" name="BPG" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_523" name="Kadp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_524" name="Katp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_525" name="Kbpg" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_526" name="Keq" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="Kp3g" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="P3G" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_529" name="Vmax" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="PGM kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(P3G/Kp3g-P2G/(Kp3g*Keq))/(1+P3G/Kp3g+P2G/Kp2g)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_442" name="Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_496" name="Kp2g" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_493" name="Kp3g" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="P2G" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_540" name="P3G" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_541" name="Vmax" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="ENO kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(P2G/Kp2g-PEP/(Kp2g*Keq))/(1+P2G/Kp2g+PEP/Kpep)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_548" name="Keq" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_549" name="Kp2g" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="Kpep" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="P2G" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_552" name="PEP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_553" name="Vmax" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="PYK kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(PEP*ADP/(Kpep*Kadp)-PYR*ATP/(Kpep*Kadp*Keq))/((1+PEP/Kpep+PYR/Kpyr)*(1+ADP/Kadp+ATP/Katp))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_564" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_565" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_566" name="Kadp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="Katp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_568" name="Keq" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_569" name="Kpep" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_570" name="Kpyr" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_571" name="PEP" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_572" name="PYR" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_573" name="Vmax" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="PDC kinetics_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(PYR/Kpyr)^nH/(1+(PYR/Kpyr)^nH)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_388" name="Kpyr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_561" name="PYR" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_563" name="Vmax" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="nH" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="ADH kinetics_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_68">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(EtOH*NAD/(Ketoh*Kinad)-AcAld*NADH/(Ketoh*Kinad*Keq))/(1+NAD/Kinad+EtOH*Knad/(Kinad*Ketoh)+AcAld*Knadh/(Kinadh*Kacald)+NADH/Kinadh+EtOH*NAD/(Kinad*Ketoh)+NAD*AcAld*Knadh/(Kinad*Kinadh*Kacald)+EtOH*NADH*Knad/(Kinad*Kinadh*Ketoh)+AcAld*NADH/(Kacald*Kinadh)+EtOH*NAD*AcAld/(Kinad*Kiacald*Ketoh)+EtOH*AcAld*NADH/(Kietoh*Kinadh*Kacald))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_596" name="AcAld" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_597" name="EtOH" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_598" name="Kacald" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_599" name="Keq" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="Ketoh" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_601" name="Kiacald" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_602" name="Kietoh" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_603" name="Kinad" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_604" name="Kinadh" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="Knad" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_606" name="Knadh" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_607" name="NAD" order="11" role="substrate"/>
        <ParameterDescription key="FunctionParameter_608" name="NADH" order="12" role="product"/>
        <ParameterDescription key="FunctionParameter_609" name="Vmax" order="13" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="G3PDH kinetics_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_69">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax*(DHAP/Kdhap*(NADH/Knadh)-Glycerol/Kdhap*(NAD/Knadh)*(1/Keq))/((1+DHAP/Kdhap+Glycerol/Kglycerol)*(1+NADH/Knadh+NAD/Knad))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_626" name="DHAP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_627" name="Glycerol" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_628" name="Kdhap" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_629" name="Keq" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_630" name="Kglycerol" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_631" name="Knad" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_632" name="Knadh" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_633" name="NAD" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_634" name="NADH" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_635" name="Vmax" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Succinate kinetics_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_70">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*AcAld
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_625" name="AcAld" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_624" name="k" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Yeast glycolysis model of Pritchard and Kell" simulationType="time" timeUnit="mmin" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2022-08-01T16:31:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>From Pritchard and Kell (2002) Eur. J. Biochem. , modified from Teusink et al. 
(2000) Eur J Biochem 267, 5313-5329. This version uses the Vmaxes found by 
the best fit (R1) of Table 1 of the Pritchard and Kell paper, and simulates a decrease of external glucose  concentration from 100 to 2 mM

(More model files at http://users.aber.ac.uk/lep/models.shtml)
</pre>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="GLCo" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="GLCi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="ATP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="G6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="ADP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="F6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="F16bP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="AMP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="F26bP" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="DHAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="GAP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="NAD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="BPG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="NADH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="P3G" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="P2G" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="PEP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PYR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="AcAld" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="CO2" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="EtOH" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Glycerol" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Glycogen" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Trehalose" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Succinate" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24"/>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="HXT" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7152" name="Vmax" value="97.24"/>
          <Constant key="Parameter_7155" name="Kglc" value="1.1918"/>
          <Constant key="Parameter_7153" name="Ki" value="0.91"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Parameter_7155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Parameter_7153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Parameter_7152"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="HK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7156" name="Vmax" value="236.7"/>
          <Constant key="Parameter_4611" name="Kglc" value="0.08"/>
          <Constant key="Parameter_4612" name="Katp" value="0.15"/>
          <Constant key="Parameter_4610" name="Keq" value="2000"/>
          <Constant key="Parameter_8419" name="Kg6p" value="30"/>
          <Constant key="Parameter_8416" name="Kadp" value="0.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_8416"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Parameter_4612"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_4610"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Parameter_8419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Parameter_4611"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Parameter_7156"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="PGI" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4613" name="Vmax" value="1056"/>
          <Constant key="Parameter_4614" name="Kg6p" value="1.4"/>
          <Constant key="Parameter_4608" name="Keq" value="0.29"/>
          <Constant key="Parameter_4609" name="Kf6p" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Parameter_4608"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Parameter_4609"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Parameter_4614"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Parameter_4613"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="PFK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_8420" name="Vmax" value="110"/>
          <Constant key="Parameter_8418" name="gR" value="5.12"/>
          <Constant key="Parameter_7528" name="Kf6p" value="0.1"/>
          <Constant key="Parameter_7527" name="Katp" value="0.71"/>
          <Constant key="Parameter_5282" name="L0" value="0.66"/>
          <Constant key="Parameter_7526" name="Ciatp" value="100"/>
          <Constant key="Parameter_7524" name="Kiatp" value="0.65"/>
          <Constant key="Parameter_5285" name="Camp" value="0.0845"/>
          <Constant key="Parameter_5284" name="Kamp" value="0.0995"/>
          <Constant key="Parameter_8417" name="Cf26" value="0.0174"/>
          <Constant key="Parameter_5283" name="Kf26" value="0.000682"/>
          <Constant key="Parameter_5281" name="Cf16" value="0.397"/>
          <Constant key="Parameter_5496" name="Kf16" value="0.111"/>
          <Constant key="Parameter_5494" name="Catp" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Parameter_5285"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Parameter_5494"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Parameter_5281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Parameter_8417"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Parameter_7526"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Parameter_5284"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Parameter_7527"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Parameter_5496"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Parameter_5283"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Parameter_7528"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Parameter_7524"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Parameter_5282"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Parameter_8420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Parameter_8418"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="ALD" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5289" name="Vmax" value="94.69"/>
          <Constant key="Parameter_5091" name="Kf16bp" value="0.3"/>
          <Constant key="Parameter_5288" name="Keq" value="0.069"/>
          <Constant key="Parameter_8514" name="Kdhap" value="2"/>
          <Constant key="Parameter_8511" name="Kgap" value="2.4"/>
          <Constant key="Parameter_5493" name="Kigap" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Parameter_8514"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Parameter_5288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Parameter_5091"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Parameter_8511"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Parameter_5493"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Parameter_5289"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="TPI" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7525" name="k1" value="450000"/>
          <Constant key="Parameter_5295" name="k2" value="1e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_7525"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="GAPDH" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8066" name="C" value="1"/>
          <Constant key="Parameter_5286" name="Vmaxf" value="1152"/>
          <Constant key="Parameter_8069" name="Kgap" value="0.21"/>
          <Constant key="Parameter_5291" name="Knad" value="0.09"/>
          <Constant key="Parameter_5495" name="Vmaxr" value="6719"/>
          <Constant key="Parameter_5294" name="Kbpg" value="0.0098"/>
          <Constant key="Parameter_5292" name="Knadh" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Parameter_8066"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Parameter_5294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Parameter_8069"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Parameter_5291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Parameter_5292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Parameter_5286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Parameter_5495"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="PGK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5293" name="Vmax" value="1288"/>
          <Constant key="Parameter_5492" name="Keq" value="3200"/>
          <Constant key="Parameter_8513" name="Kp3g" value="0.53"/>
          <Constant key="Parameter_5290" name="Katp" value="0.3"/>
          <Constant key="Parameter_5287" name="Kbpg" value="0.003"/>
          <Constant key="Parameter_8357" name="Kadp" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Parameter_8357"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Parameter_5290"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Parameter_5287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Parameter_5492"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Parameter_8513"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Parameter_5293"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="PGM" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5094" name="Vmax" value="2585"/>
          <Constant key="Parameter_8512" name="Kp3g" value="1.2"/>
          <Constant key="Parameter_8225" name="Keq" value="0.19"/>
          <Constant key="Parameter_8356" name="Kp2g" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Parameter_8225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Parameter_8356"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Parameter_8512"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_5094"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="ENO" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8223" name="Vmax" value="201.6"/>
          <Constant key="Parameter_8222" name="Kp2g" value="0.04"/>
          <Constant key="Parameter_8360" name="Keq" value="6.7"/>
          <Constant key="Parameter_8358" name="Kpep" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Parameter_8360"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Parameter_8222"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Parameter_8358"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_8223"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="PYK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8515" name="Vmax" value="1000"/>
          <Constant key="Parameter_8359" name="Kpep" value="0.14"/>
          <Constant key="Parameter_8224" name="Kadp" value="0.53"/>
          <Constant key="Parameter_8068" name="Keq" value="6500"/>
          <Constant key="Parameter_8070" name="Kpyr" value="21"/>
          <Constant key="Parameter_8221" name="Katp" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Parameter_8224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Parameter_8221"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Parameter_8068"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Parameter_8359"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Parameter_8070"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Parameter_8515"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="PDC" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_8067" name="Vmax" value="857.8"/>
          <Constant key="Parameter_5093" name="Kpyr" value="4.33"/>
          <Constant key="Parameter_4848" name="nH" value="1.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Parameter_5093"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Parameter_8067"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_4848"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="ADH" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4845" name="Vmax" value="209.5"/>
          <Constant key="Parameter_5095" name="Ketoh" value="17"/>
          <Constant key="Parameter_5092" name="Kinad" value="0.92"/>
          <Constant key="Parameter_4846" name="Keq" value="6.9e-05"/>
          <Constant key="Parameter_5668" name="Knad" value="0.17"/>
          <Constant key="Parameter_5665" name="Knadh" value="0.11"/>
          <Constant key="Parameter_4849" name="Kinadh" value="0.031"/>
          <Constant key="Parameter_4847" name="Kacald" value="1.11"/>
          <Constant key="Parameter_5669" name="Kiacald" value="1.1"/>
          <Constant key="Parameter_5666" name="Kietoh" value="90"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Parameter_4847"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="Parameter_4846"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Parameter_5095"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Parameter_5669"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Parameter_5666"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="Parameter_5092"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="Parameter_4849"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="Parameter_5668"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Parameter_5665"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Parameter_4845"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="ATPase" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5667" name="k1" value="39.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5667"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="AK" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5725" name="k1" value="45"/>
          <Constant key="Parameter_5722" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_5725"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_4"/>
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_5722"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_2"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="G3PDH" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5726" name="Vmax" value="47.11"/>
          <Constant key="Parameter_5724" name="Kdhap" value="0.4"/>
          <Constant key="Parameter_5723" name="Knadh" value="0.023"/>
          <Constant key="Parameter_7322" name="Keq" value="4300"/>
          <Constant key="Parameter_7319" name="Kglycerol" value="1"/>
          <Constant key="Parameter_7323" name="Knad" value="0.93"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Parameter_5724"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Parameter_7322"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Parameter_7319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="Parameter_7323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Parameter_5723"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="Parameter_5726"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Glycogen Branch" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7321" name="v" value="6"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_7321"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Trehalose Branch" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7320" name="v" value="2.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_7320"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Succinate Branch" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18"/>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
          <Product metabolite="Metabolite_13" stoichiometry="3"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_6143" name="k" value="21.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Parameter_6143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[GLCo]" value="1.204428152e+21" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[GLCi]" value="5.8807548099884302e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[ATP]" value="1.5206673031128073e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[G6P]" value="1.6109468264427243e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[ADP]" value="7.7203102717063332e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[F6P]" value="3.7636958857947932e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[F16bP]" value="3.7465669334010204e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[AMP]" value="1.7637938131655413e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[F26bP]" value="1.204428152e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[DHAP]" value="6.0471479945693587e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[GAP]" value="2.7208584532125422e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[NAD]" value="9.053025801879109e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[BPG]" value="4.4375559385044966e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[NADH]" value="5.2217800652092285e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[P3G]" value="5.3337410475265484e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[P2G]" value="7.6900218676555317e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[PEP]" value="3.8081136266956866e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[PYR]" value="1.0932067470215741e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[AcAld]" value="1.0727876469286763e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[CO2]" value="6.0221407600000002e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[EtOH]" value="3.0110703800000002e+22" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[Glycerol]" value="9.0332111399999996e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[Glycogen]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[Trehalose]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Compartments[compartment],Vector=Metabolites[Succinate]" value="0" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HXT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HXT],ParameterGroup=Parameters,Parameter=Vmax" value="97.239999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HXT],ParameterGroup=Parameters,Parameter=Kglc" value="1.1918" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HXT],ParameterGroup=Parameters,Parameter=Ki" value="0.91000000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Vmax" value="236.69999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Kglc" value="0.080000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Katp" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Keq" value="2000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Kg6p" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[HK],ParameterGroup=Parameters,Parameter=Kadp" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vmax" value="1056" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Kg6p" value="1.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Keq" value="0.28999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Kf6p" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Vmax" value="110" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=gR" value="5.1200000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Kf6p" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Katp" value="0.70999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=L0" value="0.66000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Ciatp" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Kiatp" value="0.65000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Camp" value="0.084500000000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Kamp" value="0.099500000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Cf26" value="0.017399999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Kf26" value="0.00068199999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Cf16" value="0.39700000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Kf16" value="0.111" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Catp" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ALD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ALD],ParameterGroup=Parameters,Parameter=Vmax" value="94.689999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ALD],ParameterGroup=Parameters,Parameter=Kf16bp" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ALD],ParameterGroup=Parameters,Parameter=Keq" value="0.069000000000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ALD],ParameterGroup=Parameters,Parameter=Kdhap" value="2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ALD],ParameterGroup=Parameters,Parameter=Kgap" value="2.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ALD],ParameterGroup=Parameters,Parameter=Kigap" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[TPI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=k1" value="450000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[TPI],ParameterGroup=Parameters,Parameter=k2" value="10000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=C" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Vmaxf" value="1152" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Kgap" value="0.20999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Knad" value="0.089999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Vmaxr" value="6719" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Kbpg" value="0.0097999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Knadh" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Vmax" value="1288" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Keq" value="3200" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Kp3g" value="0.53000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Katp" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Kbpg" value="0.0030000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGK],ParameterGroup=Parameters,Parameter=Kadp" value="0.20000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGM]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGM],ParameterGroup=Parameters,Parameter=Vmax" value="2585" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGM],ParameterGroup=Parameters,Parameter=Kp3g" value="1.2" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGM],ParameterGroup=Parameters,Parameter=Keq" value="0.19" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PGM],ParameterGroup=Parameters,Parameter=Kp2g" value="0.080000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ENO]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vmax" value="201.59999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Kp2g" value="0.040000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Keq" value="6.7000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Kpep" value="0.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Vmax" value="1000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Kpep" value="0.14000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Kadp" value="0.53000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Keq" value="6500" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Kpyr" value="21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Katp" value="1.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PDC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PDC],ParameterGroup=Parameters,Parameter=Vmax" value="857.79999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PDC],ParameterGroup=Parameters,Parameter=Kpyr" value="4.3300000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[PDC],ParameterGroup=Parameters,Parameter=nH" value="1.8999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Vmax" value="209.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Ketoh" value="17" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Kinad" value="0.92000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Keq" value="6.8999999999999997e-05" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Knad" value="0.17000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Knadh" value="0.11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Kinadh" value="0.031" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Kacald" value="1.1100000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Kiacald" value="1.1000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ADH],ParameterGroup=Parameters,Parameter=Kietoh" value="90" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ATPase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[ATPase],ParameterGroup=Parameters,Parameter=k1" value="39.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[AK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[AK],ParameterGroup=Parameters,Parameter=k1" value="45" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[AK],ParameterGroup=Parameters,Parameter=k2" value="100" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[G3PDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[G3PDH],ParameterGroup=Parameters,Parameter=Vmax" value="47.109999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[G3PDH],ParameterGroup=Parameters,Parameter=Kdhap" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[G3PDH],ParameterGroup=Parameters,Parameter=Knadh" value="0.023" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[G3PDH],ParameterGroup=Parameters,Parameter=Keq" value="4300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[G3PDH],ParameterGroup=Parameters,Parameter=Kglycerol" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[G3PDH],ParameterGroup=Parameters,Parameter=Knad" value="0.93000000000000005" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Glycogen Branch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Glycogen Branch],ParameterGroup=Parameters,Parameter=v" value="6" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Trehalose Branch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Trehalose Branch],ParameterGroup=Parameters,Parameter=v" value="2.3999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Succinate Branch]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast glycolysis model of Pritchard and Kell,Vector=Reactions[Succinate Branch],ParameterGroup=Parameters,Parameter=k" value="21.399999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 9.053025801879109e+20 7.7203102717063332e+20 1.6109468264427243e+21 1.0727876469286763e+20 6.0471479945693587e+20 2.7208584532125422e+19 7.6900218676555317e+19 3.7636958857947932e+20 5.8807548099884302e+19 1.0932067470215741e+21 4.4375559385044966e+17 3.8081136266956866e+19 3.7465669334010204e+21 5.3337410475265484e+20 1.5206673031128073e+21 5.2217800652092285e+19 1.7637938131655413e+20 1.204428152e+21 1.204428152e+19 6.0221407600000002e+20 3.0110703800000002e+22 9.0332111399999996e+19 0 0 0 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_12" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_10" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_9" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_4" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_2" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_9" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="YeastGlycolysis.xml">
    <SBMLMap SBMLid="ADH" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="ADP" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="AK" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="ALD" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="AMP" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="ATP" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="ATPase" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="AcAld" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="BPG" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="CO2" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="DHAP" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="ENO" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="EtOH" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="F16bP" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="F26bP" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="F6P" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="G3PDH" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="GAP" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="GAPDH" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="GLCi" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="GLCo" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Glycerol" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Glycogen" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Glycogen_Branch" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="HK" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="HXT" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="NAD" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="NADH" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="P2G" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="P3G" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="PDC" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="PEP" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="PFK" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="PGI" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="PGK" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="PGM" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="PYK" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="PYR" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Succinate" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Succinate_Branch" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="TPI" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Trehalose" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Trehalose_Branch" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="compartment" COPASIkey="Compartment_0"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_65" name="minute" symbol="min">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        60*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
