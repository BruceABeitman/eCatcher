.class final Lcom/google/zxing/datamatrix/encoder/TextEncoder;
.super Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.source "TextEncoder.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V
return-void
.end method
.method  encodeChar(CLjava/lang/StringBuilder;)I
.registers 6
const/4 v0, 0x1
const/4 v1, 0x2
const/16 v2, 0x20
if-ne p1, v2, :cond_b
const/4 v1, 0x3
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_a
return v0
:cond_b
const/16 v2, 0x30
if-lt p1, v2, :cond_1c
const/16 v2, 0x39
if-gt p1, v2, :cond_1c
add-int/lit8 v1, p1, -0x30
add-int/lit8 v1, v1, 0x4
int-to-char v1, v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_a
:cond_1c
const/16 v2, 0x61
if-lt p1, v2, :cond_2d
const/16 v2, 0x7a
if-gt p1, v2, :cond_2d
add-int/lit8 v1, p1, -0x61
add-int/lit8 v1, v1, 0xe
int-to-char v1, v1
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_a
:cond_2d
if-ltz p1, :cond_3c
const/16 v2, 0x1f
if-gt p1, v2, :cond_3c
const/4 v2, 0x0
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_3c
const/16 v2, 0x21
if-lt p1, v2, :cond_4f
const/16 v2, 0x2f
if-gt p1, v2, :cond_4f
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x21
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_4f
const/16 v2, 0x3a
if-lt p1, v2, :cond_64
const/16 v2, 0x40
if-gt p1, v2, :cond_64
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x3a
add-int/lit8 v2, v2, 0xf
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_64
const/16 v2, 0x5b
if-lt p1, v2, :cond_79
const/16 v2, 0x5f
if-gt p1, v2, :cond_79
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x5b
add-int/lit8 v2, v2, 0x16
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_79
const/16 v2, 0x60
if-ne p1, v2, :cond_88
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x60
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_a
:cond_88
const/16 v2, 0x41
if-lt p1, v2, :cond_9e
const/16 v2, 0x5a
if-gt p1, v2, :cond_9e
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x41
add-int/lit8 v2, v2, 0x1
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto/16 :goto_a
:cond_9e
const/16 v2, 0x7b
if-lt p1, v2, :cond_b4
const/16 v2, 0x7f
if-gt p1, v2, :cond_b4
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, p1, -0x7b
add-int/lit8 v2, v2, 0x1b
int-to-char v2, v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
goto/16 :goto_a
:cond_b4
const/16 v1, 0x80
if-lt p1, v1, :cond_c9
const-string/jumbo v1, "\u0001\u001e"
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x2
add-int/lit8 v1, p1, -0x80
int-to-char v1, v1
invoke-virtual {p0, v1, p2}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;->encodeChar(CLjava/lang/StringBuilder;)I
move-result v1
add-int/2addr v0, v1
goto/16 :goto_a
:cond_c9
invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V
const/4 v0, -0x1
goto/16 :goto_a
.end method
.method public getEncodingMode()I
.registers 2
const/4 v0, 0x2
return v0
.end method