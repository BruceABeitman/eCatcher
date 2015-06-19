.class public Lboston/Bus/Map/ui/BusOverlay;
.super Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
.source "BusOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final busHeight:I

.field private final busPicture:Landroid/graphics/drawable/Drawable;

.field private context:Lboston/Bus/Map/main/Main;

.field private drawHighlightCircle:Z

.field private final locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lboston/Bus/Map/data/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mapMoved:Z

.field private final overlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;

.field private selectedBusIndex:I

.field private updateable:Lboston/Bus/Map/main/UpdateHandler;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lboston/Bus/Map/main/Main;Lcom/google/android/maps/MapView;)V
    .registers 7

    const/16 v2, 0x77

    invoke-static {p1}, Lboston/Bus/Map/ui/BusOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    iput-object p2, p0, Lboston/Bus/Map/ui/BusOverlay;->context:Lboston/Bus/Map/main/Main;

    const/4 v0, -0x1

    iput v0, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    iput-object p1, p0, Lboston/Bus/Map/ui/BusOverlay;->busPicture:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lboston/Bus/Map/ui/BusOverlay;->busHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Lboston/Bus/Map/ui/BusOverlay$1;

    invoke-direct {v0, p0}, Lboston/Bus/Map/ui/BusOverlay$1;-><init>(Lboston/Bus/Map/ui/BusOverlay;)V

    invoke-virtual {p0, v0}, Lboston/Bus/Map/ui/BusOverlay;->setOnFocusChangeListener(Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;)V

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lboston/Bus/Map/ui/BusOverlay;->setBalloonBottomOffset(I)V

    return-void
.end method

.method public constructor <init>(Lboston/Bus/Map/ui/BusOverlay;Lboston/Bus/Map/main/Main;Lcom/google/android/maps/MapView;)V
    .registers 8

    iget-object v2, p1, Lboston/Bus/Map/ui/BusOverlay;->busPicture:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, p2, p3}, Lboston/Bus/Map/ui/BusOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lboston/Bus/Map/main/Main;Lcom/google/android/maps/MapView;)V

    iget-boolean v2, p1, Lboston/Bus/Map/ui/BusOverlay;->drawHighlightCircle:Z

    iput-boolean v2, p0, Lboston/Bus/Map/ui/BusOverlay;->drawHighlightCircle:Z

    iget-object v2, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    iget-object v3, p1, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p1, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {p0, v1}, Lboston/Bus/Map/ui/BusOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    goto :goto_16

    :cond_26
    invoke-virtual {p0}, Lboston/Bus/Map/ui/BusOverlay;->populate()V

    invoke-virtual {p1}, Lboston/Bus/Map/ui/BusOverlay;->getLastFocusedIndex()I

    move-result v2

    iput v2, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    iget v2, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_39

    iget v2, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    invoke-virtual {p0, v2}, Lboston/Bus/Map/ui/BusOverlay;->onTap(I)Z

    :cond_39
    invoke-virtual {p1}, Lboston/Bus/Map/ui/BusOverlay;->getLastFocusedIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lboston/Bus/Map/ui/BusOverlay;->setLastFocusedIndex(I)V

    return-void
.end method

.method static synthetic access$000(Lboston/Bus/Map/ui/BusOverlay;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lboston/Bus/Map/ui/BusOverlay;->setLastFocusedIndex(I)V

    return-void
.end method

.method static synthetic access$100(Lboston/Bus/Map/ui/BusOverlay;)V
    .registers 1

    invoke-virtual {p0}, Lboston/Bus/Map/ui/BusOverlay;->hideBalloon()V

    return-void
.end method

.method static synthetic access$200(Lboston/Bus/Map/ui/BusOverlay;)Lboston/Bus/Map/main/Main;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->context:Lboston/Bus/Map/main/Main;

    return-object v0
.end method

.method static synthetic access$300(Lboston/Bus/Map/ui/BusOverlay;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lboston/Bus/Map/ui/BusOverlay;->populate()V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lboston/Bus/Map/ui/BusOverlay;->setFocus(Lcom/google/android/maps/OverlayItem;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lboston/Bus/Map/ui/BusOverlay;->setLastFocusedIndex(I)V

    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .registers 3

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/OverlayItem;

    return-object p0
.end method

.method public doPopulate()V
    .registers 1

    invoke-virtual {p0}, Lboston/Bus/Map/ui/BusOverlay;->populate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .registers 32

    invoke-virtual/range {p0 .. p0}, Lboston/Bus/Map/ui/BusOverlay;->getLastFocusedIndex()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v22

    const/16 v16, 0x0

    :goto_1e
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/maps/OverlayItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lboston/Bus/Map/data/Location;

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_72

    const/16 v26, 0x1

    move/from16 v17, v26

    :goto_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->context:Lboston/Bus/Map/main/Main;

    move-object/from16 v26, v0

    move-object v0, v5

    move-object/from16 v1, v26

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lboston/Bus/Map/data/Location;->getDrawable(Landroid/content/Context;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v5

    instance-of v0, v0, Lboston/Bus/Map/data/BusLocation;

    move/from16 v26, v0

    if-nez v26, :cond_6f

    invoke-static {v10}, Lboston/Bus/Map/ui/BusOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_6f
    add-int/lit8 v16, v16, 0x1

    goto :goto_1e

    :cond_72
    const/16 v26, 0x0

    move/from16 v17, v26

    goto :goto_4e

    :cond_77
    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/maps/OverlayItem;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lboston/Bus/Map/ui/BusOverlay;->setFocus(Lcom/google/android/maps/OverlayItem;)V

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    :cond_a5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lboston/Bus/Map/ui/BusOverlay;->drawHighlightCircle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_178

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_178

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v13}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v14

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object v1, v14

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    const/16 v19, 0x0

    const/16 v16, 0x1

    :goto_de
    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_13d

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/maps/OverlayItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lboston/Bus/Map/data/Location;

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v15

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object v1, v15

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v23

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    sub-int v11, v26, v27

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v27, v0

    sub-int v12, v26, v27

    mul-int v26, v11, v11

    mul-int v27, v12, v12

    add-int v9, v26, v27

    move v0, v9

    move/from16 v1, v19

    if-le v0, v1, :cond_13a

    move/from16 v19, v9

    :cond_13a
    add-int/lit8 v16, v16, 0x1

    goto :goto_de

    :cond_13d
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v25, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v7, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lboston/Bus/Map/ui/BusOverlay;->busHeight:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x2

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lboston/Bus/Map/ui/BusOverlay;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_178
    invoke-super/range {p0 .. p3}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    return-void
.end method

.method public getBusPicture()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->busPicture:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedBusId()I
    .registers 4

    const/4 v2, -0x1

    invoke-virtual {p0}, Lboston/Bus/Map/ui/BusOverlay;->getLastFocusedIndex()I

    move-result v0

    if-ne v0, v2, :cond_9

    move v1, v2

    :goto_8
    return v1

    :cond_9
    iget-object v1, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_15

    iput v2, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    move v1, v2

    goto :goto_8

    :cond_15
    iget-object v1, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lboston/Bus/Map/data/Location;

    invoke-interface {p0}, Lboston/Bus/Map/data/Location;->getId()I

    move-result v1

    goto :goto_8
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    iput-boolean v2, p0, Lboston/Bus/Map/ui/BusOverlay;->mapMoved:Z

    :cond_a
    :goto_a
    return v2

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    iput-boolean v3, p0, Lboston/Bus/Map/ui/BusOverlay;->mapMoved:Z

    goto :goto_a

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_a

    iget-boolean v0, p0, Lboston/Bus/Map/ui/BusOverlay;->mapMoved:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->updateable:Lboston/Bus/Map/main/UpdateHandler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->updateable:Lboston/Bus/Map/main/UpdateHandler;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lboston/Bus/Map/main/UpdateHandler;->triggerUpdate(I)V

    goto :goto_a
.end method

.method public refreshBalloons()V
    .registers 3

    iget v0, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lboston/Bus/Map/ui/BusOverlay;->hideBalloon()V

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    invoke-virtual {p0, v0}, Lboston/Bus/Map/ui/BusOverlay;->onTap(I)Z

    goto :goto_8
.end method

.method public setBusLocations(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboston/Bus/Map/data/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setContext(Lboston/Bus/Map/main/Main;)V
    .registers 2

    iput-object p1, p0, Lboston/Bus/Map/ui/BusOverlay;->context:Lboston/Bus/Map/main/Main;

    return-void
.end method

.method public setDrawHighlightCircle(Z)V
    .registers 2

    iput-boolean p1, p0, Lboston/Bus/Map/ui/BusOverlay;->drawHighlightCircle:Z

    return-void
.end method

.method public setSelectedBusId(I)V
    .registers 7

    const/4 v2, -0x1

    iput v2, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    if-eq p1, v2, :cond_1e

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboston/Bus/Map/data/Location;

    invoke-interface {v0}, Lboston/Bus/Map/data/Location;->getId()I

    move-result v2

    if-ne v2, p1, :cond_37

    iput v1, p0, Lboston/Bus/Map/ui/BusOverlay;->selectedBusIndex:I

    :cond_1e
    const-string v2, "BostonBusMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedBusId param was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public setUpdateable(Lboston/Bus/Map/main/UpdateHandler;)V
    .registers 2

    iput-object p1, p0, Lboston/Bus/Map/ui/BusOverlay;->updateable:Lboston/Bus/Map/main/UpdateHandler;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lboston/Bus/Map/ui/BusOverlay;->overlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toggleFavorite(Lboston/Bus/Map/database/DatabaseHelper;Lboston/Bus/Map/data/Locations;)I
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p0}, Lboston/Bus/Map/ui/BusOverlay;->getLastFocusedIndex()I

    move-result v1

    if-ltz v1, :cond_31

    iget-object v2, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    iget-object v2, p0, Lboston/Bus/Map/ui/BusOverlay;->locations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboston/Bus/Map/data/Location;

    instance-of v2, v0, Lboston/Bus/Map/data/StopLocation;

    if-eqz v2, :cond_22

    check-cast v0, Lboston/Bus/Map/data/StopLocation;

    invoke-virtual {p2, p1, v0}, Lboston/Bus/Map/data/Locations;->toggleFavorite(Lboston/Bus/Map/database/DatabaseHelper;Lboston/Bus/Map/data/StopLocation;)I

    move-result v2

    :goto_21
    return v2

    :cond_22
    iget-object v2, p0, Lboston/Bus/Map/ui/BusOverlay;->context:Lboston/Bus/Map/main/Main;

    const-string v3, "You can only favorite bus stops"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_2d
    const v2, 0x7f020010

    goto :goto_21

    :cond_31
    iget-object v2, p0, Lboston/Bus/Map/ui/BusOverlay;->context:Lboston/Bus/Map/main/Main;

    const-string v3, "No bus stop is currently selected"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2d
.end method
