.class public final Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
.super Ljava/lang/Object;
.source "FinderPatternInfo.java"
.field private final bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
.field private final topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
.field private final topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;
.method public constructor <init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
const/4 v0, 0x1
aget-object v0, p1, v0
iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
const/4 v0, 0x2
aget-object v0, p1, v0
iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;
return-void
.end method
.method public getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
.registers 2
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->bottomLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
return-object v0
.end method
.method public getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;
.registers 2
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topLeft:Lcom/google/zxing/qrcode/detector/FinderPattern;
return-object v0
.end method
.method public getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;
.registers 2
iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->topRight:Lcom/google/zxing/qrcode/detector/FinderPattern;
return-object v0
.end method