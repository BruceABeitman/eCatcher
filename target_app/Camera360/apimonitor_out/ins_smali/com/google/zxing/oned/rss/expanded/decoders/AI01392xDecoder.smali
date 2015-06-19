.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01392xDecoder.java"
.field private static final HEADER_SIZE:I = 0x8
.field private static final LAST_DIGIT_SIZE:I = 0x2
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V
return-void
.end method
.method public parseInformation()Ljava/lang/String;
.registers 7
const/16 v5, 0x30
invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->getInformation()Lcom/google/zxing/common/BitArray;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I
move-result v3
if-ge v3, v5, :cond_11
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v3
throw v3
:cond_11
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/16 v3, 0x8
invoke-virtual {p0, v0, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V
invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
move-result-object v3
const/4 v4, 0x2
invoke-virtual {v3, v5, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v2
const-string/jumbo v3, "(392"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v3, 0x29
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
move-result-object v3
const/16 v4, 0x32
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method