.class Lcom/mapquest/android/maps/bg;
.super Ljava/lang/Object;
.source "OSMTileFactory.java"

# interfaces
.implements Lcom/mapquest/android/maps/ce;


# instance fields
.field private a:Lcom/mapquest/android/maps/cf;

.field c:Lcom/mapquest/android/maps/MapView;

.field d:Lcom/mapquest/android/maps/bd;

.field e:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mapquest/android/maps/cf;->a:Lcom/mapquest/android/maps/cf;

    iput-object v0, p0, Lcom/mapquest/android/maps/bg;->a:Lcom/mapquest/android/maps/cf;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/bg;->e:Landroid/graphics/Point;

    new-instance v0, Lcom/mapquest/android/maps/bd;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/bd;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/bg;->d:Lcom/mapquest/android/maps/bd;

    iput-object p1, p0, Lcom/mapquest/android/maps/bg;->c:Lcom/mapquest/android/maps/MapView;

    return-void
.end method


# virtual methods
.method public final a(IIILcom/mapquest/android/maps/cf;)Lcom/mapquest/android/maps/ca;
    .registers 14

    iget-object v0, p0, Lcom/mapquest/android/maps/bg;->d:Lcom/mapquest/android/maps/bd;

    iget-object v1, p0, Lcom/mapquest/android/maps/bg;->e:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2, v1}, Lcom/mapquest/android/maps/bd;->a(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit16 v1, v1, 0x100

    iget v2, v0, Landroid/graphics/Point;->y:I

    div-int/lit16 v2, v2, 0x100

    mul-int/lit16 v3, v1, 0x100

    mul-int/lit16 v4, v2, 0x100

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int v5, v3, v5

    add-int/2addr v5, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v4, v0

    add-int/2addr v0, p2

    new-instance v8, Landroid/graphics/Rect;

    add-int/lit16 v6, v5, 0x100

    add-int/lit16 v7, v0, 0x100

    invoke-direct {v8, v5, v0, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Lcom/mapquest/android/maps/ca;

    invoke-virtual {p0}, Lcom/mapquest/android/maps/bg;->a()Ljava/lang/String;

    move-result-object v6

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/mapquest/android/maps/ca;-><init>(IIIIILjava/lang/String;Lcom/mapquest/android/maps/cf;)V

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/bg;->a(Lcom/mapquest/android/maps/ca;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapquest/android/maps/ca;->a:Ljava/lang/String;

    iput-object v8, v0, Lcom/mapquest/android/maps/ca;->j:Landroid/graphics/Rect;

    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "osm"

    return-object v0
.end method

.method protected a(Lcom/mapquest/android/maps/ca;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/mapquest/android/maps/ca;->f:Lcom/mapquest/android/maps/cf;

    invoke-virtual {p0, v1}, Lcom/mapquest/android/maps/bg;->a(Lcom/mapquest/android/maps/cf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mapquest/android/maps/ca;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mapquest/android/maps/ca;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mapquest/android/maps/ca;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/mapquest/android/maps/cf;)Ljava/lang/String;
    .registers 3

    const-string v0, "http://c.tile.openstreetmap.org/"

    return-object v0
.end method

.method public b()Lcom/mapquest/android/maps/an;
    .registers 2

    sget-object v0, Lcom/mapquest/android/maps/an;->a:Lcom/mapquest/android/maps/an;

    return-object v0
.end method

.method public b(Lcom/mapquest/android/maps/cf;)Z
    .registers 3

    sget-object v0, Lcom/mapquest/android/maps/cf;->a:Lcom/mapquest/android/maps/cf;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final c()Lcom/mapquest/android/maps/bq;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/bg;->d:Lcom/mapquest/android/maps/bd;

    return-object v0
.end method

.method public final c(Lcom/mapquest/android/maps/cf;)V
    .registers 2

    iput-object p1, p0, Lcom/mapquest/android/maps/bg;->a:Lcom/mapquest/android/maps/cf;

    return-void
.end method

.method public final d()Lcom/mapquest/android/maps/cf;
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/bg;->a:Lcom/mapquest/android/maps/cf;

    return-object v0
.end method
