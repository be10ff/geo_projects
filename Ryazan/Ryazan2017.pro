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
      <Layer name="topo" type="FOLDER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/topo" />
        <sqlitedb zoom_type="smart" min="0" max="16" ratio="1" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="traffic.yandex" type="ON_LINE" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
        <Layer name="312_162_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
          <Source location="text" name="313_162_10.sqlitedb" />
          <sqlitedb zoom_type="smart" min="0" max="18" />
          <Range from="5000000" to="2000" />
        </Layer>
        <Layer name="313_162_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
          <Source location="text" name="312_162_10.sqlitedb" />
          <sqlitedb zoom_type="smart" min="0" max="18" />
          <Range from="5000000" to="2000" />
        </Layer>
        <Layer name="312_163_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
          <Source location="text" name="313_163_10.sqlitedb" />
          <sqlitedb zoom_type="smart" min="0" max="18" />
          <Range from="5000000" to="2000" />
        </Layer>
        <Layer name="313_163_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
          <Source location="text" name="312_163_10.sqlitedb" />
          <sqlitedb zoom_type="smart" min="0" max="18" />
          <Range from="5000000" to="2000" />
        </Layer>
        <Layer name="313_164_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
          <Source location="text" name="312_163_10.sqlitedb" />
          <sqlitedb zoom_type="smart" min="0" max="18" />
          <Range from="5000000" to="2000" />
        </Layer>

          <Layer name="pn4x4 birthday_Sep_09_track.xml" type="XML" enabled="false">
            <Source location="absolute" name="/storage/emulated/0/Razan06_10_20_03.track" />
            <Range from="NAN" to="NAN" />
            <Style type="vector" lineWidth="2.0" opacity="1.0">
              <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
              <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
            </Style>
          </Layer>
            <Layer name="pn4x4 birthday_Sep_09_track.xml" type="XML" enabled="false">
              <Source location="absolute" name="/storage/emulated/0/Razan06_10_20_03.track" />
              <Range from="NAN" to="NAN" />
              <Style type="vector" lineWidth="2.0" opacity="1.0">
                <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
                <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
              </Style>
            </Layer>

      <Layer name="треки xml" type="XML" enabled="false">
        <Source location="local" name="Рязянь_Треки.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="red" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="red" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="poi" type="XML" enabled="true">
        <Source location="local" name="Рязань_Точки.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="blue" r="0" g="0" b="255" a="255" />
          <Color description="fill" name="blue" r="0" g="0" b="255" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="Рязань2017" />
  <Bounds projection="WGS84" top="62.237017070467125" bottom="61.048174553753924" left="32.054540489626255" right="33.51768431908301" />
  <Edit>
    <LayerRef name="points.xml" type="POINT" />
    <LayerRef name="lines.xml" type="LINE" />
    <LayerRef name="Полигоны" type="POLYGON" />
    <LayerRef name="треки xml" type="TRACK" />
    <LayerRef name="poi" type="POINT" />
  </Edit>
  <Markers file="points.xml" source="layer" />
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
