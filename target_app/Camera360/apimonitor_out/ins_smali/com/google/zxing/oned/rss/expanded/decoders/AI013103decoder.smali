.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
.source "AI013103decoder.java"
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V
return-void
.end method
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
.registers 4
const-string/jumbo v0, "(3103)"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method protected checkWeight(I)I
.registers 2
return p1
.end method