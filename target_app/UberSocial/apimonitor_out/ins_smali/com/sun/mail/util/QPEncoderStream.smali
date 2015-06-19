.class public Lcom/sun/mail/util/QPEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"
.field private static final hex:[C
.field private bytesPerLine:I
.field private count:I
.field private gotCR:Z
.field private gotSpace:Z
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_a
sput-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C
return-void
:array_a
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
.end array-data
.end method
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 3
const/16 v0, 0x4c
invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I
iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z
iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z
add-int/lit8 v0, p2, -0x1
iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I
return-void
.end method
.method private outputCRLF()V
.registers 3
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
const/16 v1, 0xd
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
const/4 v0, 0x0
iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
return-void
.end method
.method public flush()V
.registers 2
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method protected output(IZ)V
.registers 8
const/16 v4, 0xd
const/16 v3, 0xa
const/16 v2, 0x3d
if-eqz p2, :cond_40
iget v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I
add-int/lit8 v0, v0, 0x3
iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I
iget v1, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I
if-le v0, v1, :cond_24
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V
const/4 v0, 0x3
iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I
:cond_24
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C
shr-int/lit8 v2, p1, 0x4
aget-char v1, v1, v2
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C
and-int/lit8 v2, p1, 0xf
aget-char v1, v1, v2
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
:goto_3f
return-void
:cond_40
iget v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I
iget v1, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I
if-le v0, v1, :cond_5c
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V
const/4 v0, 0x1
iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I
:cond_5c
iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
goto :goto_3f
.end method
.method public write(I)V
.registers 9
const/16 v6, 0xd
const/16 v5, 0xa
const/16 v4, 0x20
const/4 v3, 0x1
const/4 v2, 0x0
and-int/lit16 v0, p1, 0xff
iget-boolean v1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z
if-eqz v1, :cond_17
if-eq v0, v6, :cond_12
if-ne v0, v5, :cond_1f
:cond_12
invoke-virtual {p0, v4, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V
:goto_15
iput-boolean v2, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z
:cond_17
if-ne v0, v6, :cond_23
iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z
invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V
:goto_1e
return-void
:cond_1f
invoke-virtual {p0, v4, v2}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V
goto :goto_15
:cond_23
if-ne v0, v5, :cond_30
iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z
if-eqz v0, :cond_2c
:goto_29
iput-boolean v2, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z
goto :goto_1e
:cond_2c
invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V
goto :goto_29
:cond_30
if-ne v0, v4, :cond_35
iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z
goto :goto_29
:cond_35
if-lt v0, v4, :cond_3f
const/16 v1, 0x7f
if-ge v0, v1, :cond_3f
const/16 v1, 0x3d
if-ne v0, v1, :cond_43
:cond_3f
invoke-virtual {p0, v0, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V
goto :goto_29
:cond_43
invoke-virtual {p0, v0, v2}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V
goto :goto_29
.end method
.method public write([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write([BII)V
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
invoke-virtual {p0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method