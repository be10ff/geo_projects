<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Krasnoarmeysk" SaveAs="Krasnoarmeysk.pro" ID="42">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="rus50plus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/rus50plus.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="topo" type="FOLDER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/topo" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="5" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="310_159.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/310_159.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="lines.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/lines.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="4.0" opacity="0.5">
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="traffic.yandex" type="ON_LINE" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="points.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/points.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="136" g="136" b="136" a="255" />
          <Color description="fill" name="custom" r="136" g="136" b="136" a="255" />
        </Style>
      </Layer>
      <Layer name="Krasnoarmeysk_Jan_19_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Krasnoarmeysk/Krasnoarmeysk_Jan_19_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="Krasnoarmeysk_Jan_19_poi.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Krasnoarmeysk/Krasnoarmeysk_Jan_19_poi.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="" lineWidth="0.0" opacity="0.0" />
        <Editable type="POI" active="true" />
      </Layer>
    </Group>
  </Map>
  <Description text="Krasnoarmeysk. Gramyachy kluch" />
  <Bounds projection="WGS84" top="56.20366722907872" bottom="55.95727106887871" left="38.174905628640026" right="38.43200120416668" />
  <Markers file="Egoryevsk_track.xml" source="layer" />
  <PointInfo>(
  (define (verbose-info str) if (string-empty? str) "(название неизвестно)" str)
  (define (layer-info layer semantic)
  	(define (record-add str obj) string-append str "\n- " (verbose-info (semantic-string (object-semantic obj semantic))))
  	(string-append (set-aggregate (layer-objects layer) (string-append (layer-name layer) ":") record-add) "\n\n"))
  (define (data-present? void) (set-any? (set "Дороги, площади" "Отдельные здания" "Реки, пруды, озёра") layer-pr</PointInfo>
</Project>