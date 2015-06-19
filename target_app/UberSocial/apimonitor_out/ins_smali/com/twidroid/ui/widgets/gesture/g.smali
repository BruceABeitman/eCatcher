.class public Lcom/twidroid/ui/widgets/gesture/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field public a:F
.field public b:F
.field public final c:Landroid/graphics/PointF;
.field public final d:Landroid/graphics/PointF;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
return-void
.end method
.method public a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/g;->a:F
float-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D
move-result-wide v1
double-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
mul-float/2addr v1, v2
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->x:F
add-float/2addr v1, v2
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
iget v1, p0, Lcom/twidroid/ui/widgets/gesture/g;->a:F
float-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D
move-result-wide v1
double-to-float v1, v1
iget v2, p0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
mul-float/2addr v1, v2
iget-object v2, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
iget v2, v2, Landroid/graphics/PointF;->y:F
add-float/2addr v1, v2
iput v1, v0, Landroid/graphics/PointF;->y:F
return-void
.end method
.method public a(Landroid/graphics/PointF;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
iget v1, p1, Landroid/graphics/PointF;->x:F
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
iget v1, p1, Landroid/graphics/PointF;->y:F
iput v1, v0, Landroid/graphics/PointF;->y:F
return-void
.end method
.method public a(Landroid/view/MotionEvent;)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->y:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->y:F
return-void
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
invoke-static {v0, v1}, Lcom/twidroid/ui/widgets/gesture/f;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->b:F
return-void
.end method
.method public b(Landroid/graphics/PointF;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
iget v1, p1, Landroid/graphics/PointF;->x:F
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
iget v1, p1, Landroid/graphics/PointF;->y:F
iput v1, v0, Landroid/graphics/PointF;->y:F
return-void
.end method
.method public c()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->c:Landroid/graphics/PointF;
iget-object v1, p0, Lcom/twidroid/ui/widgets/gesture/g;->d:Landroid/graphics/PointF;
invoke-static {v0, v1}, Lcom/twidroid/ui/widgets/gesture/f;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
move-result v0
iput v0, p0, Lcom/twidroid/ui/widgets/gesture/g;->a:F
return-void
.end method