.class final Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.source "AnyAIDecoder.java"
.field private static final HEADER_SIZE:I = 0x5
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V
return-void
.end method
.method public parseInformation()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
move-result-object v1
const/4 v2, 0x5
invoke-virtual {v1, v0, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;
move-result-object v1
return-object v1
.end method