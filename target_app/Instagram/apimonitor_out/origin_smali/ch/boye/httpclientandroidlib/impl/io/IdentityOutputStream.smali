.class public Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;
.super Ljava/io/OutputStream;
.source "IdentityOutputStream.java"


# instance fields
.field private closed:Z

.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session output buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    :cond_c
    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 4

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityOutputStream;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    return-void
.end method
