.class final Lcom/google/zxing/pdf417/decoder/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field private bottomLeft:Lcom/google/zxing/ResultPoint;

.field private bottomRight:Lcom/google/zxing/ResultPoint;

.field private image:Lcom/google/zxing/common/BitMatrix;

.field private maxX:I

.field private maxY:I

.field private minX:I

.field private minY:I

.field private topLeft:Lcom/google/zxing/ResultPoint;

.field private topRight:Lcom/google/zxing/ResultPoint;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_7

    if-eqz p4, :cond_13

    :cond_7
    if-nez p3, :cond_b

    if-eqz p5, :cond_13

    :cond_b
    if-eqz p2, :cond_f

    if-eqz p3, :cond_13

    :cond_f
    if-eqz p4, :cond_18

    if-nez p5, :cond_18

    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->init(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iget-object v3, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iget-object v4, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iget-object v5, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->init(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    return-void
.end method

.method private calculateMinMaxValues()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    if-nez v0, :cond_6c

    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    return-void

    :cond_6c
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    new-instance v0, Lcom/google/zxing/ResultPoint;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    goto :goto_1f
.end method

.method private init(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .registers 6

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iput-object p3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iput-object p4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iput-object p5, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->calculateMinMaxValues()V

    return-void
.end method

.method static merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    if-nez p1, :cond_7

    move-object p1, p0

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iget-object v4, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iget-object v5, p1, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    move-object p1, v0

    goto :goto_2
.end method


# virtual methods
.method addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    iget-object v3, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    if-lez p1, :cond_25

    if-eqz p3, :cond_5a

    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    :goto_e
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    sub-int v9, v0, p1

    if-gez v9, :cond_18

    const/4 v9, 0x0

    :cond_18
    new-instance v10, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    int-to-float v1, v9

    invoke-direct {v10, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    if-eqz p3, :cond_5d

    move-object v2, v10

    :cond_25
    :goto_25
    if-lez p2, :cond_4f

    if-eqz p3, :cond_5f

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    :goto_2b
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int v8, v0, p2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-lt v8, v0, :cond_42

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :cond_42
    new-instance v7, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    int-to-float v1, v8

    invoke-direct {v7, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    if-eqz p3, :cond_62

    move-object v3, v7

    :cond_4f
    :goto_4f
    invoke-direct {p0}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->calculateMinMaxValues()V

    new-instance v0, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    return-object v0

    :cond_5a
    iget-object v11, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    goto :goto_e

    :cond_5d
    move-object v4, v10

    goto :goto_25

    :cond_5f
    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    goto :goto_2b

    :cond_62
    move-object v5, v7

    goto :goto_4f
.end method

.method getBottomLeft()Lcom/google/zxing/ResultPoint;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getBottomRight()Lcom/google/zxing/ResultPoint;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->bottomRight:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getMaxX()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxX:I

    return v0
.end method

.method getMaxY()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->maxY:I

    return v0
.end method

.method getMinX()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minX:I

    return v0
.end method

.method getMinY()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->minY:I

    return v0
.end method

.method getTopLeft()Lcom/google/zxing/ResultPoint;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topLeft:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method

.method getTopRight()Lcom/google/zxing/ResultPoint;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/BoundingBox;->topRight:Lcom/google/zxing/ResultPoint;

    return-object v0
.end method
