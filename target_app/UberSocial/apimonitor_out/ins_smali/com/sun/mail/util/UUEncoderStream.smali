.class public Lcom/sun/mail/util/UUEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"
.field private buffer:[B
.field private bufsize:I
.field protected mode:I
.field protected name:Ljava/lang/String;
.field private wrotePrefix:Z
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 4
const-string v0, "encoder.buf"
const/16 v1, 0x284
invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
.registers 4
const/16 v0, 0x284
invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z
iput-object p2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;
iput p3, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I
const/16 v0, 0x2d
new-array v0, v0, [B
iput-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B
return-void
.end method
.method private encode()V
.registers 8
const/4 v3, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
and-int/lit8 v2, v2, 0x3f
add-int/lit8 v2, v2, 0x20
invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V
:goto_d
iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
if-lt v0, v1, :cond_19
iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
return-void
:cond_19
iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B
add-int/lit8 v2, v0, 0x1
aget-byte v4, v1, v0
iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
if-ge v2, v0, :cond_6b
iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B
add-int/lit8 v1, v2, 0x1
aget-byte v2, v0, v2
iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
if-ge v1, v0, :cond_68
iget-object v5, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B
add-int/lit8 v0, v1, 0x1
aget-byte v1, v5, v1
:goto_33
ushr-int/lit8 v5, v4, 0x2
and-int/lit8 v5, v5, 0x3f
shl-int/lit8 v4, v4, 0x4
and-int/lit8 v4, v4, 0x30
ushr-int/lit8 v6, v2, 0x4
and-int/lit8 v6, v6, 0xf
or-int/2addr v4, v6
shl-int/lit8 v2, v2, 0x2
and-int/lit8 v2, v2, 0x3c
ushr-int/lit8 v6, v1, 0x6
and-int/lit8 v6, v6, 0x3
or-int/2addr v2, v6
and-int/lit8 v1, v1, 0x3f
iget-object v6, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
add-int/lit8 v5, v5, 0x20
invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write(I)V
iget-object v5, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
add-int/lit8 v4, v4, 0x20
invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write(I)V
iget-object v4, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
add-int/lit8 v2, v2, 0x20
invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write(I)V
iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
add-int/lit8 v1, v1, 0x20
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V
goto :goto_d
:cond_68
move v0, v1
move v1, v3
goto :goto_33
:cond_6b
move v0, v2
move v1, v3
move v2, v3
goto :goto_33
.end method
.method private writePrefix()V
.registers 4
iget-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z
if-nez v0, :cond_31
new-instance v0, Ljava/io/PrintStream;
iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "begin "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z
:cond_31
return-void
.end method
.method private writeSuffix()V
.registers 3
new-instance v0, Ljava/io/PrintStream;
iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
const-string v1, " \nend"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
return-void
.end method
.method public close()V
.registers 2
invoke-virtual {p0}, Lcom/sun/mail/util/UUEncoderStream;->flush()V
iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
return-void
.end method
.method public flush()V
.registers 2
iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
if-lez v0, :cond_a
invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V
invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V
:cond_a
invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writeSuffix()V
iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public setNameMode(Ljava/lang/String;I)V
.registers 3
iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;
iput p2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I
return-void
.end method
.method public write(I)V
.registers 5
iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B
iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
int-to-byte v2, p1
aput-byte v2, v0, v1
iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
const/16 v1, 0x2d
if-ne v0, v1, :cond_1a
invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V
invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V
const/4 v0, 0x0
iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I
:cond_1a
return-void
.end method
.method public write([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write([BII)V
return-void
.end method
.method public write([BII)V
.registers 6
const/4 v0, 0x0
:goto_1
if-lt v0, p3, :cond_4
return-void
:cond_4
add-int v1, p2, v0
aget-byte v1, p1, v1
invoke-virtual {p0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method