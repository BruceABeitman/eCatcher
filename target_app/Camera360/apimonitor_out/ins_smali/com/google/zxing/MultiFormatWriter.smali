.class public final Lcom/google/zxing/MultiFormatWriter;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"
.implements Lcom/google/zxing/Writer;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
.registers 12
sget-object v1, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I
invoke-virtual {p2}, Lcom/google/zxing/BarcodeFormat;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_70
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "No encoder available for format "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_25
new-instance v0, Lcom/google/zxing/oned/EAN8Writer;
invoke-direct {v0}, Lcom/google/zxing/oned/EAN8Writer;-><init>()V
:goto_2a
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
move-result-object v1
return-object v1
:pswitch_34
new-instance v0, Lcom/google/zxing/oned/EAN13Writer;
invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V
goto :goto_2a
:pswitch_3a
new-instance v0, Lcom/google/zxing/oned/UPCAWriter;
invoke-direct {v0}, Lcom/google/zxing/oned/UPCAWriter;-><init>()V
goto :goto_2a
:pswitch_40
new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;
invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V
goto :goto_2a
:pswitch_46
new-instance v0, Lcom/google/zxing/oned/Code39Writer;
invoke-direct {v0}, Lcom/google/zxing/oned/Code39Writer;-><init>()V
goto :goto_2a
:pswitch_4c
new-instance v0, Lcom/google/zxing/oned/Code128Writer;
invoke-direct {v0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V
goto :goto_2a
:pswitch_52
new-instance v0, Lcom/google/zxing/oned/ITFWriter;
invoke-direct {v0}, Lcom/google/zxing/oned/ITFWriter;-><init>()V
goto :goto_2a
:pswitch_58
new-instance v0, Lcom/google/zxing/pdf417/PDF417Writer;
invoke-direct {v0}, Lcom/google/zxing/pdf417/PDF417Writer;-><init>()V
goto :goto_2a
:pswitch_5e
new-instance v0, Lcom/google/zxing/oned/CodaBarWriter;
invoke-direct {v0}, Lcom/google/zxing/oned/CodaBarWriter;-><init>()V
goto :goto_2a
:pswitch_64
new-instance v0, Lcom/google/zxing/datamatrix/DataMatrixWriter;
invoke-direct {v0}, Lcom/google/zxing/datamatrix/DataMatrixWriter;-><init>()V
goto :goto_2a
:pswitch_6a
new-instance v0, Lcom/google/zxing/aztec/AztecWriter;
invoke-direct {v0}, Lcom/google/zxing/aztec/AztecWriter;-><init>()V
goto :goto_2a
:pswitch_data_70
.packed-switch 0x1
:pswitch_25
:pswitch_34
:pswitch_3a
:pswitch_40
:pswitch_46
:pswitch_4c
:pswitch_52
:pswitch_58
:pswitch_5e
:pswitch_64
:pswitch_6a
.end packed-switch
.end method