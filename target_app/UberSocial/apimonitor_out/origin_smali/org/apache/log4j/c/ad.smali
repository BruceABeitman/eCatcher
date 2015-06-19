.class public Lorg/apache/log4j/c/ad;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field static b:Ljava/lang/String;


# instance fields
.field final a:I

.field private c:Ljava/net/InetAddress;

.field private final d:I

.field private e:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/16 v2, 0x202

    const/16 v3, 0x3a

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput v2, p0, Lorg/apache/log4j/c/ad;->a:I

    sput-object p1, Lorg/apache/log4j/c/ad;->b:Ljava/lang/String;

    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "syslogHost"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_28

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v0, v3, :cond_88

    :cond_28
    :try_start_28
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_88

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_6b

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6b
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I
    :try_end_6e
    .catch Ljava/net/MalformedURLException; {:try_start_28 .. :try_end_6e} :catch_82

    move-result v0

    :goto_6f
    if-ne v0, v1, :cond_72

    move v0, v2

    :cond_72
    iput v0, p0, Lorg/apache/log4j/c/ad;->d:I

    :try_start_74
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/c/ad;->c:Ljava/net/InetAddress;
    :try_end_7a
    .catch Ljava/net/UnknownHostException; {:try_start_74 .. :try_end_7a} :catch_8a

    :goto_7a
    :try_start_7a
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/c/ad;->e:Ljava/net/DatagramSocket;
    :try_end_81
    .catch Ljava/net/SocketException; {:try_start_7a .. :try_end_81} :catch_a8

    :goto_81
    return-void

    :catch_82
    move-exception v0

    const-string v3, "Malformed URL: will attempt to interpret as InetAddress."

    invoke-static {v3, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_88
    move v0, v1

    goto :goto_6f

    :catch_8a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". All logging will FAIL."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    :catch_a8
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not instantiate DatagramSocket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". All logging will FAIL."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_81
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/c/ad;->e:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/log4j/c/ad;->e:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_9
    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 7

    const/16 v0, 0x400

    iget-object v1, p0, Lorg/apache/log4j/c/ad;->e:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lorg/apache/log4j/c/ad;->c:Ljava/net/InetAddress;

    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v1, v2

    if-lt v1, v0, :cond_20

    :goto_11
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lorg/apache/log4j/c/ad;->c:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/log4j/c/ad;->d:I

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object v0, p0, Lorg/apache/log4j/c/ad;->e:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    :cond_1f
    return-void

    :cond_20
    move v0, v1

    goto :goto_11
.end method

.method public write([CII)V
    .registers 5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/c/ad;->write(Ljava/lang/String;)V

    return-void
.end method
