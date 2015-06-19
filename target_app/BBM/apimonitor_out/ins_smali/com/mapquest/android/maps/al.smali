.class public final Lcom/mapquest/android/maps/al;
.super Ljava/lang/Object;
.source "MapController.java"
.implements Landroid/view/View$OnKeyListener;
.field  a:Lcom/mapquest/android/maps/MapView;
.field  b:Lcom/mapquest/android/maps/ah;
.field public c:Lcom/mapquest/android/maps/am;
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
new-instance v0, Lcom/mapquest/android/maps/ah;
invoke-direct {v0, p1}, Lcom/mapquest/android/maps/ah;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/mapquest/android/maps/al;->b:Lcom/mapquest/android/maps/ah;
new-instance v0, Lcom/mapquest/android/maps/am;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/mapquest/android/maps/am;-><init>(Lcom/mapquest/android/maps/al;Lcom/mapquest/android/maps/MapView;B)V
iput-object v0, p0, Lcom/mapquest/android/maps/al;->c:Lcom/mapquest/android/maps/am;
return-void
.end method
.method public final a(I)V
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/al;->c:Lcom/mapquest/android/maps/am;
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v2
const-string v3, "zoom_level"
invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/4 v2, 0x1
iput v2, v1, Landroid/os/Message;->what:I
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/am;->a(Landroid/os/Message;)V
return-void
.end method
.method public final a(II)V
.registers 9
iget-object v0, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/bq;
move-result-object v0
iget-object v1, p0, Lcom/mapquest/android/maps/al;->c:Lcom/mapquest/android/maps/am;
iget-object v2, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;
move-result-object v2
iget v2, v2, Landroid/graphics/Point;->x:I
add-int/2addr v2, p1
iget-object v3, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;
move-result-object v3
iget v3, v3, Landroid/graphics/Point;->y:I
add-int/2addr v3, p2
invoke-interface {v0, v2, v3}, Lcom/mapquest/android/maps/bq;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v2
invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "latitude"
iget v5, v0, Lcom/mapquest/android/maps/s;->a:I
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "longitude"
iget v0, v0, Lcom/mapquest/android/maps/s;->b:I
invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/4 v0, 0x0
iput v0, v2, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/am;->a(Landroid/os/Message;)V
return-void
.end method
.method public final a(Lcom/mapquest/android/maps/s;)V
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/al;->b:Lcom/mapquest/android/maps/ah;
if-eqz p1, :cond_17
if-eqz p1, :cond_17
iget-object v1, v0, Lcom/mapquest/android/maps/ah;->b:Lcom/mapquest/android/maps/r;
invoke-virtual {v1, p1}, Lcom/mapquest/android/maps/r;->a(Lcom/mapquest/android/maps/s;)V
iget-object v1, v0, Lcom/mapquest/android/maps/ah;->b:Lcom/mapquest/android/maps/r;
invoke-virtual {v1}, Lcom/mapquest/android/maps/r;->a()V
iget-object v1, v0, Lcom/mapquest/android/maps/ah;->a:Lcom/mapquest/android/maps/MapView;
iget-object v0, v0, Lcom/mapquest/android/maps/ah;->b:Lcom/mapquest/android/maps/r;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/a;)V
:cond_17
return-void
.end method
.method public final a()Z
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;
move-result-object v0
iget v0, v0, Landroid/graphics/Point;->x:I
iget-object v1, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;
move-result-object v1
iget v1, v1, Landroid/graphics/Point;->y:I
invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/al;->b(II)Z
move-result v0
return v0
.end method
.method public final b()Z
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;
move-result-object v0
iget v0, v0, Landroid/graphics/Point;->x:I
iget-object v1, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;
move-result-object v1
iget v1, v1, Landroid/graphics/Point;->y:I
invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/al;->c(II)Z
move-result v0
return v0
.end method
.method public final b(II)Z
.registers 9
const/4 v5, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v0
int-to-double v0, v0
iget-object v2, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
iget v2, v2, Lcom/mapquest/android/maps/MapView;->i:F
float-to-double v2, v2
invoke-static {v2, v3}, Lcom/mapquest/android/maps/cv;->a(D)D
move-result-wide v2
sub-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v1, v0
new-instance v4, Landroid/graphics/Point;
invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V
iget-object v0, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
iget-object v2, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/MapView;->a(I)Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/mapquest/android/maps/al;->b:Lcom/mapquest/android/maps/ah;
iget-object v2, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v2
add-int/lit8 v2, v2, 0x1
iget-object v3, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
iget v3, v3, Lcom/mapquest/android/maps/MapView;->i:F
invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/ah;->a(IIFLandroid/graphics/Point;Z)V
const/4 v5, 0x1
:cond_3e
return v5
.end method
.method public final c(II)Z
.registers 9
const/4 v5, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v0
int-to-double v0, v0
iget-object v2, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
iget v2, v2, Lcom/mapquest/android/maps/MapView;->i:F
float-to-double v2, v2
invoke-static {v2, v3}, Lcom/mapquest/android/maps/cv;->a(D)D
move-result-wide v2
sub-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v1, v0
new-instance v4, Landroid/graphics/Point;
invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V
iget-object v0, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
iget-object v2, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/MapView;->a(I)Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/mapquest/android/maps/al;->b:Lcom/mapquest/android/maps/ah;
iget-object v2, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v2
add-int/lit8 v2, v2, -0x1
iget-object v3, p0, Lcom/mapquest/android/maps/al;->a:Lcom/mapquest/android/maps/MapView;
iget v3, v3, Lcom/mapquest/android/maps/MapView;->i:F
invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/ah;->a(IIFLandroid/graphics/Point;Z)V
const/4 v5, 0x1
:cond_3e
return v5
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/mapquest/android/maps/al; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lcom/mapquest/android/maps/al; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method