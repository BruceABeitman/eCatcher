.class  Lcom/sun/mail/imap/LengthCounter;
.super Ljava/io/OutputStream;
.source "SourceFile"
.field private buf:[B
.field private maxsize:I
.field private size:I
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
const/16 v0, 0x2000
new-array v0, v0, [B
iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iput p1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I
return-void
.end method
.method public getBytes()[B
.registers 2
iget-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
return-object v0
.end method
.method public getSize()I
.registers 2
iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
return v0
.end method
.method public write(I)V
.registers 7
const/4 v4, 0x0
iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
add-int/lit8 v0, v0, 0x1
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
if-eqz v1, :cond_14
iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I
if-le v0, v1, :cond_17
iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I
if-ltz v1, :cond_17
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
:goto_14
:cond_14
iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
return-void
:cond_17
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
array-length v1, v1
if-le v0, v1, :cond_38
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
array-length v1, v1
shl-int/lit8 v1, v1, 0x1
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v1
new-array v1, v1, [B
iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
int-to-byte v3, p1
aput-byte v3, v1, v2
goto :goto_14
:cond_38
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
int-to-byte v3, p1
aput-byte v3, v1, v2
goto :goto_14
.end method
.method public write([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/LengthCounter;->write([BII)V
return-void
.end method
.method public write([BII)V
.registers 9
const/4 v4, 0x0
if-ltz p2, :cond_11
array-length v0, p1
if-gt p2, v0, :cond_11
if-ltz p3, :cond_11
add-int v0, p2, p3
array-length v1, p1
if-gt v0, v1, :cond_11
add-int v0, p2, p3
if-gez v0, :cond_17
:cond_11
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V
throw v0
:cond_17
if-nez p3, :cond_1a
:goto_19
return-void
:cond_1a
iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
add-int/2addr v0, p3
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
if-eqz v1, :cond_2c
iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I
if-le v0, v1, :cond_2f
iget v1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I
if-ltz v1, :cond_2f
const/4 v1, 0x0
iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
:goto_2c
:cond_2c
iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
goto :goto_19
:cond_2f
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
array-length v1, v1
if-le v0, v1, :cond_50
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
array-length v1, v1
shl-int/lit8 v1, v1, 0x1
invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
move-result v1
new-array v1, v1, [B
iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_2c
:cond_50
iget-object v1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B
iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I
invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_2c
.end method