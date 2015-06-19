.class public Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;
.source "SocketOutputBuffer.java"


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 6

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionOutputBuffer;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-gez p2, :cond_13

    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result p2

    :cond_13
    const/16 v0, 0x400

    if-ge p2, v0, :cond_19

    const/16 p2, 0x400

    :cond_19
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/SocketOutputBuffer;->init(Ljava/io/OutputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method
