<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Egorevsk" SaveAs="egor_evsk.pro" ID="42">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="50rus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/50rus.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="16" ratio="3" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="311_161_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/311_161_10.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="310_161_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/310_161_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="Fosfotitny13_18.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
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
      <Layer name="points.xml" type="XML" enabled="false">
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
      <Layer name="!!!_test_test__track.xml" type="XML" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/!!!_test_test__track.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="162" g="255" b="0" a="255" />
          <Color description="fill" name="custom" r="255" g="164" b="0" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="Egorevsk" />
  <Bounds projection="WGS84" top="55.312601760333" bottom="55.24605428853014" left="38.81139941317337" right="38.879559280470886" />
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
	(define (record-add str obj) string-append str "\n- " (verbose-info (semantic-string (object-sema
</PointInfo>
</Project>