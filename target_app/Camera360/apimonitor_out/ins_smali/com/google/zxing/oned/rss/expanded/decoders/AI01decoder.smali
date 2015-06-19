.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.source "AI01decoder.java"
.field protected static final GTIN_SIZE:I = 0x28
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V
return-void
.end method
.method private static appendCheckDigit(Ljava/lang/StringBuilder;I)V
.registers 6
const/4 v0, 0x0
const/4 v2, 0x0
:goto_2
const/16 v3, 0xd
if-ge v2, v3, :cond_18
add-int v3, v2, p1
invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v3
add-int/lit8 v1, v3, -0x30
and-int/lit8 v3, v2, 0x1
if-nez v3, :cond_14
mul-int/lit8 v1, v1, 0x3
:cond_14
add-int/2addr v0, v1
add-int/lit8 v2, v2, 0x1
goto :goto_2
:cond_18
rem-int/lit8 v3, v0, 0xa
rsub-int/lit8 v0, v3, 0xa
const/16 v3, 0xa
if-ne v0, v3, :cond_21
const/4 v0, 0x0
:cond_21
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
return-void
.end method
.method protected final encodeCompressedGtin(Ljava/lang/StringBuilder;I)V
.registers 5
const-string/jumbo v1, "(01)"
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I
move-result v0
const/16 v1, 0x39
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V
return-void
.end method
.method protected final encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V
.registers 10
const/16 v5, 0x30
const/4 v1, 0x0
:goto_3
const/4 v2, 0x4
if-ge v1, v2, :cond_27
invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
move-result-object v2
mul-int/lit8 v3, v1, 0xa
add-int/2addr v3, p2
const/16 v4, 0xa
invoke-virtual {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I
move-result v0
div-int/lit8 v2, v0, 0x64
if-nez v2, :cond_1a
invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_1a
div-int/lit8 v2, v0, 0xa
if-nez v2, :cond_21
invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_21
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_27
invoke-static {p1, p3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->appendCheckDigit(Ljava/lang/StringBuilder;I)V
return-void
.end method