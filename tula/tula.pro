<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Tula" SaveAs="tula.pro" ID="43">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="World.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/World.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="50rus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/50rus.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="16" ratio="3" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="traffic.yandex" type="ON_LINE" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="lines.xml" type="XML" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/lines.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="4.0" opacity="0.5">
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="points.xml" type="XML" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/lines.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="4.0" opacity="0.5">
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="Tulsky.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Tulsky.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="136" g="136" b="136" a="255" />
          <Color description="fill" name="custom" r="136" g="136" b="136" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="lg" />
  <Bounds projection="WGS84" top="55.71212398890341" bottom="53.62749073888109" left="36.03012707164002" right="38.127922181403726" />
  <Edit>
    <LayerRef name="points.xml" type="POINT" />
    <LayerRef name="lines.xml" type="LINE" />
    <LayerRef name="Полигоны" type="POLYGON" />
    <LayerRef name="треки xml" type="TRACK" />
    <LayerRef name="poi" type="POINT" />
  </Edit>
  <Markers file="Tulsky.xml" source="layer" />
  <PointInfo>(
(define (verbose-info str) if (string-empty? str) "(название неизвестно)" str)
(define (layer-info layer semantic) 
	(define (record-add str obj) string-append str "\n- " (verbose-info (semantic-string (object-semantic obj semantic)))) 
	(string-append (set-aggregate (layer-objects layer) (string-append (layer-name layer) ":") record-add) "\n\n"))
(define (data-present? void) (set-any? (set "Дороги, площади" "Отдельные здания" "Реки, пруды, озёра") layer-present?))
(define (data-build void) string-append
	(if (layer-present? "Отдельные здания") (layer-info (layer-named "Отдельные здания") "Address") "")
	(if (layer-present? "Дороги, площади") (layer-info (layer-named "Дороги, площади") "NAM_STR") "")
	(if (layer-present? "Реки, пруды, озёра") (layer-info (layer-named "Реки, пруды, озёра") "NAME_WAT") "")) 

bubble-pin (location-&gt;string request-location) (if (data-present? nil) (data-build nil) "Объектов не найдено")
	)</PointInfo>
</Project>