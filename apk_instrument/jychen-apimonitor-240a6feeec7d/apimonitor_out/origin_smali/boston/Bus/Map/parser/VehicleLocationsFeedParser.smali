.class public Lboston/Bus/Map/parser/VehicleLocationsFeedParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "VehicleLocationsFeedParser.java"


# static fields
.field private static final dirTagKey:Ljava/lang/String; = "dirTag"

.field private static final headingKey:Ljava/lang/String; = "heading"

.field private static final idKey:Ljava/lang/String; = "id"

.field private static final lastTimeKey:Ljava/lang/String; = "lastTime"

.field private static final latKey:Ljava/lang/String; = "lat"

.field private static final lonKey:Ljava/lang/String; = "lon"

.field private static final predictableKey:Ljava/lang/String; = "predictable"

.field private static final routeTagKey:Ljava/lang/String; = "routeTag"

.field private static final secsSinceReportKey:Ljava/lang/String; = "secsSinceReport"

.field private static final timeKey:Ljava/lang/String; = "time"

.field private static final vehicleKey:Ljava/lang/String; = "vehicle"


# instance fields
.field private final arrow:Landroid/graphics/drawable/Drawable;

.field private final bus:Landroid/graphics/drawable/Drawable;

.field private final busMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lboston/Bus/Map/data/BusLocation;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdateTime:D

.field private final stopMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/RouteConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final vehiclesToRouteNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/RouteConfig;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->busMapping:Ljava/util/HashMap;

    iput-object p1, p0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->vehiclesToRouteNames:Ljava/util/HashMap;

    iput-object p2, p0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->stopMapping:Ljava/util/HashMap;

    iput-object p3, p0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->bus:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->arrow:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public fillMapping(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lboston/Bus/Map/data/BusLocation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->busMapping:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getLastUpdateTime()D
    .registers 3

    iget-wide v0, p0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->lastUpdateTime:D

    return-wide v0
.end method

.method public runParse(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v11, "vehicle"

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_113

    const-string v11, "lat"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v11, "lon"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v11, "id"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v11, "routeTag"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v11, "secsSinceReport"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "heading"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v11, "predictable"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v11, "dirTag"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->vehiclesToRouteNames:Ljava/util/HashMap;

    move-object v11, v0

    monitor-enter v11

    :try_start_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->vehiclesToRouteNames:Ljava/util/HashMap;

    move-object v12, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->vehiclesToRouteNames:Ljava/util/HashMap;

    move-object v12, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    if-eqz v23, :cond_9d

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_9d

    move-object/from16 v16, v23

    :cond_9d
    monitor-exit v11
    :try_end_9e
    .catchall {:try_start_6f .. :try_end_9e} :catchall_107

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->stopMapping:Ljava/util/HashMap;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10a

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->stopMapping:Ljava/util/HashMap;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lboston/Bus/Map/data/RouteConfig;

    :goto_ba
    new-instance v3, Lboston/Bus/Map/data/BusLocation;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->lastUpdateTime:D

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->bus:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->arrow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v19}, Lboston/Bus/Map/data/BusLocation;-><init>(DDILboston/Bus/Map/data/RouteConfig;IDLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, v21

    move v1, v8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->busMapping:Ljava/util/HashMap;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->busMapping:Ljava/util/HashMap;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lboston/Bus/Map/data/BusLocation;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lboston/Bus/Map/data/BusLocation;->movedFrom(Lboston/Bus/Map/data/BusLocation;)V

    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->busMapping:Ljava/util/HashMap;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v21

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_106
    return-void

    :catchall_107
    move-exception v12

    :try_start_108
    monitor-exit v11
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v12

    :cond_10a
    new-instance v9, Lboston/Bus/Map/data/RouteConfig;

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lboston/Bus/Map/data/RouteConfig;-><init>(Ljava/lang/String;)V

    goto :goto_ba

    :cond_113
    const-string v11, "lastTime"

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_106

    const-string v11, "time"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->lastUpdateTime:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->busMapping:Ljava/util/HashMap;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_13d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_106

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->busMapping:Ljava/util/HashMap;

    move-object v11, v0

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lboston/Bus/Map/data/BusLocation;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->lastUpdateTime:D

    move-wide v11, v0

    move-wide v0, v11

    move-object/from16 v2, p1

    iput-wide v0, v2, Lboston/Bus/Map/data/BusLocation;->lastUpdateInMillis:D

    goto :goto_13d
.end method
