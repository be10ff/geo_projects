<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Nara" SaveAs="Nara.pro" ID="42">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="World.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/World.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="50rus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/50rus.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="16" ratio="3" />
        <Range from="466028394" to="1777" />
      </Layer>

      <Layer name="308_161_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/308_161_10.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="307_160_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/307_160_10.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="traffic.yandex" type="ON_LINE" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
    </Group>
  </Map>
  <Description text="lg" />
  <Bounds projection="WGS84" top="56.201280578248046" bottom="55.46450308925668" left="36.155971948025545" right="36.922316215435856" />
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
	(if (layer-present? "Дороги, площади") (layer-info (layer-named "Дороги, площади") "NAM_STR") "