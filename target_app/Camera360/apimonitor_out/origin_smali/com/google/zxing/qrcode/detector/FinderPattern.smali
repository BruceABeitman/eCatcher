.class public final Lcom/google/zxing/qrcode/detector/FinderPattern;
.super Lcom/google/zxing/ResultPoint;
.source "FinderPattern.java"


# instance fields
.field private final count:I

.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    return-void
.end method

.method private constructor <init>(FFFI)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    iput p3, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    iput p4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_32

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v2

    sub-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_32

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-lez v2, :cond_31

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_32

    :cond_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;
    .registers 10

    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    add-int/lit8 v0, v4, 0x1

    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p2

    int-to-float v5, v0

    div-float v2, v4, v5

    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v4, p1

    int-to-float v5, v0

    div-float v3, v4, v5

    iget v4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    mul-float/2addr v4, v5

    add-float/2addr v4, p3

    int-to-float v5, v0

    div-float v1, v4, v5

    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    return-object v4
.end method

.method getCount()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    return v0
.end method

.method public getEstimatedModuleSize()F
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    return v0
.end method
