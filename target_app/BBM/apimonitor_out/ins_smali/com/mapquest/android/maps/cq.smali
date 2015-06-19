.class final Lcom/mapquest/android/maps/cq;
.super Ljava/lang/Object;
.source "TrafficManager.java"
.field  a:Lcom/mapquest/android/maps/MapView;
.field  b:Lcom/mapquest/android/maps/ct;
.field  c:Lcom/mapquest/android/maps/cu;
.field  d:Z
.field  e:Lcom/mapquest/android/maps/ct;
.field  f:Z
.field  g:Z
.field  h:Landroid/os/Handler;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Lcom/mapquest/android/maps/cs;
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/mapquest/android/maps/cq;->d:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/cq;->e:Lcom/mapquest/android/maps/ct;
iput-boolean v1, p0, Lcom/mapquest/android/maps/cq;->f:Z
iput-boolean v1, p0, Lcom/mapquest/android/maps/cq;->g:Z
const-string v0, "mq.android.maps.trafficmanager"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "TrafficManager(): "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iput-object p1, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
iput-object p2, p0, Lcom/mapquest/android/maps/cq;->i:Ljava/lang/String;
iput-object p3, p0, Lcom/mapquest/android/maps/cq;->j:Ljava/lang/String;
if-eqz p3, :cond_32
invoke-virtual {p3}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_32
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mapquest/android/maps/cq;->g:Z
:cond_32
new-instance v0, Landroid/os/Handler;
new-instance v1, Lcom/mapquest/android/maps/cr;
invoke-direct {v1, p0}, Lcom/mapquest/android/maps/cr;-><init>(Lcom/mapquest/android/maps/cq;)V
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V
iput-object v0, p0, Lcom/mapquest/android/maps/cq;->h:Landroid/os/Handler;
return-void
.end method
.method static a(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/b;
.registers 7
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
if-nez v0, :cond_9
const/4 v0, 0x0
:goto_8
return-object v0
:try_start_9
:cond_9
invoke-static {p0, p1}, Lcom/mapquest/android/maps/cv;->a(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/b;
:try_end_c
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e
move-result-object v0
goto :goto_8
:catch_e
move-exception v0
const-string v1, "mq.android.maps.trafficmanager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error getting bounding box: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Lcom/mapquest/android/maps/b;
new-instance v1, Lcom/mapquest/android/maps/s;
invoke-direct {v1, v4, v4}, Lcom/mapquest/android/maps/s;-><init>(II)V
new-instance v2, Lcom/mapquest/android/maps/s;
invoke-direct {v2, v4, v4}, Lcom/mapquest/android/maps/s;-><init>(II)V
invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/b;-><init>(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/s;)V
goto :goto_8
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->h:Landroid/os/Handler;
invoke-static {v0}, Lcom/mapquest/android/maps/g;->b(Landroid/os/Handler;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
return-void
.end method
.method final a(Ljava/lang/String;Lcom/mapquest/android/maps/b;)V
.registers 7
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;
move-result-object v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
new-instance v0, Lcom/mapquest/android/maps/ct;
invoke-direct {v0, p0, p1, p2}, Lcom/mapquest/android/maps/ct;-><init>(Lcom/mapquest/android/maps/cq;Ljava/lang/String;Lcom/mapquest/android/maps/b;)V
iget-boolean v1, p0, Lcom/mapquest/android/maps/cq;->d:Z
if-eqz v1, :cond_2d
const-string v1, "mq.android.maps.trafficmanager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Request in flight, queueing request: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iput-object v0, p0, Lcom/mapquest/android/maps/cq;->e:Lcom/mapquest/android/maps/ct;
goto :goto_c
:cond_2d
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/mapquest/android/maps/cq;->d:Z
new-instance v1, Lcom/mapquest/android/maps/cs;
invoke-direct {v1, p0, v0, p0}, Lcom/mapquest/android/maps/cs;-><init>(Lcom/mapquest/android/maps/cq;Lcom/mapquest/android/maps/ct;Lcom/mapquest/android/maps/cq;)V
iput-object v1, p0, Lcom/mapquest/android/maps/cq;->k:Lcom/mapquest/android/maps/cs;
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->k:Lcom/mapquest/android/maps/cs;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/cs;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_c
.end method
.method public final b()V
.registers 12
const/16 v3, -0x28
const-wide v9, 0x3eb0c6f7a0b5ed8dL
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapProvider()Lcom/mapquest/android/maps/an;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapProvider()Lcom/mapquest/android/maps/an;
move-result-object v0
sget-object v1, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
if-ne v0, v1, :cond_1a
:goto_19
:cond_19
return-void
:cond_1a
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v0
iget-object v1, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getConfiguration()Lcom/mapquest/android/maps/c;
move-result-object v1
iget v1, v1, Lcom/mapquest/android/maps/c;->f:I
if-lt v0, v1, :cond_13d
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getWidth()I
move-result v0
iget-object v1, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getHeight()I
move-result v1
new-instance v2, Landroid/graphics/Rect;
add-int/lit8 v0, v0, 0x28
add-int/lit8 v1, v1, 0x28
invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-static {v2, v0}, Lcom/mapquest/android/maps/cq;->a(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/b;
move-result-object v1
if-eqz v1, :cond_19
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-static {v1, v0}, Lcom/mapquest/android/maps/cv;->a(Lcom/mapquest/android/maps/b;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v2, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
if-eqz v2, :cond_19
iget-object v2, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getMapProvider()Lcom/mapquest/android/maps/an;
move-result-object v2
sget-object v3, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;
if-eq v2, v3, :cond_19
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v2
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->i:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v5, "/flow?key="
invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/mapquest/android/maps/cq;->j:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Lcom/mapquest/android/maps/b;->a()Lcom/mapquest/android/maps/s;
move-result-object v5
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/br;
iget-object v6, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v6}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v6
invoke-interface {v0, v6}, Lcom/mapquest/android/maps/br;->a(I)I
move-result v0
const-string v6, "mq.android.maps.trafficmanager"
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Scale: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "&mapLat="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v7, v5, Lcom/mapquest/android/maps/s;->a:I
int-to-double v7, v7
mul-double/2addr v7, v9
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "&mapLng="
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v5, v5, Lcom/mapquest/android/maps/s;->b:I
int-to-double v7, v5
mul-double/2addr v7, v9
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "&mapHeight="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "&mapWidth="
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "&mapScale="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "&imageType=png"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "&projection=merc"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "&sdk=android-api-1.0.4"
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "mq.android.maps.trafficmanager"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Calling traffic with: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/cq;->a(Ljava/lang/String;Lcom/mapquest/android/maps/b;)V
goto/16 :goto_19
:cond_13d
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/cu;->c()V
iget-object v0, p0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V
goto/16 :goto_19
.end method