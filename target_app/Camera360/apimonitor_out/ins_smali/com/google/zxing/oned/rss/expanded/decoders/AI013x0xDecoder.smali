.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.source "AI013x0xDecoder.java"
.field private static final HEADER_SIZE:I = 0x5
.field private static final WEIGHT_SIZE:I = 0xf
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V
return-void
.end method
.method public parseInformation()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;->getInformation()Lcom/google/zxing/common/BitArray;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v1
const/16 v2, 0x3c
if-eq v1, v2, :cond_11
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v1
throw v1
:cond_11
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x5
invoke-virtual {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V
const/16 v1, 0x2d
const/16 v2, 0xf
invoke-virtual {p0, v0, v1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;->encodeCompressedWeight(Ljava/lang/StringBuilder;II)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method