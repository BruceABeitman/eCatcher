.class public Lcom/google/zxing/common/DetectorResult;
.super Ljava/lang/Object;
.source "DetectorResult.java"
.field private final bits:Lcom/google/zxing/common/BitMatrix;
.field private final points:[Lcom/google/zxing/ResultPoint;
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/common/DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;
iput-object p2, p0, Lcom/google/zxing/common/DetectorResult;->points:[Lcom/google/zxing/ResultPoint;
return-void
.end method
.method public final getBits()Lcom/google/zxing/common/BitMatrix;
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;
return-object v0
.end method
.method public final getPoints()[Lcom/google/zxing/ResultPoint;
.registers 2
iget-object v0, p0, Lcom/google/zxing/common/DetectorResult;->points:[Lcom/google/zxing/ResultPoint;
return-object v0
.end method