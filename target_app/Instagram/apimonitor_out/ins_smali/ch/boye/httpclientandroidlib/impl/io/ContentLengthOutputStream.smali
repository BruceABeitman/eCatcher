.class public Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;
.super Ljava/io/OutputStream;
.source "ContentLengthOutputStream.java"
.field private closed:Z
.field private final contentLength:J
.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
.field private total:J
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;J)V
.registers 7
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
iput-wide v1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J
const/4 v0, 0x0
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z
if-nez p1, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Session output buffer may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
cmp-long v0, p2, v1
if-gez v0, :cond_20
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Content length may not be negative"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_20
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J
return-void
.end method
.method public close()V
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z
if-nez v0, :cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V
:cond_c
return-void
.end method
.method public flush()V
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V
return-void
.end method
.method public write(I)V
.registers 6
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/io/IOException;
const-string v1, "Attempted write to closed stream."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J
iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J
cmp-long v0, v0, v2
if-gez v0, :cond_20
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write(I)V
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J
:cond_20
return-void
.end method
.method public write([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->write([BII)V
return-void
.end method
.method public write([BII)V
.registers 8
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->closed:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/io/IOException;
const-string v1, "Attempted write to closed stream."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J
iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J
cmp-long v0, v0, v2
if-gez v0, :cond_2a
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->contentLength:J
iget-wide v2, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J
sub-long/2addr v0, v2
int-to-long v2, p3
cmp-long v2, v2, v0
if-lez v2, :cond_1f
long-to-int p3, v0
:cond_1f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V
iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J
int-to-long v2, p3
add-long/2addr v0, v2
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/io/ContentLengthOutputStream;->total:J
:cond_2a
return-void
.end method