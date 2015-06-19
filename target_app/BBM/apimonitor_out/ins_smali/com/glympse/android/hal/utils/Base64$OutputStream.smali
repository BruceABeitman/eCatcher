.class public Lcom/glympse/android/hal/utils/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"
.field private buffer:[B
.field private gr:Z
.field private gs:I
.field private gu:I
.field private gv:Z
.field private gw:I
.field private gx:[B
.field private gy:[B
.field private gz:Z
.field private position:I
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/glympse/android/hal/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;I)V
.registers 7
const/4 v3, 0x4
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
and-int/lit8 v0, p2, 0x8
if-eqz v0, :cond_33
move v0, v1
:goto_b
iput-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gv:Z
and-int/lit8 v0, p2, 0x1
if-eqz v0, :cond_35
:goto_11
iput-boolean v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gr:Z
iget-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gr:Z
if-eqz v0, :cond_37
const/4 v0, 0x3
:goto_18
iput v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gs:I
iget v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gs:I
new-array v0, v0, [B
iput-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->buffer:[B
iput v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
iput v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gu:I
iput-boolean v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gz:Z
new-array v0, v3, [B
iput-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gy:[B
iput p2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gw:I
invoke-static {p2}, Lcom/glympse/android/hal/utils/Base64;->h(I)[B
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gx:[B
return-void
:cond_33
move v0, v2
goto :goto_b
:cond_35
move v1, v2
goto :goto_11
:cond_37
move v0, v3
goto :goto_18
.end method
.method public close()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->flushBase64()V
invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
iput-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->buffer:[B
iput-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;
return-void
.end method
.method public flushBase64()V
.registers 6
iget v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
if-lez v0, :cond_1c
iget-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gr:Z
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gy:[B
iget-object v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->buffer:[B
iget v3, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
iget v4, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gw:I
invoke-static {v1, v2, v3, v4}, Lcom/glympse/android/hal/utils/Base64;->b([B[BII)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
:cond_1c
return-void
:cond_1d
new-instance v0, Ljava/io/IOException;
const-string v1, "Base64 input not properly padded."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public resumeEncoding()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gz:Z
return-void
.end method
.method public suspendEncoding()V
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->flushBase64()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gz:Z
return-void
.end method
.method public write(I)V
.registers 8
const/4 v2, -0x5
const/4 v5, 0x0
iget-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gz:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
:cond_b
:goto_b
return-void
:cond_c
iget-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gr:Z
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->buffer:[B
iget v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
int-to-byte v2, p1
aput-byte v2, v0, v1
iget v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
iget v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gs:I
if-lt v0, v1, :cond_b
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;
iget-object v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gy:[B
iget-object v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->buffer:[B
iget v3, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gs:I
iget v4, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gw:I
invoke-static {v1, v2, v3, v4}, Lcom/glympse/android/hal/utils/Base64;->b([B[BII)[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
iget v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gu:I
add-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gu:I
iget-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gv:Z
if-eqz v0, :cond_4b
iget v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gu:I
const/16 v1, 0x4c
if-lt v0, v1, :cond_4b
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
iput v5, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gu:I
:cond_4b
iput v5, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
goto :goto_b
:cond_4e
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gx:[B
and-int/lit8 v1, p1, 0x7f
aget-byte v0, v0, v1
if-le v0, v2, :cond_7b
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->buffer:[B
iget v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
int-to-byte v2, p1
aput-byte v2, v0, v1
iget v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
iget v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gs:I
if-lt v0, v1, :cond_b
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->buffer:[B
iget-object v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gy:[B
iget v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gw:I
invoke-static {v0, v5, v1, v5, v2}, Lcom/glympse/android/hal/utils/Base64;->b([BI[BII)I
move-result v0
iget-object v1, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;
iget-object v2, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gy:[B
invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V
iput v5, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->position:I
goto :goto_b
:cond_7b
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gx:[B
and-int/lit8 v1, p1, 0x7f
aget-byte v0, v0, v1
if-eq v0, v2, :cond_b
new-instance v0, Ljava/io/IOException;
const-string v1, "Invalid character in Base64 data."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public write([BII)V
.registers 6
iget-boolean v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->gz:Z
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/glympse/android/hal/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
:cond_9
return-void
:cond_a
const/4 v0, 0x0
:goto_b
if-ge v0, p3, :cond_9
add-int v1, p2, v0
aget-byte v1, p1, v1
invoke-virtual {p0, v1}, Lcom/glympse/android/hal/utils/Base64$OutputStream;->write(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_b
.end method