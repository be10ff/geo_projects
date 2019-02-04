<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Zapad" SaveAs="Zapad.pro" ID="42">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="rus50plus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/rus50plus.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="5" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="topo" type="FOLDER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/topo" />
        <sqlitedb zoom_type="SMART" min="1" max="21" ratio="5" />
        <Range from="233014197" to="222" />
      </Layer>
      <Layer name="307_159.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/307_159.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="20" ratio="1" />
        <Range from="233014197" to="444" />
      </Layer>
      <Layer name="lines.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/lines.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="4.0" opacity="0.5">
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="points.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/points.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="136" g="136" b="136" a="255" />
          <Color description="fill" name="custom" r="136" g="136" b="136" a="255" />
        </Style>
        <Editable type="POI" active="true" />
      </Layer>
      <Layer name="traffic.yandex" type="ON_LINE" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="307_160.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/307_160.sqlitedb" />
        <sqlitedb zoom_type="AUTO" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="Zapad_Feb_02_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Zapad/Zapad_Feb_02_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="zapad.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/West/zapad.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="3.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="255" a="255" />
          <Color description="fill" name="custom" r="239" g="0" b="251" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="Zapad" />
  <Bounds projection="WGS84" top="56.141199325287985" bottom="55.93246111005589" left="36.19968897507294" right="36.418184354277386" />
  <Markers file="zapad.xml" source="layer" />
  <PointInfo>(
  (define (verbose-info str) if (string-empty? str) "(название неизвестно)" str)
  (define (layer-info layer semantic)
  	(define (record-add str obj) string-append str "\n- " (verbose-info (semantic-string (object-semantic obj semantic))))
  	(string-append (set-aggregate (layer-objects layer) (string-append (layer-name layer) ":") record-add) "\n\n"))
  (define (data-present? void) (set-any? (set "Дороги, площади" "Отдельные здания" "Реки, пруды, озёра") layer-pr</PointInfo>
</Project>