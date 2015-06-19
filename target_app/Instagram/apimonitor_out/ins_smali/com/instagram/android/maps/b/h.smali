.class public final Lcom/instagram/android/maps/b/h;
.super Ljava/lang/Object;
.source "QuadtreePoint.java"
.implements Ljava/lang/Comparable;
.field private a:D
.field private b:D
.field private c:Ljava/lang/Comparable;
.method public constructor <init>(DD)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-wide v1, p1
move-wide v3, p3
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/b/h;-><init>(DDLjava/lang/Comparable;)V
return-void
.end method
.method public constructor <init>(DDLjava/lang/Comparable;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/instagram/android/maps/b/h;->a:D
iput-wide p3, p0, Lcom/instagram/android/maps/b/h;->b:D
iput-object p5, p0, Lcom/instagram/android/maps/b/h;->c:Ljava/lang/Comparable;
return-void
.end method
.method public static a(Lcom/instagram/android/maps/b/h;Lcom/google/android/maps/Projection;)D
.registers 6
invoke-virtual {p0, p1}, Lcom/instagram/android/maps/b/h;->a(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;
move-result-object v0
invoke-virtual {p0, p1}, Lcom/instagram/android/maps/b/h;->a(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;
move-result-object v1
iget v2, v0, Landroid/graphics/Point;->x:I
iget v3, v1, Landroid/graphics/Point;->x:I
sub-int/2addr v2, v3
int-to-double v2, v2
iget v0, v0, Landroid/graphics/Point;->y:I
iget v1, v1, Landroid/graphics/Point;->y:I
sub-int/2addr v0, v1
int-to-double v0, v0
mul-double/2addr v2, v2
mul-double/2addr v0, v0
add-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v0
return-wide v0
.end method
.method public static a(Lcom/instagram/android/maps/b/h;Lcom/instagram/android/maps/b/h;)D
.registers 11
const/4 v0, 0x1
new-array v8, v0, [F
invoke-virtual {p0}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v0
invoke-virtual {p0}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v2
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v4
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v6
invoke-static/range {v0 .. v8}, Ldroidbox/android/location/Location;->distanceBetween(DDDD[F)V
const/4 v0, 0x0
aget v0, v8, v0
float-to-double v0, v0
return-wide v0
.end method
.method public static a(Lcom/google/android/maps/GeoPoint;)Lcom/instagram/android/maps/b/h;
.registers 8
const-wide v5, 0x412e848000000000L
new-instance v0, Lcom/instagram/android/maps/b/h;
invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I
move-result v1
int-to-double v1, v1
div-double/2addr v1, v5
invoke-virtual {p0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I
move-result v3
int-to-double v3, v3
div-double/2addr v3, v5
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/maps/b/h;-><init>(DD)V
return-object v0
.end method
.method public final a(Lcom/instagram/android/maps/b/h;Lcom/google/android/maps/Projection;Landroid/graphics/Point;)D
.registers 9
invoke-virtual {p1, p2}, Lcom/instagram/android/maps/b/h;->a(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;
move-result-object v0
if-nez p3, :cond_a
invoke-virtual {p0, p2}, Lcom/instagram/android/maps/b/h;->a(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;
move-result-object p3
:cond_a
iget v1, v0, Landroid/graphics/Point;->x:I
iget v2, p3, Landroid/graphics/Point;->x:I
sub-int/2addr v1, v2
int-to-double v1, v1
iget v0, v0, Landroid/graphics/Point;->y:I
iget v3, p3, Landroid/graphics/Point;->y:I
sub-int/2addr v0, v3
int-to-double v3, v0
mul-double v0, v1, v1
mul-double v2, v3, v3
add-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v0
return-wide v0
.end method
.method public final a(Lcom/google/android/maps/Projection;)Landroid/graphics/Point;
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/maps/b/h;->a()Lcom/google/android/maps/GeoPoint;
move-result-object v0
const/4 v1, 0x0
invoke-interface {p1, v0, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
return-object v0
.end method
.method public final a()Lcom/google/android/maps/GeoPoint;
.registers 7
const-wide v4, 0x412e848000000000L
new-instance v0, Lcom/google/android/maps/GeoPoint;
iget-wide v1, p0, Lcom/instagram/android/maps/b/h;->a:D
mul-double/2addr v1, v4
double-to-int v1, v1
iget-wide v2, p0, Lcom/instagram/android/maps/b/h;->b:D
mul-double/2addr v2, v4
double-to-int v2, v2
invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
return-object v0
.end method
.method public final a(D)Lcom/instagram/android/maps/b/h;
.registers 6
invoke-virtual {p0}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;
move-result-object v0
iget-wide v1, v0, Lcom/instagram/android/maps/b/h;->a:D
mul-double/2addr v1, p1
iput-wide v1, v0, Lcom/instagram/android/maps/b/h;->a:D
iget-wide v1, v0, Lcom/instagram/android/maps/b/h;->b:D
mul-double/2addr v1, p1
iput-wide v1, v0, Lcom/instagram/android/maps/b/h;->b:D
return-object v0
.end method
.method public final a(Lcom/instagram/android/maps/b/h;)Z
.registers 6
if-eqz p1, :cond_14
iget-wide v0, p1, Lcom/instagram/android/maps/b/h;->a:D
iget-wide v2, p0, Lcom/instagram/android/maps/b/h;->a:D
cmpl-double v0, v0, v2
if-nez v0, :cond_14
iget-wide v0, p1, Lcom/instagram/android/maps/b/h;->b:D
iget-wide v2, p0, Lcom/instagram/android/maps/b/h;->b:D
cmpl-double v0, v0, v2
if-nez v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public final b(Lcom/instagram/android/maps/b/h;)I
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/b/h;->c:Ljava/lang/Comparable;
iget-object v1, p1, Lcom/instagram/android/maps/b/h;->c:Ljava/lang/Comparable;
invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final b()Lcom/instagram/android/maps/b/h;
.registers 7
new-instance v0, Lcom/instagram/android/maps/b/h;
iget-wide v1, p0, Lcom/instagram/android/maps/b/h;->a:D
iget-wide v3, p0, Lcom/instagram/android/maps/b/h;->b:D
iget-object v5, p0, Lcom/instagram/android/maps/b/h;->c:Ljava/lang/Comparable;
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/b/h;-><init>(DDLjava/lang/Comparable;)V
return-object v0
.end method
.method public final b(D)V
.registers 3
iput-wide p1, p0, Lcom/instagram/android/maps/b/h;->a:D
return-void
.end method
.method public final c()D
.registers 3
iget-wide v0, p0, Lcom/instagram/android/maps/b/h;->a:D
return-wide v0
.end method
.method public final c(D)V
.registers 3
iput-wide p1, p0, Lcom/instagram/android/maps/b/h;->b:D
return-void
.end method
.method public final synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/instagram/android/maps/b/h;
invoke-virtual {p0, p1}, Lcom/instagram/android/maps/b/h;->b(Lcom/instagram/android/maps/b/h;)I
move-result v0
return v0
.end method
.method public final d()I
.registers 5
iget-wide v0, p0, Lcom/instagram/android/maps/b/h;->a:D
const-wide v2, 0x412e848000000000L
mul-double/2addr v0, v2
double-to-int v0, v0
return v0
.end method
.method public final e()I
.registers 5
iget-wide v0, p0, Lcom/instagram/android/maps/b/h;->b:D
const-wide v2, 0x412e848000000000L
mul-double/2addr v0, v2
double-to-int v0, v0
return v0
.end method
.method public final f()D
.registers 3
iget-wide v0, p0, Lcom/instagram/android/maps/b/h;->b:D
return-wide v0
.end method
.method public final g()Ljava/lang/Comparable;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/b/h;->c:Ljava/lang/Comparable;
return-object v0
.end method