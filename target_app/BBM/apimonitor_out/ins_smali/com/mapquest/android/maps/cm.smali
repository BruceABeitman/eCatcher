.class public final Lcom/mapquest/android/maps/cm;
.super Lcom/mapquest/android/maps/ci;
.source "TouchEventHandler.java"
.field  b:Ljava/util/ArrayList;
.field  c:Landroid/graphics/PointF;
.field final synthetic d:Lcom/mapquest/android/maps/ch;
.field private e:Lcom/mapquest/android/maps/MapView;
.field private f:F
.field private g:F
.field private h:Z
.method public constructor <init>(Lcom/mapquest/android/maps/ch;Lcom/mapquest/android/maps/MapView;)V
.registers 5
const/high16 v1, 0x3f80
iput-object p1, p0, Lcom/mapquest/android/maps/cm;->d:Lcom/mapquest/android/maps/ch;
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ci;-><init>(Lcom/mapquest/android/maps/ch;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/cm;->b:Ljava/util/ArrayList;
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/cm;->c:Landroid/graphics/PointF;
iput v1, p0, Lcom/mapquest/android/maps/cm;->f:F
iput v1, p0, Lcom/mapquest/android/maps/cm;->g:F
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mapquest/android/maps/cm;->h:Z
iput-object p2, p0, Lcom/mapquest/android/maps/cm;->e:Lcom/mapquest/android/maps/MapView;
return-void
.end method
.method public final a()Z
.registers 10
const/4 v5, 0x1
const/high16 v8, 0x3f80
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-boolean v0, p0, Lcom/mapquest/android/maps/cm;->h:Z
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->e:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v1
int-to-double v2, v1
iget v0, p0, Lcom/mapquest/android/maps/cm;->f:F
float-to-double v6, v0
invoke-static {v6, v7}, Lcom/mapquest/android/maps/cv;->a(D)D
move-result-wide v6
add-double/2addr v2, v6
invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J
move-result-wide v2
long-to-int v2, v2
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->e:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v0
iget-object v0, v0, Lcom/mapquest/android/maps/al;->b:Lcom/mapquest/android/maps/ah;
iget v3, p0, Lcom/mapquest/android/maps/cm;->f:F
new-instance v4, Landroid/graphics/Point;
iget-object v6, p0, Lcom/mapquest/android/maps/cm;->c:Landroid/graphics/PointF;
iget v6, v6, Landroid/graphics/PointF;->x:F
float-to-int v6, v6
iget-object v7, p0, Lcom/mapquest/android/maps/cm;->c:Landroid/graphics/PointF;
iget v7, v7, Landroid/graphics/PointF;->y:F
float-to-int v7, v7
invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V
invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/ah;->a(IIFLandroid/graphics/Point;Z)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mapquest/android/maps/cm;->h:Z
:cond_3f
iput v8, p0, Lcom/mapquest/android/maps/cm;->f:F
iput v8, p0, Lcom/mapquest/android/maps/cm;->g:F
return v5
.end method
.method public final a(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/cn;[Landroid/graphics/PointF;)Z
.registers 10
const/4 v2, 0x0
const/4 v5, 0x1
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-eqz v0, :cond_85
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
invoke-virtual {p2}, Lcom/mapquest/android/maps/cn;->b()I
move-result v1
and-int/2addr v0, v1
const/4 v1, 0x2
if-ne v0, v1, :cond_7f
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->b:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/PointF;
iget-object v1, p0, Lcom/mapquest/android/maps/cm;->b:Ljava/util/ArrayList;
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/graphics/PointF;
invoke-static {v0, v1}, Lcom/mapquest/android/maps/cv;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
move-result v0
aget-object v1, p3, v2
aget-object v2, p3, v5
invoke-static {v1, v2}, Lcom/mapquest/android/maps/cv;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
move-result v1
iget v2, p0, Lcom/mapquest/android/maps/cm;->f:F
div-float v0, v1, v0
mul-float/2addr v0, v2
iput v0, p0, Lcom/mapquest/android/maps/cm;->f:F
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->e:Lcom/mapquest/android/maps/MapView;
iget-object v1, p0, Lcom/mapquest/android/maps/cm;->e:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I
move-result v1
int-to-double v1, v1
iget v3, p0, Lcom/mapquest/android/maps/cm;->f:F
float-to-double v3, v3
invoke-static {v3, v4}, Lcom/mapquest/android/maps/cv;->a(D)D
move-result-wide v3
add-double/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J
move-result-wide v1
long-to-int v1, v1
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->a(I)Z
move-result v0
if-eqz v0, :cond_80
iget-boolean v0, p0, Lcom/mapquest/android/maps/cm;->h:Z
if-nez v0, :cond_60
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->d:Lcom/mapquest/android/maps/ch;
invoke-static {}, Lcom/mapquest/android/maps/ch;->a()V
iput-boolean v5, p0, Lcom/mapquest/android/maps/cm;->h:Z
:cond_60
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->e:Lcom/mapquest/android/maps/MapView;
iget v1, p0, Lcom/mapquest/android/maps/cm;->f:F
iget v2, p0, Lcom/mapquest/android/maps/cm;->f:F
iget-object v2, p0, Lcom/mapquest/android/maps/cm;->c:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
iget-object v3, p0, Lcom/mapquest/android/maps/cm;->c:Landroid/graphics/PointF;
iget v3, v3, Landroid/graphics/PointF;->y:F
invoke-virtual {v0, v1, v2, v3}, Lcom/mapquest/android/maps/MapView;->a(FFF)V
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->e:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V
iget v0, p0, Lcom/mapquest/android/maps/cm;->f:F
iput v0, p0, Lcom/mapquest/android/maps/cm;->g:F
:goto_7a
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->b:Ljava/util/ArrayList;
invoke-static {v0, p3}, Lcom/mapquest/android/maps/cm;->a(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V
:goto_7f
:cond_7f
return v5
:cond_80
iget v0, p0, Lcom/mapquest/android/maps/cm;->g:F
iput v0, p0, Lcom/mapquest/android/maps/cm;->f:F
goto :goto_7a
:cond_85
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->b:Ljava/util/ArrayList;
invoke-static {v0, p3}, Lcom/mapquest/android/maps/cm;->a(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V
iget v0, p0, Lcom/mapquest/android/maps/cm;->f:F
iget-object v1, p0, Lcom/mapquest/android/maps/cm;->e:Lcom/mapquest/android/maps/MapView;
iget v1, v1, Lcom/mapquest/android/maps/MapView;->i:F
mul-float/2addr v0, v1
iput v0, p0, Lcom/mapquest/android/maps/cm;->f:F
iget v0, p0, Lcom/mapquest/android/maps/cm;->f:F
iput v0, p0, Lcom/mapquest/android/maps/cm;->g:F
iget-object v0, p0, Lcom/mapquest/android/maps/cm;->b:Ljava/util/ArrayList;
invoke-static {v0}, Lcom/mapquest/android/maps/cm;->a(Ljava/util/ArrayList;)Landroid/graphics/PointF;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/cm;->c:Landroid/graphics/PointF;
goto :goto_7f
.end method