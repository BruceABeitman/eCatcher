.class final Lcom/mapquest/android/maps/bt;
.super Ljava/lang/Object;
.source "ThreadBasedTileDownloader.java"
.implements Lcom/mapquest/android/maps/cd;
.field  a:Lcom/mapquest/android/maps/MapView;
.field  b:Lcom/mapquest/android/maps/cb;
.field  c:Ljava/util/Set;
.field  d:Lcom/mapquest/android/maps/t;
.field  e:Z
.field private f:Ljava/util/Map;
.field private g:I
.field private h:Ljava/util/ArrayList;
.field private i:Lcom/mapquest/android/maps/by;
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/cb;)V
.registers 6
const/4 v2, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x2
iput v1, p0, Lcom/mapquest/android/maps/bt;->g:I
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v1
iput-object v1, p0, Lcom/mapquest/android/maps/bt;->c:Ljava/util/Set;
iput-object v2, p0, Lcom/mapquest/android/maps/bt;->d:Lcom/mapquest/android/maps/t;
iput-object v2, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/mapquest/android/maps/bt;->e:Z
new-instance v1, Lcom/mapquest/android/maps/by;
invoke-direct {v1, p0, v0}, Lcom/mapquest/android/maps/by;-><init>(Lcom/mapquest/android/maps/bt;B)V
iput-object v1, p0, Lcom/mapquest/android/maps/bt;->i:Lcom/mapquest/android/maps/by;
iput-object p1, p0, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
iput-object p2, p0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
new-instance v1, Ljava/util/LinkedHashMap;
const/16 v2, 0x1e
invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V
iput-object v1, p0, Lcom/mapquest/android/maps/bt;->f:Ljava/util/Map;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
invoke-static {}, Lcom/mapquest/android/maps/be;->a()Z
move-result v1
iput-boolean v1, p0, Lcom/mapquest/android/maps/bt;->e:Z
iget-object v1, p0, Lcom/mapquest/android/maps/bt;->i:Lcom/mapquest/android/maps/by;
invoke-static {v1}, Lcom/mapquest/android/maps/g;->a(Landroid/os/Handler;)V
:goto_40
iget v1, p0, Lcom/mapquest/android/maps/bt;->g:I
if-ge v0, v1, :cond_54
new-instance v1, Lcom/mapquest/android/maps/bw;
invoke-direct {v1, p0}, Lcom/mapquest/android/maps/bw;-><init>(Lcom/mapquest/android/maps/bt;)V
iget-object v2, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v1}, Lcom/mapquest/android/maps/bz;->start()V
add-int/lit8 v0, v0, 0x1
goto :goto_40
:cond_54
return-void
.end method
.method static synthetic a(Lcom/mapquest/android/maps/bt;Lcom/mapquest/android/maps/ca;)V
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->c:Ljava/util/Set;
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method final a()Lcom/mapquest/android/maps/t;
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->d:Lcom/mapquest/android/maps/t;
if-nez v0, :cond_15
monitor-enter p0
:try_start_5
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->d:Lcom/mapquest/android/maps/t;
if-nez v0, :cond_14
new-instance v0, Lcom/mapquest/android/maps/t;
iget v1, p0, Lcom/mapquest/android/maps/bt;->g:I
iget v2, p0, Lcom/mapquest/android/maps/bt;->g:I
invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/t;-><init>(II)V
iput-object v0, p0, Lcom/mapquest/android/maps/bt;->d:Lcom/mapquest/android/maps/t;
:cond_14
monitor-exit p0
:try_end_15
.catchall {:try_start_5 .. :try_end_15} :catchall_18
:cond_15
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->d:Lcom/mapquest/android/maps/t;
return-object v0
:catchall_18
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a(Lcom/mapquest/android/maps/ca;)V
.registers 5
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;
iget-object v1, p0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
if-nez v1, :cond_d
const-string v1, "mq.maps.downloader"
const-string v2, "TileCacher is null. DOH!"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
iget-object v1, p0, Lcom/mapquest/android/maps/bt;->f:Ljava/util/Map;
invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final b()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_11
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bz;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bz;->b()V
goto :goto_11
:cond_21
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->i:Lcom/mapquest/android/maps/by;
invoke-static {v0}, Lcom/mapquest/android/maps/g;->b(Landroid/os/Handler;)V
iput-object v3, p0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->d:Lcom/mapquest/android/maps/t;
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->d:Lcom/mapquest/android/maps/t;
iget-object v1, v0, Lcom/mapquest/android/maps/t;->b:Lorg/apache/http/impl/client/DefaultHttpClient;
if-eqz v1, :cond_4c
iget-object v1, v0, Lcom/mapquest/android/maps/t;->c:Lcom/mapquest/android/maps/v;
const/4 v2, 0x1
iput-boolean v2, v1, Lcom/mapquest/android/maps/v;->a:Z
monitor-enter v1
:try_start_3d
invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:try_end_41
.catchall {:try_start_3d .. :try_end_41} :catchall_4f
iget-object v1, v0, Lcom/mapquest/android/maps/t;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V
iput-object v3, v0, Lcom/mapquest/android/maps/t;->c:Lcom/mapquest/android/maps/v;
iput-object v3, v0, Lcom/mapquest/android/maps/t;->a:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
iput-object v3, v0, Lcom/mapquest/android/maps/t;->b:Lorg/apache/http/impl/client/DefaultHttpClient;
:cond_4c
iput-object v3, p0, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
return-void
:catchall_4f
move-exception v0
monitor-exit v1
throw v0
.end method
.method final b(Lcom/mapquest/android/maps/ca;)V
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->c:Ljava/util/Set;
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method public final c(Lcom/mapquest/android/maps/ca;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
invoke-virtual {p1}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v0
if-nez v0, :cond_20
const-string v0, "mq.maps.downloader"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "no bytes for tile:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p1, Lcom/mapquest/android/maps/ca;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:goto_1f
:cond_1f
return-void
:cond_20
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
if-eqz v1, :cond_1f
iget v1, p1, Lcom/mapquest/android/maps/ca;->b:I
iget v2, v0, Lcom/mapquest/android/maps/MapView;->c:I
if-ne v1, v2, :cond_1f
iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->b:Lcom/mapquest/android/maps/ce;
invoke-interface {v1}, Lcom/mapquest/android/maps/ce;->d()Lcom/mapquest/android/maps/cf;
move-result-object v1
sget-object v2, Lcom/mapquest/android/maps/cf;->a:Lcom/mapquest/android/maps/cf;
if-ne v1, v2, :cond_58
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;
sget-object v2, Lcom/mapquest/android/maps/cf;->a:Lcom/mapquest/android/maps/cf;
if-ne v1, v2, :cond_1f
:goto_40
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
if-eqz v1, :cond_4c
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v1
if-eqz v1, :cond_5f
:cond_4c
iget-object v0, v0, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;
sget-object v1, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->c(Lcom/mapquest/android/maps/ca;)V
goto :goto_1f
:cond_58
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;
sget-object v2, Lcom/mapquest/android/maps/cf;->a:Lcom/mapquest/android/maps/cf;
if-eq v1, v2, :cond_1f
goto :goto_40
:cond_5f
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V
goto :goto_1f
.end method
.method public final d()V
.registers 8
const/4 v2, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v3
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v4
if-nez v4, :cond_10
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
move v1, v2
:goto_1b
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3b
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
iget-object v6, p0, Lcom/mapquest/android/maps/bt;->c:Ljava/util/Set;
iget-object v0, v0, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;
invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ef
add-int/lit8 v0, v1, 0x1
:goto_39
move v1, v0
goto :goto_1b
:cond_3b
sub-int v0, v4, v1
sub-int v1, v3, v1
add-int/2addr v0, v1
int-to-double v3, v4
const-wide/high16 v5, 0x3ff4
mul-double/2addr v3, v5
double-to-int v1, v3
if-le v0, v1, :cond_6b
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_66
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bz;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bz;->isAlive()Z
move-result v3
if-eqz v3, :cond_62
invoke-virtual {v0}, Lcom/mapquest/android/maps/bz;->b()V
:cond_62
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_4d
:cond_66
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
:cond_6b
iget v1, p0, Lcom/mapquest/android/maps/bt;->g:I
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_73
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_91
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bz;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bz;->isAlive()Z
move-result v4
if-eqz v4, :cond_8d
add-int/lit8 v1, v1, -0x1
:goto_87
iget-object v0, v0, Lcom/mapquest/android/maps/bz;->l:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->clear()V
goto :goto_73
:cond_8d
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
goto :goto_87
:cond_91
if-lez v1, :cond_a6
move v0, v2
:goto_94
if-ge v0, v1, :cond_a6
new-instance v3, Lcom/mapquest/android/maps/bw;
invoke-direct {v3, p0}, Lcom/mapquest/android/maps/bw;-><init>(Lcom/mapquest/android/maps/bt;)V
iget-object v4, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v3}, Lcom/mapquest/android/maps/bz;->start()V
add-int/lit8 v0, v0, 0x1
goto :goto_94
:cond_a6
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_b0
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_d9
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
iget-object v1, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
iget v4, p0, Lcom/mapquest/android/maps/bt;->g:I
rem-int v4, v2, v4
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/mapquest/android/maps/bz;
iget-object v1, v1, Lcom/mapquest/android/maps/bz;->l:Lcom/mapquest/android/maps/bu;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bu;->add(Ljava/lang/Object;)Z
invoke-interface {v3}, Ljava/util/Iterator;->remove()V
add-int/lit8 v2, v2, 0x1
goto :goto_b0
:cond_d9
iget-object v0, p0, Lcom/mapquest/android/maps/bt;->h:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_df
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bz;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bz;->c()V
goto :goto_df
:cond_ef
move v0, v1
goto/16 :goto_39
.end method
.method public final e()V
.registers 1
invoke-virtual {p0}, Lcom/mapquest/android/maps/bt;->c()V
return-void
.end method