.class public Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;
.super Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"
.implements Lch/boye/httpclientandroidlib/io/EofSensor;
.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;
.field private eof:Z
.field private final socket:Ljava/net/Socket;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->SocketTimeoutExceptionClass()Ljava/lang/Class;
move-result-object v0
sput-object v0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 6
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Socket may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;
const/4 v0, 0x0
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z
if-gez p2, :cond_18
invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I
move-result p2
:cond_18
const/16 v0, 0x400
if-ge p2, v0, :cond_1e
const/16 p2, 0x400
:cond_1e
invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-virtual {p0, v0, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
.registers 1
:try_start_0
const-string v0, "java.net.SocketTimeoutException"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_5
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
const/4 v0, 0x0
goto :goto_6
.end method
.method private static isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
.registers 2
sget-object v0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;
if-eqz v0, :cond_b
sget-object v0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;
invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x1
goto :goto_a
.end method
.method protected fillBuffer()I
.registers 3
invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/io/AbstractSessionInputBuffer;->fillBuffer()I
move-result v1
const/4 v0, -0x1
if-ne v1, v0, :cond_b
const/4 v0, 0x1
:goto_8
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z
return v1
:cond_b
const/4 v0, 0x0
goto :goto_8
.end method
.method public isDataAvailable(I)Z
.registers 6
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->hasBufferedData()Z
move-result v0
if-nez v0, :cond_1d
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;
invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
move-result v2
:try_start_c
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;
invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->fillBuffer()I
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->hasBufferedData()Z
:try_end_17
.catchall {:try_start_c .. :try_end_17} :catchall_26
.catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_17} :catch_1e
move-result v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;
invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
:cond_1d
:goto_1d
return v0
:catch_1e
move-exception v1
:try_start_1f
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
move-result v3
if-nez v3, :cond_2d
throw v1
:catchall_26
:try_end_26
.catchall {:try_start_1f .. :try_end_26} :catchall_26
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;
invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
throw v0
:cond_2d
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;
invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V
goto :goto_1d
.end method
.method public isEof()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/SocketInputBuffer;->eof:Z
return v0
.end method