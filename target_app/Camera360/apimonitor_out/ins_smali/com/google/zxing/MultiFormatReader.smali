.class public final Lcom/google/zxing/MultiFormatReader;
.super Ljava/lang/Object;
.source "MultiFormatReader.java"
.implements Lcom/google/zxing/Reader;
.field private hints:Ljava/util/Map;
.field private readers:[Lcom/google/zxing/Reader;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
.registers 7
iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;
if-eqz v4, :cond_17
iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;
array-length v2, v0
const/4 v1, 0x0
:goto_8
if-ge v1, v2, :cond_17
aget-object v3, v0, v1
:try_start_c
iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Map;
invoke-interface {v3, p1, v4}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
:try_end_11
.catch Lcom/google/zxing/ReaderException; {:try_start_c .. :try_end_11} :catch_13
move-result-object v4
return-object v4
:catch_13
move-exception v4
add-int/lit8 v1, v1, 0x1
goto :goto_8
:cond_17
invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;
move-result-object v4
throw v4
.end method
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
move-result-object v0
return-object v0
.end method
.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
.registers 4
invoke-virtual {p0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
move-result-object v0
return-object v0
.end method
.method public decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
.registers 3
iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;
if-nez v0, :cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V
:cond_8
invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
move-result-object v0
return-object v0
.end method
.method public reset()V
.registers 6
iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;
if-eqz v4, :cond_12
iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;
array-length v2, v0
const/4 v1, 0x0
:goto_8
if-ge v1, v2, :cond_12
aget-object v3, v0, v1
invoke-interface {v3}, Lcom/google/zxing/Reader;->reset()V
add-int/lit8 v1, v1, 0x1
goto :goto_8
:cond_12
return-void
.end method
.method public setHints(Ljava/util/Map;)V
.registers 8
const/4 v5, 0x1
const/4 v0, 0x0
iput-object p1, p0, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Map;
if-eqz p1, :cond_12b
sget-object v4, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;
invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_12b
move v3, v5
:goto_f
if-nez p1, :cond_12e
const/4 v1, 0x0
:goto_12
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
if-eqz v1, :cond_da
sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_71
sget-object v4, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_72
:cond_71
move v0, v5
:cond_72
if-eqz v0, :cond_7e
if-nez v3, :cond_7e
new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;
invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_7e
sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_8e
new-instance v4, Lcom/google/zxing/qrcode/QRCodeReader;
invoke-direct {v4}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_8e
sget-object v4, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_9e
new-instance v4, Lcom/google/zxing/datamatrix/DataMatrixReader;
invoke-direct {v4}, Lcom/google/zxing/datamatrix/DataMatrixReader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_9e
sget-object v4, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_ae
new-instance v4, Lcom/google/zxing/aztec/AztecReader;
invoke-direct {v4}, Lcom/google/zxing/aztec/AztecReader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_ae
sget-object v4, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_be
new-instance v4, Lcom/google/zxing/pdf417/PDF417Reader;
invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417Reader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_be
sget-object v4, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;
invoke-interface {v1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_ce
new-instance v4, Lcom/google/zxing/maxicode/MaxiCodeReader;
invoke-direct {v4}, Lcom/google/zxing/maxicode/MaxiCodeReader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_ce
if-eqz v0, :cond_da
if-eqz v3, :cond_da
new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;
invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_da
invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z
move-result v4
if-eqz v4, :cond_11c
if-nez v3, :cond_ea
new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;
invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_ea
new-instance v4, Lcom/google/zxing/qrcode/QRCodeReader;
invoke-direct {v4}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v4, Lcom/google/zxing/datamatrix/DataMatrixReader;
invoke-direct {v4}, Lcom/google/zxing/datamatrix/DataMatrixReader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v4, Lcom/google/zxing/aztec/AztecReader;
invoke-direct {v4}, Lcom/google/zxing/aztec/AztecReader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v4, Lcom/google/zxing/pdf417/PDF417Reader;
invoke-direct {v4}, Lcom/google/zxing/pdf417/PDF417Reader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v4, Lcom/google/zxing/maxicode/MaxiCodeReader;
invoke-direct {v4}, Lcom/google/zxing/maxicode/MaxiCodeReader;-><init>()V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
if-eqz v3, :cond_11c
new-instance v4, Lcom/google/zxing/oned/MultiFormatOneDReader;
invoke-direct {v4, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V
invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_11c
invoke-interface {v2}, Ljava/util/Collection;->size()I
move-result v4
new-array v4, v4, [Lcom/google/zxing/Reader;
invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v4
check-cast v4, [Lcom/google/zxing/Reader;
iput-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;
return-void
:cond_12b
move v3, v0
goto/16 :goto_f
:cond_12e
sget-object v4, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;
invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/util/Collection;
move-object v1, v4
goto/16 :goto_12
.end method