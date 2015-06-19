.class public Lch/boye/httpclientandroidlib/impl/DefaultHttpServerConnection;
.super Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;
.source "DefaultHttpServerConnection.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpServerConnection;->assertNotOpen()V

    invoke-static {p2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {p2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getLinger(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v1

    if-ltz v1, :cond_31

    if-lez v1, :cond_35

    const/4 v0, 0x1

    :goto_2e
    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_31
    invoke-super {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/SocketHttpServerConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpServerConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpServerConnection;->getRemotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_17
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17
.end method
