<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<Project name="Kola">
  <Map>
    <Group name="" opacity="1.0" enabled="true" obscure="false">
      <Layer name="Worlds.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/Worlds.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
      </Layer>

        <Layer name="75_28_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/75_28_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
        <Layer name="75_29_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/75_29_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
        <Layer name="76_29_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/76_29_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
        <Layer name="76_30_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/76_30_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
        <Layer name="75_30_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/75_30_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
        <Layer name="75_31_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/75_31_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
        <Layer name="76_31_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/76_31_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
        <Layer name="76_32_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/76_32_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
        <Layer name="75_32_08.sqlitedb" type="SQL_YANDEX_LAYER" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/75_32_08.sqlitedb" />
        <sqlitedb zoom_type="SMART" min="1" max="19" ratio="1" />
        <Range from="233014197" to="888" />
        </Layer>
      <Layer name="Yandex.traffic" type="ON_LINE" enabled="false">
        <Source location="text" name="yandex" />
        <Range from="NAN" to="NAN" />
      </Layer>
      <Layer name="points.xml" type="XML" enabled="true">
        <Source location="absolute" name="/storage/emulated/0/points.xml" />
        <Range from="NAN" to="NAN" />
        <Style type="vector" lineWidth="4.0" opacity="0.5">
          <Color description="fill" name="custom" r="255" g="0" b="0" a="255" />
          <Color description="line" name="custom" r="255" g="0" b="0" a="255" />
        </Style>
      </Layer>

    </Group>
  </Map>
  <Description text="Kola 2019" />
  <Bounds projection="WGS84" top="44.82650399029775" bottom="44.68831449146238" left="33.669332389749044" right="34.03851682881313" />
  <Markers file="points.xml" source="layer" />
</Project>