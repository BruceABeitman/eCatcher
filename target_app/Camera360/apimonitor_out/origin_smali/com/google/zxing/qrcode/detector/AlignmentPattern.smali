.class public final Lcom/google/zxing/qrcode/detector/AlignmentPattern;
.super Lcom/google/zxing/ResultPoint;
.source "AlignmentPattern.java"


# instance fields
.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getY()F

    move-result v2

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_32

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getX()F

    move-result v2

    sub-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_32

    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f80

    cmpg-float v2, v0, v2

    if-lez v2, :cond_31

    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_32

    :cond_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .registers 9

    const/high16 v4, 0x4000

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getX()F

    move-result v3

    add-float/2addr v3, p2

    div-float v1, v3, v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getY()F

    move-result v3

    add-float/2addr v3, p1

    div-float v2, v3, v4

    iget v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    add-float/2addr v3, p3

    div-float v0, v3, v4

    new-instance v3, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    return-object v3
.end method
