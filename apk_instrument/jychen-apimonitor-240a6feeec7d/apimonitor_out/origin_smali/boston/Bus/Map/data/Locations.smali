.class public final Lboston/Bus/Map/data/Locations;
.super Ljava/lang/Object;
.source "Locations.java"


# static fields
.field public static final NO_CHANGE:I = -0x1


# instance fields
.field private final arrow:Landroid/graphics/drawable/Drawable;

.field private final bus:Landroid/graphics/drawable/Drawable;

.field private busMapping:Ljava/util/HashMap;
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

.field private final busStop:Landroid/graphics/drawable/Drawable;

.field private final favoriteStops:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lboston/Bus/Map/data/StopLocation;",
            ">;"
        }
    .end annotation
.end field

.field private lastInferBusRoutes:Z

.field private lastInferBusRoutesTime:D

.field private lastUpdateTime:D

.field private latitudeAsDegreesE6:I

.field private final locationDrawable:Landroid/graphics/drawable/Drawable;

.field private longitudeAsDegreesE6:I

.field private final routeMapping:Ljava/util/HashMap;
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

.field private selectedBusPredictions:I

.field private selectedRoute:Ljava/lang/String;

.field private showCurrentLocation:Z

.field private final supportedRoutes:[Ljava/lang/String;

.field private final tenMinutes:D

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
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V
    .registers 9

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/data/Locations;->vehiclesToRouteNames:Ljava/util/HashMap;

    iput-wide v1, p0, Lboston/Bus/Map/data/Locations;->lastInferBusRoutesTime:D

    iput-wide v1, p0, Lboston/Bus/Map/data/Locations;->lastUpdateTime:D

    const-wide v0, 0x41224f8000000000L

    iput-wide v0, p0, Lboston/Bus/Map/data/Locations;->tenMinutes:D

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/data/Locations;->favoriteStops:Ljava/util/HashMap;

    iput-object p1, p0, Lboston/Bus/Map/data/Locations;->bus:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lboston/Bus/Map/data/Locations;->arrow:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lboston/Bus/Map/data/Locations;->locationDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lboston/Bus/Map/data/Locations;->busStop:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lboston/Bus/Map/data/Locations;->supportedRoutes:[Ljava/lang/String;

    return-void
.end method

.method private downloadStream(Ljava/net/URL;Lboston/Bus/Map/main/UpdateAsyncTask;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Lboston/Bus/Map/util/StreamCounter;

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lboston/Bus/Map/util/StreamCounter;-><init>(Ljava/io/InputStream;Lboston/Bus/Map/main/UpdateAsyncTask;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private populateStops(Ljava/lang/String;Lboston/Bus/Map/database/DatabaseHelper;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {p1}, Lboston/Bus/Map/transit/TransitSystem;->getRouteConfigUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lboston/Bus/Map/util/DownloadHelper;

    invoke-direct {v0, v2}, Lboston/Bus/Map/util/DownloadHelper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lboston/Bus/Map/util/DownloadHelper;->connect()V

    new-instance v1, Lboston/Bus/Map/parser/RouteConfigFeedParser;

    iget-object v3, p0, Lboston/Bus/Map/data/Locations;->busStop:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v3}, Lboston/Bus/Map/parser/RouteConfigFeedParser;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lboston/Bus/Map/util/DownloadHelper;->getResponseData()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Lboston/Bus/Map/parser/RouteConfigFeedParser;->runParse(Ljava/io/InputStream;)V

    iget-object v3, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Lboston/Bus/Map/parser/RouteConfigFeedParser;->fillMapping(Ljava/util/HashMap;)V

    iget-object v3, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lboston/Bus/Map/database/DatabaseHelper;->saveMapping(Ljava/util/HashMap;Z)V

    return-void
.end method

.method private routeInfoNeedsUpdating()Z
    .registers 6

    iget-object v0, p0, Lboston/Bus/Map/data/Locations;->supportedRoutes:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_27

    aget-object v3, v0, v1

    iget-object v4, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v4}, Lboston/Bus/Map/data/RouteConfig;->getStops()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_24

    :cond_22
    const/4 v4, 0x1

    :goto_23
    return v4

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_27
    const/4 v4, 0x0

    goto :goto_23
.end method

.method private updateInferRoutes(Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_82

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    iget-wide v10, p0, Lboston/Bus/Map/data/Locations;->lastInferBusRoutesTime:D

    sub-double/2addr v8, v10

    const-wide v10, 0x41224f8000000000L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_17

    iget-boolean v8, p0, Lboston/Bus/Map/data/Locations;->lastInferBusRoutes:Z

    if-nez v8, :cond_82

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x41124f8000000000L

    sub-double/2addr v8, v10

    iput-wide v8, p0, Lboston/Bus/Map/data/Locations;->lastInferBusRoutesTime:D

    iget-object v8, p0, Lboston/Bus/Map/data/Locations;->vehiclesToRouteNames:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_27
    iget-object v9, p0, Lboston/Bus/Map/data/Locations;->vehiclesToRouteNames:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    const-string v7, "http://kk.csail.mit.edu/~nickolai/bus-infer/vehicle-to-routename.xml"

    new-instance v6, Ljava/net/URL;

    const-string v9, "http://kk.csail.mit.edu/~nickolai/bus-infer/vehicle-to-routename.xml"

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v9, "vehicle"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v2, 0x0

    :goto_4c
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_74

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v9, p0, Lboston/Bus/Map/data/Locations;->vehiclesToRouteNames:Ljava/util/HashMap;

    const-string v10, "id"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "routeTag"

    invoke-interface {v3, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_74
    monitor-exit v8
    :try_end_75
    .catchall {:try_start_27 .. :try_end_75} :catchall_7f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    iput-wide v8, p0, Lboston/Bus/Map/data/Locations;->lastInferBusRoutesTime:D

    :cond_7c
    :goto_7c
    iput-boolean p1, p0, Lboston/Bus/Map/data/Locations;->lastInferBusRoutes:Z

    return-void

    :catchall_7f
    move-exception v9

    :try_start_80
    monitor-exit v8
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v9

    :cond_82
    if-nez p1, :cond_7c

    iget-boolean v8, p0, Lboston/Bus/Map/data/Locations;->lastInferBusRoutes:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7c

    iget-object v8, p0, Lboston/Bus/Map/data/Locations;->vehiclesToRouteNames:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_8c
    iget-object v9, p0, Lboston/Bus/Map/data/Locations;->vehiclesToRouteNames:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    monitor-exit v8

    goto :goto_7c

    :catchall_93
    move-exception v9

    monitor-exit v8
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_93

    throw v9
.end method


# virtual methods
.method public Refresh(Lboston/Bus/Map/database/DatabaseHelper;ZIIDDLboston/Bus/Map/main/UpdateAsyncTask;)V
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->supportedRoutes:[Ljava/lang/String;

    move-object v5, v0

    aget-object v23, v5, p3

    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lboston/Bus/Map/data/Locations;->updateInferRoutes(Z)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_52

    :goto_e
    const/16 v20, 0xf

    packed-switch p4, :pswitch_data_1c8

    :pswitch_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lboston/Bus/Map/data/Locations;->lastUpdateTime:D

    move-wide v5, v0

    double-to-long v5, v5

    invoke-static {v5, v6}, Lboston/Bus/Map/transit/TransitSystem;->getVehicleLocationsUrl(J)Ljava/lang/String;

    move-result-object v25

    new-instance v15, Lboston/Bus/Map/util/DownloadHelper;

    move-object v0, v15

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lboston/Bus/Map/util/DownloadHelper;-><init>(Ljava/lang/String;)V

    :goto_25
    invoke-virtual {v15}, Lboston/Bus/Map/util/DownloadHelper;->connect()V

    invoke-virtual {v15}, Lboston/Bus/Map/util/DownloadHelper;->getResponseData()Ljava/io/InputStream;

    move-result-object v14

    const/4 v5, 0x2

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_3e

    const/4 v5, 0x4

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_3e

    const/4 v5, 0x5

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_123

    :cond_3e
    new-instance v21, Lboston/Bus/Map/parser/BusPredictionsFeedParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Lboston/Bus/Map/parser/BusPredictionsFeedParser;-><init>(Ljava/util/HashMap;)V

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Lboston/Bus/Map/parser/BusPredictionsFeedParser;->runParse(Ljava/io/InputStream;)V

    :goto_51
    return-void

    :catch_52
    move-exception v16

    const-string v5, "BostonBusMap"

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :pswitch_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lboston/Bus/Map/data/RouteConfig;

    if-eqz v22, :cond_cc

    invoke-virtual/range {v22 .. v22}, Lboston/Bus/Map/data/RouteConfig;->getStops()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_98

    const/16 v6, 0xf

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v5 .. v11}, Lboston/Bus/Map/data/Locations;->getLocations(IDDZ)Ljava/util/List;

    move-result-object v19

    const/16 v5, 0xf

    move-object/from16 v0, v19

    move v1, v5

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lboston/Bus/Map/transit/TransitSystem;->getPredictionsUrl(Ljava/util/List;ILboston/Bus/Map/data/RouteConfig;)Ljava/lang/String;

    move-result-object v24

    new-instance v15, Lboston/Bus/Map/util/DownloadHelper;

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lboston/Bus/Map/util/DownloadHelper;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :cond_98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading data for route "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p9

    move-object v1, v5

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lboston/Bus/Map/data/Locations;->populateStops(Ljava/lang/String;Lboston/Bus/Map/database/DatabaseHelper;)V

    const-string v5, "Finished download"

    move-object/from16 v0, p9

    move-object v1, v5

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    goto :goto_51

    :cond_cc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading data for route "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p9

    move-object v1, v5

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lboston/Bus/Map/data/Locations;->populateStops(Ljava/lang/String;Lboston/Bus/Map/database/DatabaseHelper;)V

    const-string v5, "Finished download"

    move-object/from16 v0, p9

    move-object v1, v5

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    goto/16 :goto_51

    :pswitch_101
    const/16 v6, 0xf

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v5 .. v11}, Lboston/Bus/Map/data/Locations;->getLocations(IDDZ)Ljava/util/List;

    move-result-object v19

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lboston/Bus/Map/transit/TransitSystem;->getPredictionsUrl(Ljava/util/List;ILboston/Bus/Map/data/RouteConfig;)Ljava/lang/String;

    move-result-object v24

    new-instance v15, Lboston/Bus/Map/util/DownloadHelper;

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lboston/Bus/Map/util/DownloadHelper;-><init>(Ljava/lang/String;)V

    goto/16 :goto_25

    :cond_123
    new-instance v21, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->vehiclesToRouteNames:Ljava/util/HashMap;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->bus:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->arrow:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->runParse(Ljava/io/InputStream;)V

    invoke-virtual/range {v21 .. v21}, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->getLastUpdateTime()D

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lboston/Bus/Map/data/Locations;->lastUpdateTime:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    :try_start_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Lboston/Bus/Map/parser/VehicleLocationsFeedParser;->fillMapping(Ljava/util/HashMap;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_174
    :goto_174
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lboston/Bus/Map/data/BusLocation;

    iget-wide v6, v12, Lboston/Bus/Map/data/BusLocation;->lastUpdateInMillis:D

    const-wide v8, 0x4105f90000000000L

    add-double/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_174

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_174

    :catchall_1a6
    move-exception v6

    monitor-exit v5
    :try_end_1a8
    .catchall {:try_start_157 .. :try_end_1a8} :catchall_1a6

    throw v6

    :cond_1a9
    :try_start_1a9
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1ad
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ad

    :cond_1c5
    monitor-exit v5
    :try_end_1c6
    .catchall {:try_start_1a9 .. :try_end_1c6} :catchall_1a6

    goto/16 :goto_51

    :pswitch_data_1c8
    .packed-switch 0x2
        :pswitch_5d
        :pswitch_13
        :pswitch_101
        :pswitch_101
    .end packed-switch
.end method

.method public checkFreeSpace(Lboston/Bus/Map/database/DatabaseHelper;)Z
    .registers 3

    invoke-direct {p0}, Lboston/Bus/Map/data/Locations;->routeInfoNeedsUpdating()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lboston/Bus/Map/database/DatabaseHelper;->checkFreeSpace()Z

    move-result v0

    goto :goto_7
.end method

.method public clearCurrentLocation()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lboston/Bus/Map/data/Locations;->showCurrentLocation:Z

    return-void
.end method

.method public getLocations(IDDZ)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDDZ)",
            "Ljava/util/List",
            "<",
            "Lboston/Bus/Map/data/Location;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/TreeSet;

    new-instance v7, Lboston/Bus/Map/data/LocationComparator;

    invoke-direct {v7, p2, p3, p4, p5}, Lboston/Bus/Map/data/LocationComparator;-><init>(DD)V

    invoke-direct {v4, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget v7, p0, Lboston/Bus/Map/data/Locations;->selectedBusPredictions:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_19

    iget v7, p0, Lboston/Bus/Map/data/Locations;->selectedBusPredictions:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_ab

    :cond_19
    iget-object v7, p0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    monitor-enter v7

    if-nez p6, :cond_5b

    :try_start_1e
    iget-object v8, p0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboston/Bus/Map/data/BusLocation;

    iget-boolean v8, v0, Lboston/Bus/Map/data/BusLocation;->predictable:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_28

    iget v8, p0, Lboston/Bus/Map/data/Locations;->selectedBusPredictions:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_57

    iget-object v8, v0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;

    if-eqz v8, :cond_28

    iget-object v8, v0, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v8}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lboston/Bus/Map/data/Locations;->selectedRoute:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :catchall_54
    move-exception v8

    monitor-exit v7
    :try_end_56
    .catchall {:try_start_1e .. :try_end_56} :catchall_54

    throw v8

    :cond_57
    :try_start_57
    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_5b
    iget v8, p0, Lboston/Bus/Map/data/Locations;->selectedBusPredictions:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7f

    iget-object v8, p0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_69
    monitor-exit v7
    :try_end_6a
    .catchall {:try_start_57 .. :try_end_6a} :catchall_54

    :cond_6a
    :goto_6a
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v7

    if-le p1, v7, :cond_74

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result p1

    :cond_74
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    return-object v7

    :cond_7f
    :try_start_7f
    iget-object v8, p0, Lboston/Bus/Map/data/Locations;->busMapping:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_89
    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lboston/Bus/Map/data/BusLocation;

    iget-object v8, v2, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;

    if-eqz v8, :cond_89

    iget-object v8, v2, Lboston/Bus/Map/data/BusLocation;->route:Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual {v8}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lboston/Bus/Map/data/Locations;->selectedRoute:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catchall {:try_start_7f .. :try_end_aa} :catchall_54

    goto :goto_89

    :cond_ab
    iget v7, p0, Lboston/Bus/Map/data/Locations;->selectedBusPredictions:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c4

    iget-object v7, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    iget-object v8, p0, Lboston/Bus/Map/data/Locations;->selectedRoute:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lboston/Bus/Map/data/RouteConfig;

    if-eqz v5, :cond_6a

    invoke-virtual {v5}, Lboston/Bus/Map/data/RouteConfig;->getStops()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_6a

    :cond_c4
    iget v7, p0, Lboston/Bus/Map/data/Locations;->selectedBusPredictions:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6a

    iget v7, p0, Lboston/Bus/Map/data/Locations;->selectedBusPredictions:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6a

    iget-object v7, p0, Lboston/Bus/Map/data/Locations;->favoriteStops:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lboston/Bus/Map/data/Locations;->favoriteStops:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lboston/Bus/Map/data/StopLocation;

    invoke-virtual {v4, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lboston/Bus/Map/data/StopLocation;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d8
.end method

.method public getRouteDataFromDatabase(Lboston/Bus/Map/database/DatabaseHelper;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v12, "BostonBusMap"

    invoke-direct {p0}, Lboston/Bus/Map/data/Locations;->routeInfoNeedsUpdating()Z

    move-result v9

    if-nez v9, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lboston/Bus/Map/data/Locations;->supportedRoutes:[Ljava/lang/String;

    array-length v5, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v5, :cond_1d

    aget-object v8, v0, v2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1d
    :try_start_1d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v9, p0, Lboston/Bus/Map/data/Locations;->supportedRoutes:[Ljava/lang/String;

    invoke-virtual {p1, v7, v4, v9}, Lboston/Bus/Map/database/DatabaseHelper;->populateMap(Ljava/util/HashMap;Ljava/util/HashSet;[Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v9

    if-eqz v9, :cond_9d

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lboston/Bus/Map/data/RouteConfig;

    if-eqz v8, :cond_35

    invoke-virtual {v8}, Lboston/Bus/Map/data/RouteConfig;->getStops()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lboston/Bus/Map/data/StopLocation;

    invoke-virtual {v6}, Lboston/Bus/Map/data/StopLocation;->getStopTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    const-string v9, "BostonBusMap"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "toggling favorite: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lboston/Bus/Map/data/StopLocation;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lboston/Bus/Map/data/Locations;->favoriteStops:Ljava/util/HashMap;

    invoke-virtual {v6}, Lboston/Bus/Map/data/StopLocation;->getStopTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lboston/Bus/Map/data/StopLocation;->setFavorite(Z)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_8a} :catch_8b

    goto :goto_4b

    :catch_8b
    move-exception v9

    move-object v1, v9

    const-string v9, "BostonBusMap"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    iget-object v9, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_8

    :cond_9d
    :try_start_9d
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_8b

    goto :goto_96
.end method

.method public getSelectedPaths()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lboston/Bus/Map/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    iget-object v3, p0, Lboston/Bus/Map/data/Locations;->selectedRoute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lboston/Bus/Map/data/RouteConfig;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lboston/Bus/Map/data/RouteConfig;->getPaths()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    return-object v0
.end method

.method public getSelectedRoute()Lboston/Bus/Map/data/RouteConfig;
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lboston/Bus/Map/data/Locations;->selectedRoute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lboston/Bus/Map/data/RouteConfig;

    return-object p0
.end method

.method public initializeAllRoutes(Lboston/Bus/Map/database/DatabaseHelper;Lboston/Bus/Map/main/UpdateAsyncTask;Landroid/content/Context;)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lboston/Bus/Map/data/Locations;->routeInfoNeedsUpdating()Z

    move-result v13

    if-eqz v13, :cond_77

    const-string v17, "Downloading route info (this may take a short while): "

    const-string v6, "Decompressing route data. This may take a minute..."

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    const v12, 0x6383f

    new-instance v5, Lboston/Bus/Map/util/StreamCounter;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f05

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const v8, 0x6383f

    const/4 v9, 0x0

    const-string v10, "Decompressing route data, may take a minute: "

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Lboston/Bus/Map/util/StreamCounter;-><init>(Ljava/io/InputStream;Lboston/Bus/Map/main/UpdateAsyncTask;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v16, Lboston/Bus/Map/parser/RouteConfigFeedParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->busStop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Lboston/Bus/Map/parser/RouteConfigFeedParser;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lboston/Bus/Map/parser/RouteConfigFeedParser;->runParse(Ljava/io/InputStream;)V

    const-string v6, "Parsing route data..."

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lboston/Bus/Map/parser/RouteConfigFeedParser;->fillMapping(Ljava/util/HashMap;)V

    const-string v6, "Saving route data to database..."

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lboston/Bus/Map/database/DatabaseHelper;->saveMapping(Ljava/util/HashMap;Z)V

    const-string v6, "Done!"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publish(Ljava/lang/String;)V

    :cond_76
    return-void

    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->supportedRoutes:[Ljava/lang/String;

    move-object v11, v0

    array-length v15, v11

    const/4 v14, 0x0

    :goto_7e
    if-ge v14, v15, :cond_76

    aget-object v18, v11, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lboston/Bus/Map/data/RouteConfig;

    invoke-virtual/range {p3 .. p3}, Lboston/Bus/Map/data/RouteConfig;->getStops()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-nez v6, :cond_115

    :cond_b6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading route info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (this may take a short while): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v18 .. v18}, Lboston/Bus/Map/transit/TransitSystem;->getRouteConfigUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v20, Ljava/net/URL;

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lboston/Bus/Map/data/Locations;->downloadStream(Ljava/net/URL;Lboston/Bus/Map/main/UpdateAsyncTask;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    new-instance v16, Lboston/Bus/Map/parser/RouteConfigFeedParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->busStop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Lboston/Bus/Map/parser/RouteConfigFeedParser;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lboston/Bus/Map/parser/RouteConfigFeedParser;->runParse(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lboston/Bus/Map/parser/RouteConfigFeedParser;->fillMapping(Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/data/Locations;->routeMapping:Ljava/util/HashMap;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lboston/Bus/Map/database/DatabaseHelper;->saveMapping(Ljava/util/HashMap;Z)V

    :cond_115
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7e
.end method

.method public select(II)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lboston/Bus/Map/data/Locations;->supportedRoutes:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lboston/Bus/Map/data/Locations;->selectedRoute:Ljava/lang/String;

    iput p2, p0, Lboston/Bus/Map/data/Locations;->selectedBusPredictions:I

    goto :goto_3
.end method

.method public setCurrentLocation(II)V
    .registers 4

    iput p1, p0, Lboston/Bus/Map/data/Locations;->latitudeAsDegreesE6:I

    iput p2, p0, Lboston/Bus/Map/data/Locations;->longitudeAsDegreesE6:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lboston/Bus/Map/data/Locations;->showCurrentLocation:Z

    return-void
.end method

.method public toggleFavorite(Lboston/Bus/Map/database/DatabaseHelper;Lboston/Bus/Map/data/StopLocation;)I
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lboston/Bus/Map/data/StopLocation;->getStopTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lboston/Bus/Map/data/Locations;->favoriteStops:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p2, v2}, Lboston/Bus/Map/data/StopLocation;->setFavorite(Z)V

    iget-object v1, p0, Lboston/Bus/Map/data/Locations;->favoriteStops:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lboston/Bus/Map/database/DatabaseHelper;->saveFavorite(Ljava/lang/String;Z)V

    const v1, 0x7f020010

    :goto_1c
    return v1

    :cond_1d
    invoke-virtual {p2, v3}, Lboston/Bus/Map/data/StopLocation;->setFavorite(Z)V

    iget-object v1, p0, Lboston/Bus/Map/data/Locations;->favoriteStops:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, v3}, Lboston/Bus/Map/database/DatabaseHelper;->saveFavorite(Ljava/lang/String;Z)V

    const v1, 0x7f020011

    goto :goto_1c
.end method
