.class public Lcom/twidroid/ui/widgets/gesture/f;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(FFFF)F
.registers 6
sub-float v0, p0, p2
sub-float v1, p1, p3
mul-float/2addr v0, v0
mul-float/2addr v1, v1
add-float/2addr v0, v1
invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F
move-result v0
return v0
.end method
.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
.registers 5
iget v0, p0, Landroid/graphics/PointF;->x:F
iget v1, p1, Landroid/graphics/PointF;->x:F
sub-float/2addr v0, v1
iget v1, p0, Landroid/graphics/PointF;->y:F
iget v2, p1, Landroid/graphics/PointF;->y:F
sub-float/2addr v1, v2
mul-float/2addr v0, v0
mul-float/2addr v1, v1
add-float/2addr v0, v1
invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F
move-result v0
return v0
.end method
.method public static a(Landroid/view/MotionEvent;)F
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F
move-result v1
sub-float/2addr v0, v1
invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F
move-result v1
invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F
move-result v2
sub-float/2addr v1, v2
mul-float/2addr v0, v0
mul-float/2addr v1, v1
add-float/2addr v0, v1
invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F
move-result v0
return v0
.end method
.method public static a(FFFFLandroid/graphics/PointF;)V
.registers 7
const/high16 v1, 0x4000
add-float v0, p0, p2
div-float/2addr v0, v1
iput v0, p4, Landroid/graphics/PointF;->x:F
add-float v0, p1, p3
div-float/2addr v0, v1
iput v0, p4, Landroid/graphics/PointF;->y:F
return-void
.end method
.method public static a(Landroid/view/MotionEvent;Landroid/graphics/PointF;)V
.registers 6
const/4 v3, 0x1
const/4 v1, 0x0
invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F
move-result v0
invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F
move-result v1
invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F
move-result v2
invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F
move-result v3
invoke-static {v0, v1, v2, v3, p1}, Lcom/twidroid/ui/widgets/gesture/f;->a(FFFFLandroid/graphics/PointF;)V
return-void
.end method
.method public static b(FFFF)F
.registers 8
sub-float v0, p3, p1
float-to-double v0, v0
sub-float v2, p2, p0
float-to-double v2, v2
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method public static b(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
.registers 6
iget v0, p0, Landroid/graphics/PointF;->x:F
iget v1, p0, Landroid/graphics/PointF;->y:F
iget v2, p1, Landroid/graphics/PointF;->x:F
iget v3, p1, Landroid/graphics/PointF;->y:F
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/ui/widgets/gesture/f;->b(FFFF)F
move-result v0
return v0
.end method
.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
.registers 14
iget v0, p1, Landroid/graphics/PointF;->x:F
iget v1, p1, Landroid/graphics/PointF;->y:F
iget v2, p2, Landroid/graphics/PointF;->x:F
iget v3, p2, Landroid/graphics/PointF;->y:F
float-to-double v4, p3
invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D
move-result-wide v4
sub-float v6, v0, v2
float-to-double v6, v6
mul-double/2addr v4, v6
float-to-double v6, p3
invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
move-result-wide v6
sub-float v8, v1, v3
float-to-double v8, v8
mul-double/2addr v6, v8
sub-double/2addr v4, v6
float-to-double v6, v2
add-double/2addr v4, v6
double-to-float v4, v4
iput v4, p1, Landroid/graphics/PointF;->x:F
float-to-double v4, p3
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
sub-float/2addr v0, v2
float-to-double v6, v0
mul-double/2addr v4, v6
float-to-double v6, p3
invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D
move-result-wide v6
sub-float v0, v1, v3
float-to-double v0, v0
mul-double/2addr v0, v6
add-double/2addr v0, v4
float-to-double v2, v3
add-double/2addr v0, v2
double-to-float v0, v0
iput v0, p1, Landroid/graphics/PointF;->y:F
return-void
.end method