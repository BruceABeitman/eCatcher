.class public final Lcom/google/zxing/oned/UPCAWriter;
.super Ljava/lang/Object;
.source "UPCAWriter.java"
.implements Lcom/google/zxing/Writer;
.field private final subWriter:Lcom/google/zxing/oned/EAN13Writer;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/oned/EAN13Writer;
invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V
iput-object v0, p0, Lcom/google/zxing/oned/UPCAWriter;->subWriter:Lcom/google/zxing/oned/EAN13Writer;
return-void
.end method
.method private static preencode(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/16 v5, 0xb
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ne v1, v5, :cond_47
const/4 v2, 0x0
const/4 v0, 0x0
:goto_a
if-ge v0, v5, :cond_1e
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
add-int/lit8 v4, v3, -0x30
rem-int/lit8 v3, v0, 0x2
if-nez v3, :cond_1c
const/4 v3, 0x3
:goto_17
mul-int/2addr v3, v4
add-int/2addr v2, v3
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1c
const/4 v3, 0x1
goto :goto_17
:cond_1e
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
rsub-int v4, v2, 0x3e8
rem-int/lit8 v4, v4, 0xa
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_33
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/16 v4, 0x30
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
:cond_47
const/16 v3, 0xc
if-eq v1, v3, :cond_33
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Requested contents should be 11 or 12 digits long, but got "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/UPCAWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
.end method
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
.registers 12
sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;
if-eq p2, v0, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "Can only encode UPC-A, but got "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
iget-object v0, p0, Lcom/google/zxing/oned/UPCAWriter;->subWriter:Lcom/google/zxing/oned/EAN13Writer;
invoke-static {p1}, Lcom/google/zxing/oned/UPCAWriter;->preencode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;
move v3, p3
move v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/oned/EAN13Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
move-result-object v0
return-object v0
.end method