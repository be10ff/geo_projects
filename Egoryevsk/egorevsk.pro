<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Egorevsk" SaveAs="egorevsk.pro" ID="42">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="50rus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/50rus.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="16" ratio="3" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="topo" type="FOLDER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/topo" />
        <sqlitedb zoom_type="smart" min="0" max="16" ratio="1" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="Voskresensky rayon.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/Voskresensky rayon.sqlitedb" />
        <sqlitedb zoom_type="smart" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="voskresensk_15_16.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="smart" name="/storage/emulated/0/voskresensk_15_16.sqlitedb" />
        <sqlitedb zoom_type="adaptive" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="311_161_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/311_161_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="310_161_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/310_161_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="Fosfotitny13_18.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/Fosfotitny13_18.sqlitedb" />
        <sqlitedb zoom_type="smart" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
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
      <Layer name="traffic.yandex" type="ON_LINE" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="Egorevsk_Jul_13_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Egorevsk/Egorevsk_Jul_13_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="Egoryevsk_track.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Egorevsk/Egoryevsk_track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="136" g="136" b="136" a="255" />
          <Color description="fill" name="custom" r="136" g="136" b="136" a="255" />
        </Style>
      </Layer>
        <Layer name="Egorevsk_Jul_15_track.xml" type="XML" enabled="true">
          <Source location="absolute" name="/storage/emulated/0/Egorevsk/Egorevsk_Jul_15_track.xml" />
          <Range from="NAN" to="NAN" />
          <Style type="vector" lineWidth="2.0" opacity="1.0">
            <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
            <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
          </Style>
        </Layer>
    </Group>
  </Map>
  <Description text="Egorevsk" />
  <Bounds projection="WGS84" top="55.48155116767726" bottom="55.26914794190869" left="38.916891514800334" right="39.13433903742441" />
  <Edit>
    <LayerRef name="points.xml" type="POINT" />
    <LayerRef name="lines.xml" type="LINE" />
    <LayerRef name="Полигоны" type="POLYGON" />
    <LayerRef name="треки xml" type="TRACK" />
    <LayerRef name="poi" type="POINT" />
  </Edit>
  <Markers file="Egoryevsk_track.xml" source="layer" />
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
