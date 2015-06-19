.class public Lboston/Bus/Map/main/UpdateHandler;
.super Landroid/os/Handler;
.source "UpdateHandler.java"
.field public static final MAJOR:I = 0x1
.field public static final MINOR:I = 0x2
.field public static final busLocationsFetchDelay:I = 0x32c8
.field public static final predictionsFetchDelay:I = 0x3a98
.field private final IMMEDIATE_REFRESH:I
.field private final busLocations:Lboston/Bus/Map/data/Locations;
.field private final busOverlay:Lboston/Bus/Map/ui/BusOverlay;
.field private final context:Landroid/content/Context;
.field private final helper:Lboston/Bus/Map/database/DatabaseHelper;
.field private hideHighlightCircle:Z
.field private inferBusRoutes:Z
.field private isFirstRefresh:Z
.field private lastUpdateTime:D
.field private final locationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
.field private final mapView:Lcom/google/android/maps/MapView;
.field private final maxOverlays:I
.field private minorUpdate:Lboston/Bus/Map/main/UpdateAsyncTask;
.field private final routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
.field private selectedBusPredictions:I
.field private selectedRouteIndex:I
.field private showCoarseRouteLine:Z
.field private showRouteLine:Z
.field private showUnpredictable:Z
.field private final textView:Landroid/widget/TextView;
.field private updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
.field private updateConstantly:Z
.method public constructor <init>(Landroid/widget/TextView;Lcom/google/android/maps/MapView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lboston/Bus/Map/data/Locations;Landroid/content/Context;Lboston/Bus/Map/database/DatabaseHelper;Lboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/ui/LocationOverlay;Lboston/Bus/Map/main/UpdateAsyncTask;)V
.registers 14
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
const/16 v0, 0x17
iput v0, p0, Lboston/Bus/Map/main/UpdateHandler;->maxOverlays:I
const/4 v0, 0x1
iput v0, p0, Lboston/Bus/Map/main/UpdateHandler;->IMMEDIATE_REFRESH:I
const/4 v0, -0x1
iput v0, p0, Lboston/Bus/Map/main/UpdateHandler;->selectedRouteIndex:I
iput-object p1, p0, Lboston/Bus/Map/main/UpdateHandler;->textView:Landroid/widget/TextView;
iput-object p2, p0, Lboston/Bus/Map/main/UpdateHandler;->mapView:Lcom/google/android/maps/MapView;
iput-object p5, p0, Lboston/Bus/Map/main/UpdateHandler;->busLocations:Lboston/Bus/Map/data/Locations;
iput-object p7, p0, Lboston/Bus/Map/main/UpdateHandler;->helper:Lboston/Bus/Map/database/DatabaseHelper;
iput-object p8, p0, Lboston/Bus/Map/main/UpdateHandler;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
iput-object p9, p0, Lboston/Bus/Map/main/UpdateHandler;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
iput-object p10, p0, Lboston/Bus/Map/main/UpdateHandler;->locationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
long-to-double v0, v0
iput-wide v0, p0, Lboston/Bus/Map/main/UpdateHandler;->lastUpdateTime:D
iput-object p6, p0, Lboston/Bus/Map/main/UpdateHandler;->context:Landroid/content/Context;
iput-object p11, p0, Lboston/Bus/Map/main/UpdateHandler;->updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
return-void
.end method
.method private getCurrentFetchDelay()I
.registers 2
const/16 v0, 0x32c8
return v0
.end method
.method private runUpdateTask(Ljava/lang/String;Z)V
.registers 29
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
long-to-double v3, v3
move-wide v0, v3
move-object/from16 v2, p0
iput-wide v0, v2, Lboston/Bus/Map/main/UpdateHandler;->lastUpdateTime:D
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
move-object v3, v0
if-eqz v3, :cond_23
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
move-object v3, v0
invoke-virtual {v3}, Lboston/Bus/Map/main/UpdateAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;
move-result-object v3
sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
invoke-virtual {v3, v4}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_23
:goto_22
return-void
:cond_23
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->mapView:Lcom/google/android/maps/MapView;
move-object v3, v0
invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I
move-result v3
int-to-float v3, v3
const v4, 0x49742400
div-float/2addr v3, v4
move v0, v3
float-to-double v0, v0
move-wide/from16 v21, v0
invoke-virtual/range {v25 .. v25}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I
move-result v3
int-to-float v3, v3
const v4, 0x49742400
div-float/2addr v3, v4
move v0, v3
float-to-double v0, v0
move-wide/from16 v23, v0
new-instance v3, Lboston/Bus/Map/main/UpdateAsyncTask;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->textView:Landroid/widget/TextView;
move-object v4, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->mapView:Lcom/google/android/maps/MapView;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->locationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
move-object v6, v0
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getShowUnpredictable()Z
move-result v8
const/4 v9, 0x1
const/16 v10, 0x17
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getHideHighlightCircle()Z
move-result v7
if-nez v7, :cond_b5
const/4 v7, 0x1
move v11, v7
:goto_66
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getInferBusRoutes()Z
move-result v12
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
move-object v13, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
move-object v14, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->helper:Lboston/Bus/Map/database/DatabaseHelper;
move-object v15, v0
move-object/from16 v0, p0
iget v0, v0, Lboston/Bus/Map/main/UpdateHandler;->selectedRouteIndex:I
move/from16 v16, v0
move-object/from16 v0, p0
iget v0, v0, Lboston/Bus/Map/main/UpdateHandler;->selectedBusPredictions:I
move/from16 v17, v0
move-object/from16 v0, p0
iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateHandler;->showRouteLine:Z
move/from16 v19, v0
move-object/from16 v0, p0
iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateHandler;->showCoarseRouteLine:Z
move/from16 v20, v0
move-object/from16 v7, p1
move/from16 v18, p2
invoke-direct/range {v3 .. v20}, Lboston/Bus/Map/main/UpdateAsyncTask;-><init>(Landroid/widget/TextView;Lcom/google/android/maps/MapView;Lboston/Bus/Map/ui/LocationOverlay;Ljava/lang/String;ZZIZZLboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/database/DatabaseHelper;IIZZZ)V
move-object v0, v3
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/UpdateHandler;->updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
move-object v3, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->busLocations:Lboston/Bus/Map/data/Locations;
move-object v4, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->context:Landroid/content/Context;
move-object v9, v0
move-wide/from16 v5, v21
move-wide/from16 v7, v23
invoke-virtual/range {v3 .. v9}, Lboston/Bus/Map/main/UpdateAsyncTask;->runUpdate(Lboston/Bus/Map/data/Locations;DDLandroid/content/Context;)V
goto/16 :goto_22
:cond_b5
const/4 v7, 0x0
move v11, v7
goto :goto_66
.end method
.method public getHideHighlightCircle()Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateHandler;->hideHighlightCircle:Z
return v0
.end method
.method public getInferBusRoutes()Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateHandler;->inferBusRoutes:Z
return v0
.end method
.method public getInitAllRouteInfo()Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateHandler;->isFirstRefresh:Z
return v0
.end method
.method public getLastUpdateTime()D
.registers 3
iget-wide v0, p0, Lboston/Bus/Map/main/UpdateHandler;->lastUpdateTime:D
return-wide v0
.end method
.method public getMajorHandler()Lboston/Bus/Map/main/UpdateAsyncTask;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/main/UpdateHandler;->updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
return-object v0
.end method
.method public getShowCoarseRouteLine()Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateHandler;->showCoarseRouteLine:Z
return v0
.end method
.method public getShowRouteLine()Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateHandler;->showRouteLine:Z
return v0
.end method
.method public getShowUnpredictable()Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateHandler;->showUnpredictable:Z
return v0
.end method
.method public getUpdateConstantly()Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/main/UpdateHandler;->updateConstantly:Z
return v0
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 32
move-object/from16 v0, p1
iget v0, v0, Landroid/os/Message;->what:I
move v4, v0
packed-switch v4, :pswitch_data_10a
:goto_8
:cond_8
return-void
:pswitch_9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
move-wide v0, v4
long-to-double v0, v0
move-wide/from16 v26, v0
invoke-direct/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getCurrentFetchDelay()I
move-result v28
move-object/from16 v0, p0
iget-wide v0, v0, Lboston/Bus/Map/main/UpdateHandler;->lastUpdateTime:D
move-wide v4, v0
sub-double v4, v26, v4
move/from16 v0, v28
int-to-double v0, v0
move-wide v6, v0
cmpl-double v4, v4, v6
if-gtz v4, :cond_2c
move-object/from16 v0, p1
iget v0, v0, Landroid/os/Message;->arg1:I
move v4, v0
const/4 v5, 0x1
if-ne v4, v5, :cond_40
:cond_2c
const-string v4, "Finished update!"
move-object/from16 v0, p0
iget-boolean v0, v0, Lboston/Bus/Map/main/UpdateHandler;->isFirstRefresh:Z
move v5, v0
move-object/from16 v0, p0
move-object v1, v4
move v2, v5
invoke-direct {v0, v1, v2}, Lboston/Bus/Map/main/UpdateHandler;->runUpdateTask(Ljava/lang/String;Z)V
const/4 v4, 0x0
move v0, v4
move-object/from16 v1, p0
iput-boolean v0, v1, Lboston/Bus/Map/main/UpdateHandler;->isFirstRefresh:Z
:cond_40
move-object/from16 v0, p1
iget v0, v0, Landroid/os/Message;->arg1:I
move v4, v0
const/4 v5, 0x1
if-eq v4, v5, :cond_8
const/4 v4, 0x1
move-object/from16 v0, p0
move v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateHandler;->removeMessages(I)V
const/4 v4, 0x1
move/from16 v0, v28
int-to-long v0, v0
move-wide v5, v0
move-object/from16 v0, p0
move v1, v4
move-wide v2, v5
invoke-virtual {v0, v1, v2, v3}, Lboston/Bus/Map/main/UpdateHandler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_8
:pswitch_5c
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->minorUpdate:Lboston/Bus/Map/main/UpdateAsyncTask;
move-object v4, v0
if-eqz v4, :cond_74
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->minorUpdate:Lboston/Bus/Map/main/UpdateAsyncTask;
move-object v4, v0
invoke-virtual {v4}, Lboston/Bus/Map/main/UpdateAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;
move-result-object v4
sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;
invoke-virtual {v4, v5}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_8
:cond_74
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->mapView:Lcom/google/android/maps/MapView;
move-object v4, v0
invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;
move-result-object v29
invoke-virtual/range {v29 .. v29}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I
move-result v4
int-to-float v4, v4
const v5, 0x49742400
div-float/2addr v4, v5
move v0, v4
float-to-double v0, v0
move-wide/from16 v22, v0
invoke-virtual/range {v29 .. v29}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I
move-result v4
int-to-float v4, v4
const v5, 0x49742400
div-float/2addr v4, v5
move v0, v4
float-to-double v0, v0
move-wide/from16 v24, v0
const/4 v4, 0x2
move-object/from16 v0, p0
move v1, v4
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateHandler;->removeMessages(I)V
new-instance v4, Lboston/Bus/Map/main/UpdateAsyncTask;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->textView:Landroid/widget/TextView;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->mapView:Lcom/google/android/maps/MapView;
move-object v6, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->locationOverlay:Lboston/Bus/Map/ui/LocationOverlay;
move-object v7, v0
const/4 v8, 0x0
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getShowUnpredictable()Z
move-result v9
const/4 v10, 0x0
const/16 v11, 0x17
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getHideHighlightCircle()Z
move-result v12
if-nez v12, :cond_108
const/4 v12, 0x1
:goto_be
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getInferBusRoutes()Z
move-result v13
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->busOverlay:Lboston/Bus/Map/ui/BusOverlay;
move-object v14, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->routeOverlay:Lboston/Bus/Map/ui/RouteOverlay;
move-object v15, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->helper:Lboston/Bus/Map/database/DatabaseHelper;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget v0, v0, Lboston/Bus/Map/main/UpdateHandler;->selectedRouteIndex:I
move/from16 v17, v0
move-object/from16 v0, p0
iget v0, v0, Lboston/Bus/Map/main/UpdateHandler;->selectedBusPredictions:I
move/from16 v18, v0
const/16 v19, 0x0
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getShowRouteLine()Z
move-result v20
invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/main/UpdateHandler;->getShowCoarseRouteLine()Z
move-result v21
invoke-direct/range {v4 .. v21}, Lboston/Bus/Map/main/UpdateAsyncTask;-><init>(Landroid/widget/TextView;Lcom/google/android/maps/MapView;Lboston/Bus/Map/ui/LocationOverlay;Ljava/lang/String;ZZIZZLboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/ui/RouteOverlay;Lboston/Bus/Map/database/DatabaseHelper;IIZZZ)V
move-object v0, v4
move-object/from16 v1, p0
iput-object v0, v1, Lboston/Bus/Map/main/UpdateHandler;->minorUpdate:Lboston/Bus/Map/main/UpdateAsyncTask;
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->minorUpdate:Lboston/Bus/Map/main/UpdateAsyncTask;
move-object v4, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->busLocations:Lboston/Bus/Map/data/Locations;
move-object v5, v0
move-object/from16 v0, p0
iget-object v0, v0, Lboston/Bus/Map/main/UpdateHandler;->context:Landroid/content/Context;
move-object v10, v0
move-wide/from16 v6, v22
move-wide/from16 v8, v24
invoke-virtual/range {v4 .. v10}, Lboston/Bus/Map/main/UpdateAsyncTask;->runUpdate(Lboston/Bus/Map/data/Locations;DDLandroid/content/Context;)V
goto/16 :goto_8
:cond_108
const/4 v12, 0x0
goto :goto_be
:pswitch_data_10a
.packed-switch 0x1
:pswitch_9
:pswitch_5c
.end packed-switch
.end method
.method public immediateRefresh()V
.registers 3
const/4 v1, 0x1
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
iput v1, v0, Landroid/os/Message;->arg1:I
iput v1, v0, Landroid/os/Message;->what:I
invoke-virtual {p0, v0}, Lboston/Bus/Map/main/UpdateHandler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public instantRefresh()Z
.registers 8
const/4 v6, 0x0
const/4 v5, 0x1
invoke-direct {p0}, Lboston/Bus/Map/main/UpdateHandler;->getCurrentFetchDelay()I
move-result v0
invoke-virtual {p0}, Lboston/Bus/Map/main/UpdateHandler;->getUpdateConstantly()Z
move-result v1
if-eqz v1, :cond_17
invoke-virtual {p0, v5}, Lboston/Bus/Map/main/UpdateHandler;->removeMessages(I)V
int-to-double v1, v0
const-wide/high16 v3, 0x3ff8
mul-double/2addr v1, v3
double-to-long v1, v1
invoke-virtual {p0, v5, v1, v2}, Lboston/Bus/Map/main/UpdateHandler;->sendEmptyMessageDelayed(IJ)Z
:cond_17
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
long-to-double v1, v1
iget-wide v3, p0, Lboston/Bus/Map/main/UpdateHandler;->lastUpdateTime:D
sub-double/2addr v1, v3
int-to-double v3, v0
cmpg-double v1, v1, v3
if-gez v1, :cond_26
move v1, v6
:goto_25
return v1
:cond_26
const-string v1, "Finished update!"
iget-boolean v2, p0, Lboston/Bus/Map/main/UpdateHandler;->isFirstRefresh:Z
invoke-direct {p0, v1, v2}, Lboston/Bus/Map/main/UpdateHandler;->runUpdateTask(Ljava/lang/String;Z)V
iput-boolean v6, p0, Lboston/Bus/Map/main/UpdateHandler;->isFirstRefresh:Z
move v1, v5
goto :goto_25
.end method
.method public kill()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lboston/Bus/Map/main/UpdateHandler;->updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
if-eqz v0, :cond_a
iget-object v0, p0, Lboston/Bus/Map/main/UpdateHandler;->updateAsyncTask:Lboston/Bus/Map/main/UpdateAsyncTask;
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->cancel(Z)Z
:cond_a
iget-object v0, p0, Lboston/Bus/Map/main/UpdateHandler;->minorUpdate:Lboston/Bus/Map/main/UpdateAsyncTask;
if-eqz v0, :cond_13
iget-object v0, p0, Lboston/Bus/Map/main/UpdateHandler;->minorUpdate:Lboston/Bus/Map/main/UpdateAsyncTask;
invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateAsyncTask;->cancel(Z)Z
:cond_13
return-void
.end method
.method public removeAllMessages()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lboston/Bus/Map/main/UpdateHandler;->removeMessages(I)V
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lboston/Bus/Map/main/UpdateHandler;->removeMessages(I)V
return-void
.end method
.method public resume()V
.registers 2
invoke-virtual {p0}, Lboston/Bus/Map/main/UpdateHandler;->removeAllMessages()V
invoke-virtual {p0}, Lboston/Bus/Map/main/UpdateHandler;->getUpdateConstantly()Z
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0}, Lboston/Bus/Map/main/UpdateHandler;->instantRefresh()Z
:cond_c
return-void
.end method
.method public setHideHighlightCircle(Z)V
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/UpdateHandler;->hideHighlightCircle:Z
return-void
.end method
.method public setInferBusRoutes(Z)V
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/UpdateHandler;->inferBusRoutes:Z
return-void
.end method
.method public setInitAllRouteInfo(Z)V
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/UpdateHandler;->isFirstRefresh:Z
return-void
.end method
.method public setLastUpdateTime(D)V
.registers 3
iput-wide p1, p0, Lboston/Bus/Map/main/UpdateHandler;->lastUpdateTime:D
return-void
.end method
.method public setRouteIndex(I)V
.registers 2
iput p1, p0, Lboston/Bus/Map/main/UpdateHandler;->selectedRouteIndex:I
return-void
.end method
.method public setSelectedBusPredictions(I)V
.registers 2
iput p1, p0, Lboston/Bus/Map/main/UpdateHandler;->selectedBusPredictions:I
return-void
.end method
.method public setShowCoarseRouteLine(Z)V
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/UpdateHandler;->showCoarseRouteLine:Z
return-void
.end method
.method public setShowRouteLine(Z)V
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/UpdateHandler;->showRouteLine:Z
return-void
.end method
.method public setShowUnpredictable(Z)V
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/UpdateHandler;->showUnpredictable:Z
return-void
.end method
.method public setUpdateConstantly(Z)V
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/main/UpdateHandler;->updateConstantly:Z
return-void
.end method
.method public triggerUpdate()V
.registers 2
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lboston/Bus/Map/main/UpdateHandler;->sendEmptyMessage(I)Z
return-void
.end method
.method public triggerUpdate(I)V
.registers 5
const/4 v0, 0x2
int-to-long v1, p1
invoke-virtual {p0, v0, v1, v2}, Lboston/Bus/Map/main/UpdateHandler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method