.class final Lcom/mapquest/android/maps/bs;
.super Ljava/lang/Object;
.source "RotatableProjection.java"
.implements Lcom/mapquest/android/maps/br;
.field  a:Lcom/mapquest/android/maps/br;
.field  b:Landroid/graphics/Point;
.field private c:Lcom/mapquest/android/maps/MapView;
.field private d:Landroid/graphics/Matrix;
.field private e:Landroid/graphics/Matrix;
.field private f:[F
.field private g:[F
.field private h:Landroid/graphics/RectF;
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/bq;)V
.registers 5
const/4 v1, 0x2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v1, [F
iput-object v0, p0, Lcom/mapquest/android/maps/bs;->f:[F
new-array v0, v1, [F
iput-object v0, p0, Lcom/mapquest/android/maps/bs;->g:[F
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/bs;->b:Landroid/graphics/Point;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/bs;->h:Landroid/graphics/RectF;
iput-object p1, p0, Lcom/mapquest/android/maps/bs;->c:Lcom/mapquest/android/maps/MapView;
check-cast p2, Lcom/mapquest/android/maps/br;
iput-object p2, p0, Lcom/mapquest/android/maps/bs;->a:Lcom/mapquest/android/maps/br;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/bs;->d:Landroid/graphics/Matrix;
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/bs;->e:Landroid/graphics/Matrix;
return-void
.end method
.method private static a([FLandroid/graphics/Point;)V
.registers 4
const/4 v0, 0x0
aget v0, p0, v0
float-to-int v0, v0
const/4 v1, 0x1
aget v1, p0, v1
float-to-int v1, v1
invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V
return-void
.end method
.method public final a(I)I
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->a:Lcom/mapquest/android/maps/br;
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/br;->a(I)I
move-result v0
return v0
.end method
.method public final a(Lcom/mapquest/android/maps/b;II)I
.registers 5
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->a:Lcom/mapquest/android/maps/br;
invoke-interface {v0, p1, p2, p3}, Lcom/mapquest/android/maps/br;->a(Lcom/mapquest/android/maps/b;II)I
move-result v0
return v0
.end method
.method public final a(IILandroid/graphics/Point;)Landroid/graphics/Point;
.registers 7
if-nez p3, :cond_33
new-instance p3, Landroid/graphics/Point;
invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V
:goto_7
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->c:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F
move-result v0
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->f:[F
const/4 v1, 0x0
int-to-float v2, p1
aput v2, v0, v1
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->f:[F
const/4 v1, 0x1
int-to-float v2, p2
aput v2, v0, v1
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->e:Landroid/graphics/Matrix;
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->f:[F
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->f:[F
invoke-static {v0, p3}, Lcom/mapquest/android/maps/bs;->a([FLandroid/graphics/Point;)V
:cond_2a
iget v0, p3, Landroid/graphics/Point;->x:I
iget v1, p3, Landroid/graphics/Point;->y:I
invoke-virtual {p0, v0, v1, p3}, Lcom/mapquest/android/maps/bs;->b(IILandroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
return-object v0
:cond_33
invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V
goto :goto_7
.end method
.method public final a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
.registers 7
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->a:Lcom/mapquest/android/maps/br;
invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/br;->a(Lcom/mapquest/android/maps/s;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
iget v1, v0, Landroid/graphics/Point;->x:I
iget v2, v0, Landroid/graphics/Point;->y:I
if-nez v0, :cond_11
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V
:cond_11
invoke-virtual {p0, v1, v2, v0}, Lcom/mapquest/android/maps/bs;->c(IILandroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->c:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F
move-result v1
const/4 v2, 0x0
cmpl-float v1, v1, v2
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->g:[F
const/4 v2, 0x0
iget v3, v0, Landroid/graphics/Point;->x:I
int-to-float v3, v3
aput v3, v1, v2
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->g:[F
const/4 v2, 0x1
iget v3, v0, Landroid/graphics/Point;->y:I
int-to-float v3, v3
aput v3, v1, v2
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->d:Landroid/graphics/Matrix;
iget-object v2, p0, Lcom/mapquest/android/maps/bs;->g:[F
invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->g:[F
invoke-static {v1, v0}, Lcom/mapquest/android/maps/bs;->a([FLandroid/graphics/Point;)V
:cond_3c
return-object v0
.end method
.method public final a(II)Lcom/mapquest/android/maps/s;
.registers 6
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V
iget v1, v0, Landroid/graphics/Point;->x:I
iget v2, v0, Landroid/graphics/Point;->y:I
invoke-virtual {p0, v1, v2, v0}, Lcom/mapquest/android/maps/bs;->a(IILandroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->a:Lcom/mapquest/android/maps/br;
iget v2, v0, Landroid/graphics/Point;->x:I
iget v0, v0, Landroid/graphics/Point;->y:I
invoke-interface {v1, v2, v0}, Lcom/mapquest/android/maps/br;->a(II)Lcom/mapquest/android/maps/s;
move-result-object v0
return-object v0
.end method
.method public final a(FII)V
.registers 9
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->d:Landroid/graphics/Matrix;
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->e:Landroid/graphics/Matrix;
const/4 v2, 0x0
cmpl-float v2, p1, v2
if-nez v2, :cond_13
invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V
invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/bs;->b:Landroid/graphics/Point;
:goto_12
return-void
:cond_13
invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V
neg-float v2, p1
int-to-float v3, p2
int-to-float v4, p3
invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V
invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V
invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z
goto :goto_12
.end method
.method public final a(Landroid/graphics/Rect;)V
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->h:Landroid/graphics/RectF;
invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->e:Landroid/graphics/Matrix;
iget-object v1, p0, Lcom/mapquest/android/maps/bs;->h:Landroid/graphics/RectF;
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->h:Landroid/graphics/RectF;
invoke-virtual {v0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V
return-void
.end method
.method final b(IILandroid/graphics/Point;)Landroid/graphics/Point;
.registers 8
if-nez p3, :cond_e
new-instance p3, Landroid/graphics/Point;
invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V
:goto_7
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->c:Lcom/mapquest/android/maps/MapView;
iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
if-nez v1, :cond_12
:goto_d
return-object p3
:cond_e
invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V
goto :goto_7
:cond_12
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I
move-result v2
shr-int/lit8 v2, v2, 0x1
iget v3, v1, Landroid/graphics/Point;->x:I
sub-int/2addr v2, v3
add-int/2addr v2, p1
iput v2, p3, Landroid/graphics/Point;->x:I
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I
move-result v0
shr-int/lit8 v0, v0, 0x1
iget v1, v1, Landroid/graphics/Point;->y:I
sub-int/2addr v0, v1
add-int/2addr v0, p2
iput v0, p3, Landroid/graphics/Point;->y:I
goto :goto_d
.end method
.method final b(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.registers 6
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->c:Lcom/mapquest/android/maps/MapView;
iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
if-nez v1, :cond_7
:goto_6
return-object p1
:cond_7
iget v2, v1, Landroid/graphics/Point;->x:I
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I
move-result v3
shr-int/lit8 v3, v3, 0x1
sub-int/2addr v2, v3
iget v1, v1, Landroid/graphics/Point;->y:I
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I
move-result v0
shr-int/lit8 v0, v0, 0x1
sub-int v0, v1, v0
invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->offset(II)V
goto :goto_6
.end method
.method final c(IILandroid/graphics/Point;)Landroid/graphics/Point;
.registers 8
if-nez p3, :cond_e
new-instance p3, Landroid/graphics/Point;
invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V
:goto_7
iget-object v0, p0, Lcom/mapquest/android/maps/bs;->c:Lcom/mapquest/android/maps/MapView;
iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->p:Landroid/graphics/Point;
if-nez v1, :cond_12
:goto_d
return-object p3
:cond_e
invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V
goto :goto_7
:cond_12
iget v2, v1, Landroid/graphics/Point;->x:I
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I
move-result v3
shr-int/lit8 v3, v3, 0x1
sub-int/2addr v2, v3
add-int/2addr v2, p1
iput v2, p3, Landroid/graphics/Point;->x:I
iget v1, v1, Landroid/graphics/Point;->y:I
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I
move-result v0
shr-int/lit8 v0, v0, 0x1
sub-int v0, v1, v0
add-int/2addr v0, p2
iput v0, p3, Landroid/graphics/Point;->y:I
goto :goto_d
.end method