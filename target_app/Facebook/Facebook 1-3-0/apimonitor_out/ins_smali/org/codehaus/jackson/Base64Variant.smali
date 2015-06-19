.class public final Lorg/codehaus/jackson/Base64Variant;
.super Ljava/lang/Object;
.field public static final BASE64_VALUE_INVALID:I = -0x1
.field public static final BASE64_VALUE_PADDING:I = -0x2
.field static final PADDING_CHAR_NONE:C
.field private final _asciiToBase64:[I
.field private final _base64ToAsciiB:[B
.field private final _base64ToAsciiC:[C
.field final _maxLineLength:I
.field final _name:Ljava/lang/String;
.field final _paddingChar:C
.field final _usesPadding:Z
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
.registers 11
const/16 v1, 0x40
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x80
new-array v0, v0, [I
iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
new-array v0, v1, [C
iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
new-array v0, v1, [B
iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
iput-object p1, p0, Lorg/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;
iput-boolean p3, p0, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z
iput-char p4, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
iput p5, p0, Lorg/codehaus/jackson/Base64Variant;->_maxLineLength:I
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-eq v0, v1, :cond_41
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Base64Alphabet length must be exactly 64 (was "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ")"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_41
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
invoke-virtual {p2, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
const/4 v2, -0x1
invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V
move v1, v3
:goto_4d
if-ge v1, v0, :cond_5f
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
aget-char v2, v2, v1
iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
int-to-byte v4, v2
aput-byte v4, v3, v1
iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
aput v1, v3, v2
add-int/lit8 v1, v1, 0x1
goto :goto_4d
:cond_5f
if-eqz p3, :cond_66
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
const/4 v1, -0x2
aput v1, v0, p4
:cond_66
return-void
.end method
.method public constructor <init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V
.registers 10
iget-boolean v3, p1, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z
iget-char v4, p1, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v5, p3
invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/Base64Variant;-><init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V
return-void
.end method
.method public constructor <init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V
.registers 10
const/16 v1, 0x40
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x80
new-array v0, v0, [I
iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
new-array v0, v1, [C
iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
new-array v0, v1, [B
iput-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
iput-object p2, p0, Lorg/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;
iget-object v0, p1, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
array-length v2, v0
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p1, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
array-length v2, v0
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v0, p1, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
array-length v2, v0
invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-boolean p3, p0, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z
iput-char p4, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
iput p5, p0, Lorg/codehaus/jackson/Base64Variant;->_maxLineLength:I
return-void
.end method
.method public decodeBase64Byte(B)I
.registers 3
const/16 v0, 0x7f
if-gt p1, v0, :cond_9
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
aget v0, v0, p1
:goto_8
return v0
:cond_9
const/4 v0, -0x1
goto :goto_8
.end method
.method public decodeBase64Char(C)I
.registers 3
const/16 v0, 0x7f
if-gt p1, v0, :cond_9
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
aget v0, v0, p1
:goto_8
return v0
:cond_9
const/4 v0, -0x1
goto :goto_8
.end method
.method public decodeBase64Char(I)I
.registers 3
const/16 v0, 0x7f
if-gt p1, v0, :cond_9
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I
aget v0, v0, p1
:goto_8
return v0
:cond_9
const/4 v0, -0x1
goto :goto_8
.end method
.method public encodeBase64BitsAsByte(I)B
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
aget-byte v0, v0, p1
return v0
.end method
.method public encodeBase64BitsAsChar(I)C
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
aget-char v0, v0, p1
return v0
.end method
.method public encodeBase64Chunk(I[BI)I
.registers 8
add-int/lit8 v0, p3, 0x1
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
shr-int/lit8 v2, p1, 0x12
and-int/lit8 v2, v2, 0x3f
aget-byte v1, v1, v2
aput-byte v1, p2, p3
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
aget-byte v2, v2, v3
aput-byte v2, p2, v0
add-int/lit8 v0, v1, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-byte v2, v2, v3
aput-byte v2, p2, v1
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
and-int/lit8 v3, p1, 0x3f
aget-byte v2, v2, v3
aput-byte v2, p2, v0
return v1
.end method
.method public encodeBase64Chunk(I[CI)I
.registers 8
add-int/lit8 v0, p3, 0x1
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v2, p1, 0x12
and-int/lit8 v2, v2, 0x3f
aget-char v1, v1, v2
aput-char v1, p2, p3
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
aput-char v2, p2, v0
add-int/lit8 v0, v1, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
aput-char v2, p2, v1
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
and-int/lit8 v3, p1, 0x3f
aget-char v2, v2, v3
aput-char v2, p2, v0
return v1
.end method
.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
.registers 5
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v1, p2, 0x12
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v1, p2, 0xc
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v1, p2, 0x6
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
and-int/lit8 v1, p2, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
return-void
.end method
.method public encodeBase64Partial(II[BI)I
.registers 10
const/4 v4, 0x2
add-int/lit8 v0, p4, 0x1
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
shr-int/lit8 v2, p1, 0x12
and-int/lit8 v2, v2, 0x3f
aget-byte v1, v1, v2
aput-byte v1, p3, p4
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
aget-byte v2, v2, v3
aput-byte v2, p3, v0
iget-boolean v0, p0, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z
if-eqz v0, :cond_36
iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
int-to-byte v0, v0
add-int/lit8 v2, v1, 0x1
if-ne p2, v4, :cond_34
iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
shr-int/lit8 v4, p1, 0x6
and-int/lit8 v4, v4, 0x3f
aget-byte v3, v3, v4
:goto_2c
aput-byte v3, p3, v1
add-int/lit8 v1, v2, 0x1
aput-byte v0, p3, v2
move v0, v1
:goto_33
return v0
:cond_34
move v3, v0
goto :goto_2c
:cond_36
if-ne p2, v4, :cond_45
add-int/lit8 v0, v1, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-byte v2, v2, v3
aput-byte v2, p3, v1
goto :goto_33
:cond_45
move v0, v1
goto :goto_33
.end method
.method public encodeBase64Partial(II[CI)I
.registers 10
const/4 v4, 0x2
add-int/lit8 v0, p4, 0x1
iget-object v1, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v2, p1, 0x12
and-int/lit8 v2, v2, 0x3f
aget-char v1, v1, v2
aput-char v1, p3, p4
add-int/lit8 v1, v0, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v3, p1, 0xc
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
aput-char v2, p3, v0
iget-boolean v0, p0, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z
if-eqz v0, :cond_36
add-int/lit8 v0, v1, 0x1
if-ne p2, v4, :cond_33
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
:goto_29
aput-char v2, p3, v1
add-int/lit8 v1, v0, 0x1
iget-char v2, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
aput-char v2, p3, v0
move v0, v1
:goto_32
return v0
:cond_33
iget-char v2, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
goto :goto_29
:cond_36
if-ne p2, v4, :cond_45
add-int/lit8 v0, v1, 0x1
iget-object v2, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v3, p1, 0x6
and-int/lit8 v3, v3, 0x3f
aget-char v2, v2, v3
aput-char v2, p3, v1
goto :goto_32
:cond_45
move v0, v1
goto :goto_32
.end method
.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
.registers 7
const/4 v2, 0x2
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v1, p2, 0x12
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v1, p2, 0xc
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-boolean v0, p0, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z
if-eqz v0, :cond_31
if-ne p3, v2, :cond_2e
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v1, p2, 0x6
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
:goto_25
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_2d
:cond_2d
return-void
:cond_2e
iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
goto :goto_25
:cond_31
if-ne p3, v2, :cond_2d
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C
shr-int/lit8 v1, p2, 0x6
and-int/lit8 v1, v1, 0x3f
aget-char v0, v0, v1
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2d
.end method
.method public getMaxLineLength()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/Base64Variant;->_maxLineLength:I
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;
return-object v0
.end method
.method public getPaddingByte()B
.registers 2
iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
int-to-byte v0, v0
return v0
.end method
.method public getPaddingChar()C
.registers 2
iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;
return-object v0
.end method
.method public usesPadding()Z
.registers 2
iget-boolean v0, p0, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z
return v0
.end method
.method public usesPaddingChar(C)Z
.registers 3
iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
if-ne p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public usesPaddingChar(I)Z
.registers 3
iget-char v0, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C
if-ne p1, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method