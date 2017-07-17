<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Chekhov" SaveAs="Chekhov.pro" ID="42">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="World.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/World.sqlitedb" />
        <sqlitedb zoom_type="auto" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>
      <Layer name="50rus.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/50rus.sqlitedb" />
        <sqlitedb zoom_type="smart" min="0" max="24" ratio="3" />
        <Range from="466028394" to="55" />
      </Layer>
      <Layer name="topo" type="FOLDER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/topo" />
        <sqlitedb zoom_type="smart" min="0" max="16" ratio="1" />
        <Range from="466028394" to="1777" />
      </Layer>
      <Layer name="309_161_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/309_161_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="1" max="24" ratio="1" />
        <Range from="233014199" to="50" />
      </Layer>
      <Layer name="309_162_10.sqlitedb" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="absolute" name="/storage/emulated/0/309_162_10.sqlitedb" />
        <sqlitedb zoom_type="smart" min="1" max="24" ratio="1" />
        <Range from="233014199" to="50" />
      </Layer>
      <Layer name="traffic.yandex" type="SQL_YANDEX_LAYER" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="poi" type="XML" enabled="true">
        <Source location="local" name="Точки.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="custom" r="0" g="0" b="255" a="255" />
          <Color description="fill" name="custom" r="0" g="0" b="255" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="Chekhov" />
  <Bounds projection="WGS84" top="55.16469584688288" bottom="55.08500240563505" left="37.749502443859726" right="37.82996136392037" />
  <Edit>
    <LayerRef name="points.xml" type="POINT" />
    <LayerRef name="lines.xml" type="LINE" />
    <LayerRef name="Полигоны" type="POLYGON" />
    <LayerRef name="треки xml" type="TRACK" />
    <LayerRef name="poi" type="POINT" />
  </Edit>
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