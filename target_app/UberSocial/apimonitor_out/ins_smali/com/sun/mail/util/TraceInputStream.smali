.class public Lcom/sun/mail/util/TraceInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"
.field private quote:Z
.field private trace:Z
.field private traceOut:Ljava/io/OutputStream;
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V
iput-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z
iput-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z
iput-object p2, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
return-void
.end method
.method private final writeByte(I)V
.registers 7
const/16 v4, 0xa
const/16 v3, 0x5c
and-int/lit16 v0, p1, 0xff
const/16 v1, 0x7f
if-le v0, v1, :cond_1a
iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
const/16 v2, 0x4d
invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V
iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
const/16 v2, 0x2d
invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V
and-int/lit8 v0, v0, 0x7f
:cond_1a
const/16 v1, 0xd
if-ne v0, v1, :cond_2b
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
const/16 v1, 0x72
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
:goto_2a
return-void
:cond_2b
if-ne v0, v4, :cond_3f
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
const/16 v1, 0x6e
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V
goto :goto_2a
:cond_3f
const/16 v1, 0x9
if-ne v0, v1, :cond_50
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
const/16 v1, 0x74
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
goto :goto_2a
:cond_50
const/16 v1, 0x20
if-ge v0, v1, :cond_63
iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
const/16 v2, 0x5e
invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V
iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
add-int/lit8 v0, v0, 0x40
invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V
goto :goto_2a
:cond_63
iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V
goto :goto_2a
.end method
.method public read()I
.registers 3
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->read()I
move-result v0
iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z
if-eqz v1, :cond_14
const/4 v1, -0x1
if-eq v0, v1, :cond_14
iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z
if-eqz v1, :cond_15
invoke-direct {p0, v0}, Lcom/sun/mail/util/TraceInputStream;->writeByte(I)V
:goto_14
:cond_14
return v0
:cond_15
iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V
goto :goto_14
.end method
.method public read([BII)I
.registers 7
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->in:Ljava/io/InputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
move-result v1
iget-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z
if-eqz v0, :cond_14
const/4 v0, -0x1
if-eq v1, v0, :cond_14
iget-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z
if-eqz v0, :cond_1f
const/4 v0, 0x0
:goto_12
if-lt v0, v1, :cond_15
:goto_14
:cond_14
return v1
:cond_15
add-int v2, p2, v0
aget-byte v2, p1, v2
invoke-direct {p0, v2}, Lcom/sun/mail/util/TraceInputStream;->writeByte(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_1f
iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V
goto :goto_14
.end method
.method public setQuote(Z)V
.registers 2
iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z
return-void
.end method
.method public setTrace(Z)V
.registers 2
iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z
return-void
.end method