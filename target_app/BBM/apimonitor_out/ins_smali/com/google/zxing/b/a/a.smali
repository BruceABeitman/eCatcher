.class public final Lcom/google/zxing/b/a/a;
.super Ljava/lang/Object;
.source "MathUtils.java"
.method public static a(FFFF)F
.registers 6
sub-float v0, p0, p2
sub-float v1, p1, p3
mul-float/2addr v0, v0
mul-float/2addr v1, v1
add-float/2addr v0, v1
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method public static a(IIII)F
.registers 6
sub-int v0, p0, p2
sub-int v1, p1, p3
mul-int/2addr v0, v0
mul-int/2addr v1, v1
add-int/2addr v0, v1
int-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method