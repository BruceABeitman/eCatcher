.class public Lboston/Bus/Map/ui/RouteOverlay;
.super Lcom/google/android/maps/Overlay;
.source "RouteOverlay.java"


# static fields
.field private static final COARSE_INCREMENT:I = 0x14

.field private static final FINE_INCREMENT:I = 0x1


# instance fields
.field private increment:I

.field private final paint:Landroid/graphics/Paint;

.field private paths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lboston/Bus/Map/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final projection:Lcom/google/android/maps/Projection;

.field private showRouteLine:Z


# direct methods
.method public constructor <init>(Lboston/Bus/Map/ui/RouteOverlay;Lcom/google/android/maps/Projection;)V
    .registers 5

    invoke-direct {p0, p2}, Lboston/Bus/Map/ui/RouteOverlay;-><init>(Lcom/google/android/maps/Projection;)V

    iget-object v0, p0, Lboston/Bus/Map/ui/RouteOverlay;->paths:Ljava/util/ArrayList;

    iget-object v1, p1, Lboston/Bus/Map/ui/RouteOverlay;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/Projection;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/ui/RouteOverlay;->paths:Ljava/util/ArrayList;

    iput v4, p0, Lboston/Bus/Map/ui/RouteOverlay;->increment:I

    iput-object p1, p0, Lboston/Bus/Map/ui/RouteOverlay;->projection:Lcom/google/android/maps/Projection;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/ui/RouteOverlay;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lboston/Bus/Map/ui/RouteOverlay;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    const/16 v2, 0xff

    invoke-static {v1, v3, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lboston/Bus/Map/ui/RouteOverlay;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lboston/Bus/Map/ui/RouteOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .registers 28

    if-nez p3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->showRouteLine:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->paths:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_16
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_53

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lboston/Bus/Map/data/Path;

    invoke-virtual {v10}, Lboston/Bus/Map/data/Path;->getPointsSize()I

    move-result v20

    if-lez v20, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->increment:I

    move/from16 v21, v0

    div-int v21, v20, v21

    add-int v3, v3, v21

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->increment:I

    move/from16 v21, v0

    rem-int v21, v20, v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->increment:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_53
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    mul-int/lit8 v21, v3, 0x4

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object v5, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->increment:I

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->paths:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_74
    :goto_74
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1b1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lboston/Bus/Map/data/Path;

    invoke-virtual {v10}, Lboston/Bus/Map/data/Path;->getPointsSize()I

    move-result v18

    const/16 v19, 0x0

    const/4 v7, 0x0

    :goto_87
    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_10e

    move-object v0, v12

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10c

    move-object v11, v13

    :goto_92
    invoke-virtual {v10, v7}, Lboston/Bus/Map/data/Path;->getPointLat(I)D

    move-result-wide v14

    invoke-virtual {v10, v7}, Lboston/Bus/Map/data/Path;->getPointLon(I)D

    move-result-wide v16

    new-instance v6, Lcom/google/android/maps/GeoPoint;

    const-wide v21, 0x412e848000000000L

    mul-double v21, v21, v14

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    const-wide v22, 0x412e848000000000L

    mul-double v22, v22, v16

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move-object v0, v6

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->projection:Lcom/google/android/maps/Projection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    if-eqz v19, :cond_107

    add-int/lit8 v21, v4, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v5, v21

    add-int/lit8 v21, v4, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v5, v21

    add-int/lit8 v21, v4, 0x2

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v5, v21

    add-int/lit8 v21, v4, 0x3

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v5, v21

    add-int/lit8 v4, v4, 0x4

    :cond_107
    move-object/from16 v19, v11

    add-int/2addr v7, v9

    goto/16 :goto_87

    :cond_10c
    move-object v11, v12

    goto :goto_92

    :cond_10e
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_74

    const/16 v21, 0x1

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_74

    rem-int v21, v18, v9

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_74

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    const/16 v21, 0x1

    sub-int v21, v18, v21

    move-object v0, v10

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lboston/Bus/Map/data/Path;->getPointLat(I)D

    move-result-wide v14

    const/16 v21, 0x1

    sub-int v21, v18, v21

    move-object v0, v10

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lboston/Bus/Map/data/Path;->getPointLon(I)D

    move-result-wide v16

    new-instance v6, Lcom/google/android/maps/GeoPoint;

    const-wide v21, 0x412e848000000000L

    mul-double v21, v21, v14

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    const-wide v22, 0x412e848000000000L

    mul-double v22, v22, v16

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move-object v0, v6

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->projection:Lcom/google/android/maps/Projection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    if-eqz v19, :cond_74

    add-int/lit8 v21, v4, 0x0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v5, v21

    add-int/lit8 v21, v4, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v5, v21

    add-int/lit8 v21, v4, 0x2

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v5, v21

    add-int/lit8 v21, v4, 0x3

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aput v22, v5, v21

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_74

    :cond_1b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/RouteOverlay;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    goto/16 :goto_a
.end method

.method public setDrawLine(Z)V
    .registers 2

    iput-boolean p1, p0, Lboston/Bus/Map/ui/RouteOverlay;->showRouteLine:Z

    return-void
.end method

.method public setIncrement(I)V
    .registers 2

    iput p1, p0, Lboston/Bus/Map/ui/RouteOverlay;->increment:I

    return-void
.end method

.method public setPaths(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lboston/Bus/Map/data/Path;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lboston/Bus/Map/ui/RouteOverlay;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lboston/Bus/Map/ui/RouteOverlay;->paths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
