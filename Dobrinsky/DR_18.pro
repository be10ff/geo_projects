<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Dobrinsky" SaveAs="Dobrinsky.pro" ID="43">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="50rus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/50rus.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="0" max="16" ratio="3" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="308_161_10_2016.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/308_161_10_2016.sqlitedb" />
        <sqlitedb zoom_type="AUTO" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="topo" type="FOLDER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/topo" />
        <sqlitedb zoom_type="SMART" min="0" max="16" ratio="1" />
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
      <Layer name="points.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/points.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="4.0" opacity="0.5">
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="Dobrinsky_Apr_14_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Dobrinsky/Dobrinsky_Apr_14_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="pn4x4 birthday_Sep_09_track.xml" type="XML" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/pn4x4 birthday_Sep_09_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="255" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="255" a="255" />
        </Style>
      </Layer>
      <Layer name="pn4x4 birthday_Sep_10_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/pn4x4 birthday_Sep_10_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="255" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="255" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="Dobrinsky Labirinth" />
  <Bounds projection="WGS84" top="55.240243152473916" bottom="55.18496884501271" left="36.76656791693206" right="36.82257629037386" />
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