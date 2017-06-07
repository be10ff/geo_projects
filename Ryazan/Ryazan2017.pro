<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Ryazan2017" SaveAs="Ryazan2017.pro" ID="42">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="World.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/World.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="50rus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/50rus.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="24" ratio="3" />
        <Range from="466028394" to="55" />
      </Layer>
      <Layer name="topo" type="FOLDER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/topo" />
        <sqlitedb zoom_type="smart" min="0" max="16" ratio="1" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="312_162_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="text" name="313_162_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="18" ratio="1" />
        <Range from="5000000" to="2000" />
      </Layer>
      <Layer name="313_162_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="text" name="312_162_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="18" ratio="1" />
        <Range from="5000000" to="2000" />
      </Layer>
      <Layer name="312_163_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="text" name="313_163_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="18" ratio="1" />
        <Range from="5000000" to="2000" />
      </Layer>
      <Layer name="313_163_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="text" name="312_163_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="18" ratio="1" />
        <Range from="5000000" to="2000" />
      </Layer>
      <Layer name="313_164_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="text" name="312_163_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="18" ratio="1" />
        <Range from="5000000" to="2000" />
      </Layer>
      <Layer name="314_162_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/314_162_10.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="314_163_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/314_163_10.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="traffic.yandex" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="poi" type="XML" enabled="false">
        <Source location="local" name="Рязань_Точки.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="0" g="0" b="255" a="255" />
          <Color description="fill" name="custom" r="0" g="0" b="255" a="255" />
        </Style>
      </Layer>
      <Layer name="Рязань_Треки_2015.xml" type="XML" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/Рязань_Треки_2015.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="20" g="130" b="176" a="255" />
          <Color description="fill" name="custom" r="33" g="186" b="228" a="255" />
        </Style>
      </Layer>
      <Layer name="Рязань_Треки_2016.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Рязань_Треки_2016.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="246" g="3" b="3" a="255" />
          <Color description="fill" name="custom" r="238" g="14" b="14" a="255" />
        </Style>
      </Layer>
      <Layer name="Рязань_Треки_2016_plus1.xml" type="XML" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/Рязань_Треки_2016_plus1.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="1" g="14" b="251" a="255" />
          <Color description="fill" name="custom" r="8" g="23" b="249" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="Рязань2017" />
  <Bounds projection="WGS84" top="54.65417490173881" bottom="54.47012868133074" left="40.99950895604228" right="41.183235625111166" />
  <Edit>
    <LayerRef name="points.xml" type="POINT" />
    <LayerRef name="lines.xml" type="LINE" />
    <LayerRef name="Полигоны" type="POLYGON" />
    <LayerRef name="треки xml" type="TRACK" />
    <LayerRef name="poi" type="POINT" />
  </Edit>
  <Markers file="Рязань_Треки_2016.xml" source="layer" />
  <PointInfo>(
(define (verbose-info str) if (string-empty? str) "(название неизвестно)" str)
(define (layer-info layer semantic) 
	(define (record-add str obj) string-append str "\n- " (verbose-info (semantic-string (object-semantic obj semantic)))) 
	(string-append (set-aggregate (layer-objects layer) (string-append (layer-name layer) ":") record-add) "\n\n"))
(define (data-present? void) (set-any? (set "Дороги, площади" "Отдельные здания" "Реки, пруды, озёра") layer-present?))
(define (data-build void) string-append
	(if (layer-present? "Отдельные здания") (layer-info (layer-named "Отдельные здания") "Address") "")
	(if (layer-present? "Дороги, площади") (layer-info (layer-named "Дороги, площади") "NAM_STR") "</PointInfo>
</Project>