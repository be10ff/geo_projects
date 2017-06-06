<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="WaterFall" SaveAs="WaterFall.pro" ID="41">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="World.sqlite" type="SQL_LAYER" enabled="true">
        <Source location="text" name="World.sqlitedb" />
        <sqlitedb zoom_type="auto" min="0" max="7" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="Around50.sqlitedb" type="SQL_LAYER" enabled="false">
        <Source location="text" name="Around50.sqlitedb" />
        <sqlitedb zoom_type="auto" min="8" max="14" />
        <Range from="200000" to="20000" />
      </Layer>
      <Layer name="LG11_15.sqlite" type="SQL_LAYER" enabled="false">
        <Source location="text" name="LG11_15.sqlitedb" />
        <sqlitedb zoom_type="auto" min="11" max="19" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="Точки" type="DBASE" enabled="false">
        <Source location="local" name="user-point.db" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="1.0" opacity="1.0">
          <Color description="line" name="gray" r="136" g="136" b="136" a="255" />
          <Color description="fill" name="red" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="Линии" type="DBASE" enabled="false">
        <Source location="local" name="user-line.db" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="1.0" opacity="1.0">
          <Color description="line" name="gray" r="136" g="136" b="136" a="255" />
          <Color description="fill" name="red" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="Полигоны" type="DBASE" enabled="false">
        <Source location="local" name="user-polygon.db" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="1.0" opacity="1.0">
          <Color description="line" name="gray" r="136" g="136" b="136" a="255" />
          <Color description="fill" name="red" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="треки xml" type="XML" enabled="true">
        <Source location="local" name="0Треки.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="red" r="255" g="0" b="0" a="255" />
          <Color description="fill" name="red" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>
      <Layer name="poi" type="XML" enabled="true">
        <Source location="local" name="0Точки.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="2.0" opacity="1.0">
          <Color description="line" name="blue" r="0" g="0" b="255" a="255" />
          <Color description="fill" name="blue" r="0" g="0" b="255" a="255" />
        </Style>
      </Layer>
    </Group>
  </Map>
  <Description text="Карта Москвы" />
  <Bounds projection="WGS84" top="55.642924644820326" bottom="55.41486175758923" left="37.84851544683827" right="38.08387817843836" />
  <Edit>
    <LayerRef name="Точки" type="POINT" />
    <LayerRef name="Линии" type="LINE" />
    <LayerRef name="Полигоны" type="POLYGON" />
    <LayerRef name="треки xml" type="TRACK" />
    <LayerRef name="poi" type="POINT" />
  </Edit>
  <Markers file="poi" source="layer" />
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
  <Search file="Roads.db">(
(define (query-all pattern table name_field search_field) database-query 
	(string-append "SELECT " name_field ", Lon_anchor, Lat_anchor, Diag_size FROM "
		 table " WHERE " search_field " LIKE '% " pattern "%' OR " search_field " LIKE '" pattern "%' ORDER BY Diag_size LIMIT 20"))
(define (process result) if (set-empty? result) (enlist set-empty) (enlist (if (= (set-count result) 20) (set-append-elem result marker-ellipsis) result)))
process (query-all (string-to-lower (request-string request)) "ROADS" "NAM_STR" "SEARCH_STR")
	)</Search>
  <Package name="MoscowRaster" size="2800000000" CRC="a11b31995e44b5e447f0a01ce309d085" ID="2">
    <File name="cosmo_wgs84_cut.tiff" CRC="" />
    <File name="cosmo_wgs84_cut.tiff.ovr" CRC="" />
  </Package>
  <Package name="MoscowVector" size="176977393" CRC="b65b09ed30eae918bb990ac5c155556e" ID="3">
    <File name="blank.png" CRC="" />
    <File name="BRIDGE_Polygon.dbf" CRC="" />
    <File name="BRIDGE_Polygon.prj" CRC="" />
    <File name="BRIDGE_Polygon.qix" CRC="" />
    <File name="BRIDGE_Polygon.sbn" CRC="" />
    <File name="BRIDGE_Polygon.sbx" CRC="" />
    <File name="BRIDGE_Polygon.shp" CRC="" />
    <File name="BRIDGE_Polygon.shp.xml" CRC="" />
    <File name="BRIDGE_Polygon.shx" CRC="" />
    <File name="FOREST_Polygon.dbf" CRC="" />
    <File name="FOREST_Polygon.prj" CRC="" />
    <File name="FOREST_Polygon.qix" CRC="" />
    <File name="FOREST_Polygon.sbn" CRC="" />
    <File name="FOREST_Polygon.sbx" CRC="" />
    <File name="FOREST_Polygon.shp" CRC="" />
    <File name="FOREST_Polygon.shp.xml" CRC="" />
    <File name="FOREST_Polygon.shx" CRC="" />
    <File name="gdalicon.png" CRC="" />
    <File name="poi.db" CRC="" />
    <File name="ScaleBar.png" CRC="" />
    <File name="BUILDING_region_Merge.dbf" CRC="" />
    <File name="BUILDING_region_Merge.prj" CRC="" />
    <File name="BUILDING_region_Merge.sbn" CRC="" />
    <File name="BUILDING_region_Merge.sbx" CRC="" />
    <File name="BUILDING_region_Merge.shp" CRC="" />
    <File name="BUILDING_region_Merge.shp.xml" CRC="" />
    <File name="BUILDING_region_Merge.shx" CRC="" />
    <File name="SignificantLines_Dissolve2.dbf" CRC="" />
    <File name="SignificantLines_Dissolve2.prj" CRC="" />
    <File name="SignificantLines_Dissolve2.sbn" CRC="" />
    <File name="SignificantLines_Dissolve2.sbx" CRC="" />
    <File name="SignificantLines_Dissolve2.shp" CRC="" />
    <File name="SignificantLines_Dissolve2.shp.xml" CRC="" />
    <File name="SignificantLines_Dissolve2.shx" CRC="" />
    <File name="ROAD_Polygon.dbf" CRC="" />
    <File name="ROAD_Polygon.prj" CRC="" />
    <File name="ROAD_Polygon.qix" CRC="" />
    <File name="ROAD_Polygon.sbn" CRC="" />
    <File name="ADDRESS_region_GDB_Dissolve2.shx" CRC="" />
    <File name="ADDRESS_region_GDB_Dissolve2.shp.xml" CRC="" />
    <File name="ADDRESS_region_GDB_Dissolve2.sbn" CRC="" />
    <File name="ADDRESS_region_GDB_Dissolve2.sbx" CRC="" />
    <File name="ADDRESS_region_GDB_Dissolve2.dbf" CRC="" />
    <File name="ADDRESS_region_GDB_Dissolve2.prj" CRC="" />
    <File name="ADDRESS_region_GDB_Dissolve2.shp" CRC="" />
    <File name="SignificantLines_Dissolve2.qix" CRC="" />
    <File name="ADDRESS_region_GDB_Dissolve2.qix" CRC="" />
    <File name="BUILDING_region_Merge.qix" CRC="" />
    <File name="ROAD_Polygon.sbx" CRC="" />
    <File name="ROAD_Polygon.shp" CRC="" />
    <File name="ROAD_Polygon.shp.xml" CRC="" />
    <File name="ROAD_Polygon.shx" CRC="" />
    <File name="WATER_Polygon.dbf" CRC="" />
    <File name="WATER_Polygon.prj" CRC="" />
    <File name="WATER_Polygon.qix" CRC="" />
    <File name="WATER_Polygon.sbn" CRC="" />
    <File name="WATER_Polygon.sbx" CRC="" />
    <File name="WATER_Polygon.shp" CRC="" />
    <File name="WATER_Polygon.shp.xml" CRC="" />
    <File name="WATER_Polygon.shx" CRC="" />
    <File name="WAY_Line.dbf" CRC="" />
    <File name="WAY_Line.prj" CRC="" />
    <File name="WAY_Line.qix" CRC="" />
    <File name="WAY_Line.sbn" CRC="" />
    <File name="WAY_Line.sbx" CRC="" />
    <File name="WAY_Line.shp" CRC="" />
    <File name="WAY_Line.shp.xml" CRC="" />
    <File name="WAY_Line.shx" CRC="" />
    <File name="XARACTER_Point.dbf" CRC="" />
    <File name="XARACTER_Point.prj" CRC="" />
    <File name="XARACTER_Point.qix" CRC="" />
    <File name="XARACTER_Point.sbn" CRC="" />
    <File name="XARACTER_Point.sbx" CRC="" />
    <File name="XARACTER_Point.shp" CRC="" />
    <File name="XARACTER_Point.shp.xml" CRC="" />
    <File name="XARACTER_Point.shx" CRC="" />
    <File name="metro.png" CRC="" />
    <File name="favorit.png" CRC="" />
    <File name="Roads.db" CRC="" />
    <File name="markers_MOS.plist" CRC="" />
  </Package>
</Project>