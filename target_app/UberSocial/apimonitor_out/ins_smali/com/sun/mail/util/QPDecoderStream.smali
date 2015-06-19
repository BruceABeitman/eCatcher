.class public Lcom/sun/mail/util/QPDecoderStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"
.field protected ba:[B
.field protected spaces:I
.method public constructor <init>(Ljava/io/InputStream;)V
.registers 4
const/4 v1, 0x2
new-instance v0, Ljava/io/PushbackInputStream;
invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V
new-array v0, v1, [B
iput-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B
const/4 v0, 0x0
iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I
return-void
.end method
.method public available()I
.registers 2
iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->available()I
move-result v0
return v0
.end method
.method public markSupported()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public read()I
.registers 7
const/16 v5, 0xd
const/16 v4, 0xa
const/4 v3, 0x0
const/4 v0, -0x1
const/16 v1, 0x20
iget v2, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I
if-lez v2, :cond_13
iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I
:goto_12
return v1
:cond_13
iget-object v2, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
invoke-virtual {v2}, Ljava/io/InputStream;->read()I
move-result v2
if-ne v2, v1, :cond_3e
:goto_1b
iget-object v2, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
invoke-virtual {v2}, Ljava/io/InputStream;->read()I
move-result v2
if-eq v2, v1, :cond_2e
if-eq v2, v5, :cond_29
if-eq v2, v4, :cond_29
if-ne v2, v0, :cond_35
:cond_29
iput v3, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I
move v0, v2
:goto_2c
move v1, v0
goto :goto_12
:cond_2e
iget v2, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I
goto :goto_1b
:cond_35
iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
check-cast v0, Ljava/io/PushbackInputStream;
invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->unread(I)V
move v0, v1
goto :goto_2c
:cond_3e
const/16 v1, 0x3d
if-ne v2, v1, :cond_91
iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
invoke-virtual {v1}, Ljava/io/InputStream;->read()I
move-result v1
if-ne v1, v4, :cond_4f
invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I
move-result v1
goto :goto_12
:cond_4f
if-ne v1, v5, :cond_65
iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v1
if-eq v1, v4, :cond_60
iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
check-cast v0, Ljava/io/PushbackInputStream;
invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V
:cond_60
invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I
move-result v1
goto :goto_12
:cond_65
if-ne v1, v0, :cond_69
move v1, v0
goto :goto_12
:cond_69
iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B
int-to-byte v1, v1
aput-byte v1, v0, v3
iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B
const/4 v1, 0x1
iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
invoke-virtual {v3}, Ljava/io/InputStream;->read()I
move-result v3
int-to-byte v3, v3
aput-byte v3, v0, v1
:try_start_7a
iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B
const/4 v1, 0x0
const/4 v3, 0x2
const/16 v4, 0x10
invoke-static {v0, v1, v3, v4}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I
:try_end_83
.catch Ljava/lang/NumberFormatException; {:try_start_7a .. :try_end_83} :catch_85
move-result v1
goto :goto_12
:catch_85
move-exception v0
iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;
check-cast v0, Ljava/io/PushbackInputStream;
iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B
invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread([B)V
move v1, v2
goto :goto_12
:cond_91
move v1, v2
goto :goto_12
.end method
.method public read([BII)I
.registers 8
const/4 v0, -0x1
const/4 v1, 0x0
:goto_2
if-lt v1, p3, :cond_6
:cond_4
move v0, v1
:goto_5
return v0
:cond_6
invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I
move-result v2
if-ne v2, v0, :cond_f
if-nez v1, :cond_4
goto :goto_5
:cond_f
add-int v3, p2, v1
int-to-byte v2, v2
aput-byte v2, p1, v3
add-int/lit8 v1, v1, 0x1
goto :goto_2
.end method