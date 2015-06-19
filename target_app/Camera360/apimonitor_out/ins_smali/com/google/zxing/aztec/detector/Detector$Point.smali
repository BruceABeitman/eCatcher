.class final Lcom/google/zxing/aztec/detector/Detector$Point;
.super Ljava/lang/Object;
.source "Detector.java"
.field private final x:I
.field private final y:I
.method constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I
iput p2, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I
return-void
.end method
.method  getX()I
.registers 2
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I
return v0
.end method
.method  getY()I
.registers 2
iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I
return v0
.end method
.method  toResultPoint()Lcom/google/zxing/ResultPoint;
.registers 4
new-instance v0, Lcom/google/zxing/ResultPoint;
invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getX()I
move-result v1
int-to-float v1, v1
invoke-virtual {p0}, Lcom/google/zxing/aztec/detector/Detector$Point;->getY()I
move-result v2
int-to-float v2, v2
invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "<"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x3e
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method