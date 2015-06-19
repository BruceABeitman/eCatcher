.class public final Lcom/google/zxing/oned/MultiFormatOneDReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatOneDReader.java"
.field private final readers:[Lcom/google/zxing/oned/OneDReader;
.method public constructor <init>(Ljava/util/Map;)V
.registers 6
invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V
if-nez p1, :cond_105
const/4 v0, 0x0
:goto_6
if-eqz p1, :cond_110
sget-object v3, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;
invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_110
const/4 v2, 0x1
:goto_11
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-eqz v0, :cond_b0
sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_38
sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_38
sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_38
sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_40
:cond_38
new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;
invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Map;)V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_40
sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_50
new-instance v3, Lcom/google/zxing/oned/Code39Reader;
invoke-direct {v3, v2}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_50
sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_60
new-instance v3, Lcom/google/zxing/oned/Code93Reader;
invoke-direct {v3}, Lcom/google/zxing/oned/Code93Reader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_60
sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_70
new-instance v3, Lcom/google/zxing/oned/Code128Reader;
invoke-direct {v3}, Lcom/google/zxing/oned/Code128Reader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_70
sget-object v3, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_80
new-instance v3, Lcom/google/zxing/oned/ITFReader;
invoke-direct {v3}, Lcom/google/zxing/oned/ITFReader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_80
sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_90
new-instance v3, Lcom/google/zxing/oned/CodaBarReader;
invoke-direct {v3}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_90
sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_a0
new-instance v3, Lcom/google/zxing/oned/rss/RSS14Reader;
invoke-direct {v3}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_a0
sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_b0
new-instance v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_b0
invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z
move-result v3
if-eqz v3, :cond_f6
new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;
invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Map;)V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/google/zxing/oned/Code39Reader;
invoke-direct {v3}, Lcom/google/zxing/oned/Code39Reader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/google/zxing/oned/CodaBarReader;
invoke-direct {v3}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/google/zxing/oned/Code93Reader;
invoke-direct {v3}, Lcom/google/zxing/oned/Code93Reader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/google/zxing/oned/Code128Reader;
invoke-direct {v3}, Lcom/google/zxing/oned/Code128Reader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/google/zxing/oned/ITFReader;
invoke-direct {v3}, Lcom/google/zxing/oned/ITFReader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/google/zxing/oned/rss/RSS14Reader;
invoke-direct {v3}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
invoke-direct {v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V
invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_f6
invoke-interface {v1}, Ljava/util/Collection;->size()I
move-result v3
new-array v3, v3, [Lcom/google/zxing/oned/OneDReader;
invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v3
check-cast v3, [Lcom/google/zxing/oned/OneDReader;
iput-object v3, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;
return-void
:cond_105
sget-object v3, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;
invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/Collection;
move-object v0, v3
goto/16 :goto_6
:cond_110
const/4 v2, 0x0
goto/16 :goto_11
.end method
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
.registers 9
iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;
array-length v2, v0
const/4 v1, 0x0
:goto_4
if-ge v1, v2, :cond_11
aget-object v3, v0, v1
:try_start_8
invoke-virtual {v3, p1, p2, p3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
:try_end_b
.catch Lcom/google/zxing/ReaderException; {:try_start_8 .. :try_end_b} :catch_d
move-result-object v4
return-object v4
:catch_d
move-exception v4
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_11
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v4
throw v4
.end method
.method public reset()V
.registers 5
iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;
array-length v2, v0
const/4 v1, 0x0
:goto_4
if-ge v1, v2, :cond_e
aget-object v3, v0, v1
invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_e
return-void
.end method