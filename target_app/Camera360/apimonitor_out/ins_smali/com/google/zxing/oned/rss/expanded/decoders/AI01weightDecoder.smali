.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01weightDecoder.java"
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V
return-void
.end method
.method protected abstract addWeightCode(Ljava/lang/StringBuilder;I)V
.end method
.method protected abstract checkWeight(I)I
.end method
.method protected final encodeCompressedWeight(Ljava/lang/StringBuilder;II)V
.registers 9
invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
move-result-object v4
invoke-virtual {v4, p2, p3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v2
invoke-virtual {p0, p1, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->addWeightCode(Ljava/lang/StringBuilder;I)V
invoke-virtual {p0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->checkWeight(I)I
move-result v3
const v0, 0x186a0
const/4 v1, 0x0
:goto_13
const/4 v4, 0x5
if-ge v1, v4, :cond_24
div-int v4, v3, v0
if-nez v4, :cond_1f
const/16 v4, 0x30
invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1f
div-int/lit8 v0, v0, 0xa
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_24
invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
return-void
.end method