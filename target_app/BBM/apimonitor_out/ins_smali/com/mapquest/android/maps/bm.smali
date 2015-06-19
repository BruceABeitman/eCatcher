.class final Lcom/mapquest/android/maps/bm;
.super Ljava/lang/Object;
.source "OverlayController.java"
.field public a:Ljava/util/List;
.field private b:Lcom/mapquest/android/maps/MapView;
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
iput-object p1, p0, Lcom/mapquest/android/maps/bm;->b:Lcom/mapquest/android/maps/MapView;
new-instance v0, Lcom/mapquest/android/maps/bn;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/bn;-><init>(Lcom/mapquest/android/maps/bm;B)V
invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
return-void
.end method
.method public final a()Z
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_1f
iget-object v1, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_11
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
:try_end_1a
.catchall {:try_start_b .. :try_end_1a} :catchall_1b
goto :goto_11
:catchall_1b
move-exception v0
monitor-exit v1
throw v0
:cond_1e
monitor-exit v1
:cond_1f
const/4 v0, 0x0
return v0
.end method
.method public final a(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
.registers 7
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_27
iget-object v1, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0, p1, p2, p3}, Lcom/mapquest/android/maps/bh;->a(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x1
monitor-exit v1
:goto_25
:try_end_25
.catchall {:try_start_b .. :try_end_25} :catchall_29
return v0
:cond_26
monitor-exit v1
:cond_27
const/4 v0, 0x0
goto :goto_25
:catchall_29
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_27
iget-object v1, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/bh;->a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x1
monitor-exit v1
:goto_25
:try_end_25
.catchall {:try_start_b .. :try_end_25} :catchall_29
return v0
:cond_26
monitor-exit v1
:cond_27
const/4 v0, 0x0
goto :goto_25
:catchall_29
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_27
iget-object v1, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/bh;->a(Lcom/mapquest/android/maps/s;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x1
monitor-exit v1
:goto_25
:try_end_25
.catchall {:try_start_b .. :try_end_25} :catchall_29
return v0
:cond_26
monitor-exit v1
:cond_27
const/4 v0, 0x0
goto :goto_25
:catchall_29
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_27
iget-object v1, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
monitor-enter v1
:try_start_b
iget-object v0, p0, Lcom/mapquest/android/maps/bm;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_11
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/bh;->b(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x1
monitor-exit v1
:goto_25
:try_end_25
.catchall {:try_start_b .. :try_end_25} :catchall_29
return v0
:cond_26
monitor-exit v1
:cond_27
const/4 v0, 0x0
goto :goto_25
:catchall_29
move-exception v0
monitor-exit v1
throw v0
.end method