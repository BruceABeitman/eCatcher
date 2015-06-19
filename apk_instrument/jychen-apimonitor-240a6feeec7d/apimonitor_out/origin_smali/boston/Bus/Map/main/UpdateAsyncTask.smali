.class public Lboston/Bus/Map/main/UpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "UpdateAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        "Lboston/Bus/Map/data/Locations;",
        ">;"
    }
.end annotation


# instance fields
.field private busOverlay:Lboston/Bus/Map/ui/BusOverlay;

.field private final doInit:Z

.field private final doRefresh:Z

.field private final doShowUnpredictable:Z

.field private final drawCircle:Z

.field private final finalMessage:Ljava/lang/String;

.field private final helper:Lboston/Bus/Map/database/DatabaseHelper;

.field private final inferBusRoutes:Z

.field private locationOverlay:Lboston/Bus/Map/ui/LocationOverlay;

.field private final mapView:Lcom/google/android/maps/MapView;

.field private final maxOverlays:I

.field private routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;

.field private final selectedBusPredictions:I

.field private final selectedRouteIndex:I

.field private final showCoarseRouteLine:Z

.field private final showRouteLine:Z

.field private silenceUpdates:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/google/android/maps/MapView;Lboston/Bus/Map/ui/LocationOverlay;Ljava/lang/String;ZZIZZLboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/database/DatabaseHelper;IIZZZ)V
    .registers 20

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->mapView:Lcom/google/android/maps/MapView;

    iput-object p4, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->finalMessage:Ljava/lang/String;

    iput-boolean p5, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->doShowUnpredictable:Z

    iput-boolean p6, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->doRefresh:Z

    iput p7, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->maxOverlays:I

    iput-boolean p8, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->drawCircle:Z

    iput-boolean p9, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->inferBusRoutes:Z

    iput-object p10, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    iput-object p11, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;

    iput-object p3, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->locationOverlay:Lboston/Bus/Map/ui/LocationOverlay;

    iput-object p12, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->helper:Lboston/Bus/Map/database/DatabaseHelper;

    iput-object p1, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->textView:Landroid/widget/TextView;

    iput p13, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->selectedRouteIndex:I

    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lboston/Bus/Map/main/UpdateAsyncTask;->selectedBusPredictions:I

    move/from16 v0, p15

    move-object v1, p0

    iput-boolean v0, v1, Lboston/Bus/Map/main/UpdateAsyncTask;->doInit:Z

    move/from16 v0, p16

    move-object v1, p0

    iput-boolean v0, v1, Lboston/Bus/Map/main/UpdateAsyncTask;->showRouteLine:Z

    move/from16 v0, p17

    move-object v1, p0

    iput-boolean v0, v1, Lboston/Bus/Map/main/UpdateAsyncTask;->showCoarseRouteLine:Z

    return-void
.end method

.method private displayIcons(Lboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/ui/LocationOverlay;Ljava/util/ArrayList;DDLjava/util/ArrayList;ILboston/Bus/Map/data/RouteConfig;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lboston/Bus/Map/ui/BusOverlay;",
            "Lboston/Bus/Map/ui/RouteOverlay;",
            "Lboston/Bus/Map/ui/LocationOverlay;",
            "Ljava/util/ArrayList",
            "<",
            "Lboston/Bus/Map/data/Path;",
            ">;DD",
            "Ljava/util/ArrayList",
            "<",
            "Lboston/Bus/Map/data/Location;",
            ">;I",
            "Lboston/Bus/Map/data/RouteConfig;",
            ")V"
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/ui/RouteOverlay;->setPaths(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lboston/Bus/Map/ui/BusOverlay;->clear()V

    invoke-virtual {p1}, Lboston/Bus/Map/ui/BusOverlay;->doPopulate()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lboston/Bus/Map/data/Location;

    new-instance v5, Lcom/google/android/maps/GeoPoint;

    invoke-interface {v2}, Lboston/Bus/Map/data/Location;->getLatitudeAsDegrees()D

    move-result-wide v8

    const-wide v10, 0x412e848000000000L

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-interface {v2}, Lboston/Bus/Map/data/Location;->getLongitudeAsDegrees()D

    move-result-wide v9

    const-wide v11, 0x412e848000000000L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-direct {v5, v8, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-interface {v2}, Lboston/Bus/Map/data/Location;->makeTitle()Ljava/lang/String;

    move-result-object v7

    move-object v0, v2

    move-object/from16 v1, p11

    invoke-interface {v0, v1}, Lboston/Bus/Map/data/Location;->makeSnippet(Lboston/Bus/Map/data/RouteConfig;)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Lcom/google/android/maps/OverlayItem;

    invoke-direct {v4, v5, v7, v6}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lboston/Bus/Map/ui/BusOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    goto :goto_10

    :cond_4b
    move-object v0, p1

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Lboston/Bus/Map/ui/BusOverlay;->setSelectedBusId(I)V

    invoke-virtual {p1}, Lboston/Bus/Map/ui/BusOverlay;->refreshBalloons()V

    iget-object v8, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    iget-object v8, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->invalidate()V

    iget-object v8, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->finalMessage:Ljava/lang/String;

    if-eqz v8, :cond_8f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->finalMessage:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_8f
    return-void
.end method

.method private sortBuses(Lboston/Bus/Map/data/Locations;DDLandroid/os/Handler;)V
    .registers 19

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->maxOverlays:I

    iget-boolean v6, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->doShowUnpredictable:Z

    move-object v0, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lboston/Bus/Map/data/Locations;->getLocations(IDDZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->doRefresh:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Finished update, no data provided"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    invoke-virtual {v0}, Lboston/Bus/Map/ui/BusOverlay;->getSelectedBusId()I

    move-result v10

    :goto_34
    const-string v0, "BostonBusMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectedBusId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    iget-boolean v1, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->drawCircle:Z

    invoke-virtual {v0, v1}, Lboston/Bus/Map/ui/BusOverlay;->setDrawHighlightCircle(Z)V

    iget-object v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    invoke-virtual {v0, v9}, Lboston/Bus/Map/ui/BusOverlay;->setBusLocations(Ljava/util/List;)V

    iget-object v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;

    iget-boolean v1, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->showRouteLine:Z

    invoke-virtual {v0, v1}, Lboston/Bus/Map/ui/RouteOverlay;->setDrawLine(Z)V

    invoke-virtual {p1}, Lboston/Bus/Map/data/Locations;->getSelectedPaths()Ljava/util/ArrayList;

    move-result-object v4

    iget v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->selectedBusPredictions:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_79

    const/4 v11, 0x0

    :goto_69
    iget-object v1, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;

    iget-object v2, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;

    iget-object v3, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->locationOverlay:Lboston/Bus/Map/ui/LocationOverlay;

    move-object v0, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v0 .. v11}, Lboston/Bus/Map/main/UpdateAsyncTask;->displayIcons(Lboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/ui/LocationOverlay;Ljava/util/ArrayList;DDLjava/util/ArrayList;ILboston/Bus/Map/data/RouteConfig;)V

    goto :goto_29

    :cond_77
    const/4 v10, -0x1

    goto :goto_34

    :cond_79
    invoke-virtual {p1}, Lboston/Bus/Map/data/Locations;->getSelectedRoute()Lboston/Bus/Map/data/RouteConfig;

    move-result-object v11

    goto :goto_69
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lboston/Bus/Map/data/Locations;
    .registers 9

    const/4 v0, 0x0

    aget-object v1, p1, v0

    check-cast v1, Lboston/Bus/Map/data/Locations;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v0, 0x3

    aget-object v6, p1, v0

    check-cast v6, Landroid/content/Context;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lboston/Bus/Map/main/UpdateAsyncTask;->updateBusLocations(Lboston/Bus/Map/data/Locations;DDLandroid/content/Context;)Lboston/Bus/Map/data/Locations;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lboston/Bus/Map/main/UpdateAsyncTask;->doInBackground([Ljava/lang/Object;)Lboston/Bus/Map/data/Locations;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lboston/Bus/Map/data/Locations;)V
    .registers 14

    const-wide v10, 0x412e848000000000L

    if-nez p1, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v7

    const-wide v8, 0x412e848000000000L

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double v2, v0, v10

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double v4, v0, v10

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lboston/Bus/Map/main/UpdateAsyncTask;->sortBuses(Lboston/Bus/Map/data/Locations;DDLandroid/os/Handler;)V

    goto :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lboston/Bus/Map/data/Locations;

    invoke-virtual {p0, p1}, Lboston/Bus/Map/main/UpdateAsyncTask;->onPostExecute(Lboston/Bus/Map/data/Locations;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lboston/Bus/Map/main/UpdateAsyncTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->silenceUpdates:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method public publish(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public runUpdate(Lboston/Bus/Map/data/Locations;DDLandroid/content/Context;)V
    .registers 10

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-virtual {p0, v0}, Lboston/Bus/Map/main/UpdateAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lboston/Bus/Map/main/UpdateAsyncTask;->textView:Landroid/widget/TextView;

    return-void
.end method

.method public updateBusLocations(Lboston/Bus/Map/data/Locations;DDLandroid/content/Context;)Lboston/Bus/Map/data/Locations;
    .registers 23

    const-string v4, "BostonBusMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in updateBusLocations, centerLatitude is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->doRefresh:Z

    move v4, v0

    if-nez v4, :cond_28

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lboston/Bus/Map/main/UpdateAsyncTask;->silenceUpdates:Z

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->selectedRouteIndex:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->selectedBusPredictions:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lboston/Bus/Map/data/Locations;->select(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->doRefresh:Z

    move v4, v0

    if-eqz v4, :cond_e4

    :try_start_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->doInit:Z

    move v4, v0

    if-eqz v4, :cond_55

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Retrieving route info from database..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->helper:Lboston/Bus/Map/database/DatabaseHelper;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/data/Locations;->getRouteDataFromDatabase(Lboston/Bus/Map/database/DatabaseHelper;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->doInit:Z

    move v4, v0

    if-eqz v4, :cond_75

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Did not find route info in database, checking if there\'s free space to download it..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->helper:Lboston/Bus/Map/database/DatabaseHelper;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/data/Locations;->checkFreeSpace(Lboston/Bus/Map/database/DatabaseHelper;)Z

    move-result v4

    if-nez v4, :cond_93

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "There is not enough free space to download the route info. About 2MB free is required"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_92
    return-object v4

    :cond_93
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->doInit:Z

    move v4, v0

    if-eqz v4, :cond_a8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Did not find route info in database, downloading it now..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->helper:Lboston/Bus/Map/database/DatabaseHelper;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Lboston/Bus/Map/data/Locations;->initializeAllRoutes(Lboston/Bus/Map/database/DatabaseHelper;Lboston/Bus/Map/main/UpdateAsyncTask;Landroid/content/Context;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Fetching data..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->helper:Lboston/Bus/Map/database/DatabaseHelper;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->inferBusRoutes:Z

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->selectedRouteIndex:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/main/UpdateAsyncTask;->selectedBusPredictions:I

    move v8, v0

    move-object/from16 v4, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object/from16 v13, p0

    invoke-virtual/range {v4 .. v13}, Lboston/Bus/Map/data/Locations;->Refresh(Lboston/Bus/Map/database/DatabaseHelper;ZIIDDLboston/Bus/Map/main/UpdateAsyncTask;)V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_e4} :catch_103
    .catch Lorg/xml/sax/SAXException; {:try_start_40 .. :try_end_e4} :catch_12c
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_e4} :catch_155
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_40 .. :try_end_e4} :catch_17e
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_40 .. :try_end_e4} :catch_1a7
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_e4} :catch_1d0
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_e4} :catch_202

    :cond_e4
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Preparing to draw bus overlays..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Adding bus overlays to map..."

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_92

    :catch_103
    move-exception v4

    move-object v14, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Bus feed is inaccessible; try again later"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v14, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "BostonBusMap"

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_92

    :catch_12c
    move-exception v4

    move-object v14, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "XML parsing exception; cannot update. Maybe there was a hiccup in the feed?"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v14, v4}, Lorg/xml/sax/SAXException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "BostonBusMap"

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_92

    :catch_155
    move-exception v4

    move-object v14, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "XML parsing exception; cannot update. Maybe there was a hiccup in the feed?"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v14, v4}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "BostonBusMap"

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_92

    :catch_17e
    move-exception v4

    move-object v14, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "XML parser configuration exception; cannot update"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v14, v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "BostonBusMap"

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_92

    :catch_1a7
    move-exception v4

    move-object v14, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "XML parser factory configuration exception; cannot update"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v14, v4}, Ljavax/xml/parsers/FactoryConfigurationError;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "BostonBusMap"

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_92

    :catch_1d0
    move-exception v4

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lboston/Bus/Map/util/FeedException;

    if-eqz v4, :cond_201

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "The feed is reporting an error"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v14, v4}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "BostonBusMap"

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_92

    :cond_201
    throw v14

    :catch_202
    move-exception v4

    move-object v14, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Unknown exception occurred"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v14, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "BostonBusMap"

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_92
.end method
