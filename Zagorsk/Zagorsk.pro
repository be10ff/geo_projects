<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Zagorsk" SaveAs="Zagorsk.pro" ID="45">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="Worlds.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Worlds.sqlitedb" />
        <sqlitedb zoom_type="AUTO" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="50rus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/50rus.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="0" max="16" ratio="3" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="topo" type="FOLDER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/topo" />
        <sqlitedb zoom_type="SMART" min="0" max="16" ratio="1" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="310_158_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/310_158_10.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="310_159_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/310_159_10.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="309_158_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/309_158_10.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="309_159_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/309_159_10.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
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
      <Layer name="points.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/points.xml" />
        <sqlitedb zoom_type="AUTO" min="1" max="19" ratio="1" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="4.0" opacity="0.5">
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
        <Editable type="UNSET" active="false" />
      </Layer>
      <Layer name="Zagorsk_Jun_30_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Zagorsk/Zagorsk_Jun_30_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="Zagorsk_Jun_30_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Zagorsk/Zagorsk_Jun_30_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="Zagorsk_Jul_01_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Zagorsk/Zagorsk_Jul_01_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="Zagorsk" />
  <Bounds projection="WGS84" top="56.7885608204457" bottom="56.088305655905586" left="37.40404120601149" right="38.13989226906613" />
  <Markers file="Tulsky.xml" source="layer" />
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