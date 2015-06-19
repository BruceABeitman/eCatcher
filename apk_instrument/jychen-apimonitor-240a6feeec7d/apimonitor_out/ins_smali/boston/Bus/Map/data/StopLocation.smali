.class public Lboston/Bus/Map/data/StopLocation;
.super Ljava/lang/Object;
.source "StopLocation.java"
.implements Lboston/Bus/Map/data/Location;
.implements Lboston/Bus/Map/util/CanBeSerialized;
.field private static final LOCATIONTYPE:I = 0x3
.field private static final routeComparator:Lboston/Bus/Map/util/RouteComparator;
.field private final busStop:Landroid/graphics/drawable/Drawable;
.field private isFavorite:Z
.field private final latitude:F
.field private final longitude:F
.field private predictions:Ljava/util/ArrayList;
.field private final routes:Ljava/util/TreeSet;
.field private final tag:Ljava/lang/String;
.field private final title:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lboston/Bus/Map/util/RouteComparator;
invoke-direct {v0}, Lboston/Bus/Map/util/RouteComparator;-><init>()V
sput-object v0, Lboston/Bus/Map/data/StopLocation;->routeComparator:Lboston/Bus/Map/util/RouteComparator;
return-void
.end method
.method public constructor <init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const v2, 0x3c8efa35
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
new-instance v0, Ljava/util/TreeSet;
sget-object v1, Lboston/Bus/Map/data/StopLocation;->routeComparator:Lboston/Bus/Map/util/RouteComparator;
invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
iput-object v0, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
mul-float v0, p1, v2
iput v0, p0, Lboston/Bus/Map/data/StopLocation;->latitude:F
mul-float v0, p2, v2
iput v0, p0, Lboston/Bus/Map/data/StopLocation;->longitude:F
iput-object p3, p0, Lboston/Bus/Map/data/StopLocation;->busStop:Landroid/graphics/drawable/Drawable;
iput-object p4, p0, Lboston/Bus/Map/data/StopLocation;->tag:Ljava/lang/String;
iput-object p5, p0, Lboston/Bus/Map/data/StopLocation;->title:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lboston/Bus/Map/util/Box;Landroid/graphics/drawable/Drawable;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
new-instance v0, Ljava/util/TreeSet;
sget-object v1, Lboston/Bus/Map/data/StopLocation;->routeComparator:Lboston/Bus/Map/util/RouteComparator;
invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V
iput-object v0, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readFloat()F
move-result v0
iput v0, p0, Lboston/Bus/Map/data/StopLocation;->latitude:F
invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readFloat()F
move-result v0
iput v0, p0, Lboston/Bus/Map/data/StopLocation;->longitude:F
invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lboston/Bus/Map/data/StopLocation;->tag:Ljava/lang/String;
invoke-virtual {p1}, Lboston/Bus/Map/util/Box;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lboston/Bus/Map/data/StopLocation;->title:Ljava/lang/String;
iput-object p2, p0, Lboston/Bus/Map/data/StopLocation;->busStop:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public addPrediction(IJILjava/lang/String;Lboston/Bus/Map/data/RouteConfig;)V
.registers 16
invoke-virtual {p6, p5}, Lboston/Bus/Map/data/RouteConfig;->getDirectionTitle(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
if-nez v0, :cond_f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
:cond_f
iget-object v7, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
monitor-enter v7
:try_start_12
iget-object v8, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
new-instance v0, Lboston/Bus/Map/data/Prediction;
move v1, p1
move-wide v2, p2
move v4, p4
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lboston/Bus/Map/data/Prediction;-><init>(IJILjava/lang/String;Lboston/Bus/Map/data/RouteConfig;)V
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit v7
return-void
:catchall_22
move-exception v0
monitor-exit v7
:try_end_24
.catchall {:try_start_12 .. :try_end_24} :catchall_22
throw v0
.end method
.method public addRoute(Lboston/Bus/Map/data/RouteConfig;)V
.registers 4
iget-object v0, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
monitor-enter v0
:try_start_3
iget-object v1, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
monitor-exit v0
return-void
:catchall_a
move-exception v1
monitor-exit v0
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v1
.end method
.method public clearPredictions(Lboston/Bus/Map/data/RouteConfig;)V
.registers 7
iget-object v3, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
if-nez v3, :cond_5
:goto_4
return-void
:cond_5
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
monitor-enter v3
:try_start_d
iget-object v4, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_13
:goto_13
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_2c
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lboston/Bus/Map/data/Prediction;
invoke-virtual {v2}, Lboston/Bus/Map/data/Prediction;->getRoute()Lboston/Bus/Map/data/RouteConfig;
move-result-object v4
if-eq v4, p1, :cond_13
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_13
:catchall_29
move-exception v4
monitor-exit v3
:try_end_2b
.catchall {:try_start_d .. :try_end_2b} :catchall_29
throw v4
:try_start_2c
:cond_2c
iget-object v4, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
iget-object v4, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
monitor-exit v3
:try_end_37
.catchall {:try_start_2c .. :try_end_37} :catchall_29
goto :goto_4
.end method
.method public createPredictionsUrl(Ljava/lang/StringBuilder;Lboston/Bus/Map/data/RouteConfig;)V
.registers 7
if-eqz p2, :cond_8
iget-object v2, p0, Lboston/Bus/Map/data/StopLocation;->tag:Ljava/lang/String;
invoke-static {p1, p2, v2}, Lboston/Bus/Map/transit/TransitSystem;->bindPredictionElementsForUrl(Ljava/lang/StringBuilder;Lboston/Bus/Map/data/RouteConfig;Ljava/lang/String;)V
:goto_7
return-void
:cond_8
iget-object v2, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
monitor-enter v2
:try_start_b
iget-object v3, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_11
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_26
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lboston/Bus/Map/data/RouteConfig;
iget-object v3, p0, Lboston/Bus/Map/data/StopLocation;->tag:Ljava/lang/String;
invoke-static {p1, v1, v3}, Lboston/Bus/Map/transit/TransitSystem;->bindPredictionElementsForUrl(Ljava/lang/StringBuilder;Lboston/Bus/Map/data/RouteConfig;Ljava/lang/String;)V
goto :goto_11
:catchall_23
move-exception v3
monitor-exit v2
:try_end_25
.catchall {:try_start_b .. :try_end_25} :catchall_23
throw v3
:cond_26
:try_start_26
monitor-exit v2
:try_end_27
.catchall {:try_start_26 .. :try_end_27} :catchall_23
goto :goto_7
.end method
.method public distanceFrom(DD)D
.registers 13
iget v0, p0, Lboston/Bus/Map/data/StopLocation;->latitude:F
float-to-double v0, v0
iget v2, p0, Lboston/Bus/Map/data/StopLocation;->longitude:F
float-to-double v2, v2
move-wide v4, p1
move-wide v6, p3
invoke-static/range {v0 .. v7}, Lboston/Bus/Map/data/LocationConstants;->computeCompareDistance(DDDD)D
move-result-wide v0
return-wide v0
.end method
.method public getDrawable(Landroid/content/Context;ZZ)Landroid/graphics/drawable/Drawable;
.registers 5
iget-object v0, p0, Lboston/Bus/Map/data/StopLocation;->busStop:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getHeading()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getId()I
.registers 3
iget-object v0, p0, Lboston/Bus/Map/data/StopLocation;->tag:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
const v1, 0xffffff
and-int/2addr v0, v1
const/high16 v1, 0x300
or-int/2addr v0, v1
return v0
.end method
.method public getLatitudeAsDegrees()D
.registers 3
iget v0, p0, Lboston/Bus/Map/data/StopLocation;->latitude:F
const v1, 0x42652ee1
mul-float/2addr v0, v1
float-to-double v0, v0
return-wide v0
.end method
.method public getLongitudeAsDegrees()D
.registers 3
iget v0, p0, Lboston/Bus/Map/data/StopLocation;->longitude:F
const v1, 0x42652ee1
mul-float/2addr v0, v1
float-to-double v0, v0
return-wide v0
.end method
.method public getStopTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/data/StopLocation;->tag:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lboston/Bus/Map/data/StopLocation;->title:Ljava/lang/String;
return-object v0
.end method
.method public hasHeading()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isFavorite()Z
.registers 2
iget-boolean v0, p0, Lboston/Bus/Map/data/StopLocation;->isFavorite:Z
return v0
.end method
.method public makeSnippet(Lboston/Bus/Map/data/RouteConfig;)Ljava/lang/String;
.registers 10
const-string v4, ""
iget-object v5, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
if-nez v5, :cond_8
move-object v5, v4
:goto_7
return-object v5
:cond_8
iget-object v5, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
monitor-enter v5
:try_start_b
iget-object v6, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
if-nez v6, :cond_17
const/4 v6, 0x0
monitor-exit v5
move-object v5, v6
goto :goto_7
:cond_17
iget-object v6, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V
const/4 v2, 0x3
const/4 v0, 0x0
iget-object v6, p0, Lboston/Bus/Map/data/StopLocation;->predictions:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_24
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_58
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lboston/Bus/Map/data/Prediction;
if-eqz p1, :cond_38
invoke-virtual {v3}, Lboston/Bus/Map/data/Prediction;->getRoute()Lboston/Bus/Map/data/RouteConfig;
move-result-object v6
if-ne p1, v6, :cond_24
:cond_38
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "\n"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v3}, Lboston/Bus/Map/data/Prediction;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
add-int/lit8 v0, v0, 0x1
const/4 v6, 0x3
if-lt v0, v6, :cond_24
:cond_58
monitor-exit v5
move-object v5, v4
goto :goto_7
:catchall_5b
move-exception v6
monitor-exit v5
:try_end_5d
.catchall {:try_start_b .. :try_end_5d} :catchall_5b
throw v6
.end method
.method public makeTitle()Ljava/lang/String;
.registers 8
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Stop: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lboston/Bus/Map/data/StopLocation;->tag:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", Routes: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v1, 0x0
iget-object v4, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
monitor-enter v4
:try_start_1f
iget-object v5, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_25
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_66
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lboston/Bus/Map/data/RouteConfig;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v3}, Lboston/Bus/Map/data/RouteConfig;->getRouteName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v5, p0, Lboston/Bus/Map/data/StopLocation;->routes:Ljava/util/TreeSet;
invoke-virtual {v5}, Ljava/util/TreeSet;->size()I
move-result v5
const/4 v6, 0x1
sub-int/2addr v5, v6
if-eq v1, v5, :cond_63
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ", "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
:cond_63
add-int/lit8 v1, v1, 0x1
goto :goto_25
:cond_66
monitor-exit v4
:try_end_67
.catchall {:try_start_1f .. :try_end_67} :catchall_81
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\nTitle: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lboston/Bus/Map/data/StopLocation;->title:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
:catchall_81
move-exception v5
:try_start_82
monitor-exit v4
:try_end_83
.catchall {:try_start_82 .. :try_end_83} :catchall_81
throw v5
.end method
.method public serialize(Lboston/Bus/Map/util/Box;)V
.registers 3
iget v0, p0, Lboston/Bus/Map/data/StopLocation;->latitude:F
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeFloat(F)V
iget v0, p0, Lboston/Bus/Map/data/StopLocation;->longitude:F
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeFloat(F)V
iget-object v0, p0, Lboston/Bus/Map/data/StopLocation;->tag:Ljava/lang/String;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lboston/Bus/Map/data/StopLocation;->title:Ljava/lang/String;
invoke-virtual {p1, v0}, Lboston/Bus/Map/util/Box;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public setFavorite(Z)V
.registers 2
iput-boolean p1, p0, Lboston/Bus/Map/data/StopLocation;->isFavorite:Z
return-void
.end method