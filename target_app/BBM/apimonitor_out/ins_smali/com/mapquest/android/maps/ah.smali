.class final Lcom/mapquest/android/maps/ah;
.super Ljava/lang/Object;
.source "MapAnimator.java"
.field  a:Lcom/mapquest/android/maps/MapView;
.field  b:Lcom/mapquest/android/maps/r;
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mapquest/android/maps/ah;->a:Lcom/mapquest/android/maps/MapView;
new-instance v0, Lcom/mapquest/android/maps/r;
invoke-direct {v0, p1}, Lcom/mapquest/android/maps/r;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/mapquest/android/maps/ah;->b:Lcom/mapquest/android/maps/r;
return-void
.end method
.method public final a(IIFLandroid/graphics/Point;Z)V
.registers 13
if-eqz p5, :cond_25
if-ge p1, p2, :cond_25
iget v0, p4, Landroid/graphics/Point;->x:I
iget v0, p4, Landroid/graphics/Point;->y:I
iget-object v0, p0, Lcom/mapquest/android/maps/ah;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_12
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bh;
instance-of v0, v0, Lcom/mapquest/android/maps/bl;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/mapquest/android/maps/ah;->a:Lcom/mapquest/android/maps/MapView;
goto :goto_12
:cond_25
iget-object v6, p0, Lcom/mapquest/android/maps/ah;->a:Lcom/mapquest/android/maps/MapView;
new-instance v0, Lcom/mapquest/android/maps/cw;
iget-object v1, p0, Lcom/mapquest/android/maps/ah;->a:Lcom/mapquest/android/maps/MapView;
move v2, p1
move v3, p2
move v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/cw;-><init>(Lcom/mapquest/android/maps/MapView;IIFLandroid/graphics/Point;)V
invoke-virtual {v6, v0}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/a;)V
return-void
.end method