.class public Lcom/sun/mail/util/SocketFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ssl.protocols"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-static {v0}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ssl.ciphersuites"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    goto :goto_5

    :cond_49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_28
.end method

.method private static createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;
    .registers 9

    if-eqz p5, :cond_1b

    invoke-virtual {p5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_6
    if-eqz p0, :cond_10

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_10
    if-ltz p4, :cond_2c

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :goto_1a
    return-object v0

    :cond_1b
    if-eqz p6, :cond_26

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_6

    :cond_26
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    goto :goto_6

    :cond_2c
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_1a
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    new-instance v0, Lcom/sun/mail/util/SocketFetcher$1;

    invoke-direct {v0}, Lcom/sun/mail/util/SocketFetcher$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
    .registers 16

    if-nez p3, :cond_4

    const-string p3, "socket"

    :cond_4
    if-nez p2, :cond_b

    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".connectiontimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    if-eqz v0, :cond_2a

    :try_start_26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_15d

    move-result v4

    :cond_2a
    :goto_2a
    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".timeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".localaddress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_62

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    :cond_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".localport"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_81

    :try_start_7d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_80} :catch_160

    move-result v1

    :cond_81
    :goto_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".socketFactory.fallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_107

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_107

    const/4 v2, 0x0

    move v7, v2

    :goto_a5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".socketFactory.class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v3, -0x1

    :try_start_be
    invoke-static {v10}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v5

    if-eqz v5, :cond_16c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".socketFactory.port"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {p2, v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_db
    .catch Ljava/net/SocketTimeoutException; {:try_start_be .. :try_end_db} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_db} :catch_10c

    move-result-object v2

    if-eqz v2, :cond_e2

    :try_start_de
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/NumberFormatException; {:try_start_de .. :try_end_e1} :catch_163
    .catch Ljava/net/SocketTimeoutException; {:try_start_de .. :try_end_e1} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_10c

    move-result v3

    :cond_e2
    :goto_e2
    const/4 v2, -0x1

    if-ne v3, v2, :cond_e6

    move v3, p1

    :cond_e6
    move-object v2, p0

    move v6, p4

    :try_start_e8
    invoke-static/range {v0 .. v6}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;
    :try_end_eb
    .catch Ljava/net/SocketTimeoutException; {:try_start_e8 .. :try_end_eb} :catch_10a
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_10c

    move-result-object v2

    :goto_ec
    if-nez v2, :cond_168

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p1

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IILjavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v0

    move-object v1, v0

    :goto_f7
    const/4 v0, -0x1

    if-eqz v9, :cond_fe

    :try_start_fa
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_fd
    .catch Ljava/lang/NumberFormatException; {:try_start_fa .. :try_end_fd} :catch_166

    move-result v0

    :cond_fe
    :goto_fe
    if-ltz v0, :cond_103

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_103
    invoke-static {v1, p2, p3}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V

    return-object v1

    :cond_107
    const/4 v2, 0x1

    move v7, v2

    goto :goto_a5

    :catch_10a
    move-exception v0

    throw v0

    :catch_10c
    move-exception v2

    if-nez v7, :cond_16c

    instance-of v0, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_16a

    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_16a

    check-cast v0, Ljava/lang/Exception;

    :goto_120
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_127

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_127
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t connect using \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" socket factory to host, port: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_15d
    move-exception v0

    goto/16 :goto_2a

    :catch_160
    move-exception v2

    goto/16 :goto_81

    :catch_163
    move-exception v2

    goto/16 :goto_e2

    :catch_166
    move-exception v2

    goto :goto_fe

    :cond_168
    move-object v1, v2

    goto :goto_f7

    :cond_16a
    move-object v0, v2

    goto :goto_120

    :cond_16c
    move-object v2, v8

    goto/16 :goto_ec
.end method

.method private static getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;
    .registers 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/sun/mail/util/SocketFetcher;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_15

    :try_start_11
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_14} :catch_31

    move-result-object v0

    :cond_15
    :goto_15
    if-nez v0, :cond_1b

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_1b
    const-string v1, "getDefault"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/SocketFactory;

    goto :goto_a

    :catch_31
    move-exception v1

    goto :goto_15
.end method

.method public static startTLS(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "socket"

    invoke-static {p0, v0, v1}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .registers 9

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v3

    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".socketFactory.class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v0

    if-eqz v0, :cond_39

    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_39

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    :goto_30
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)V

    return-object v0

    :cond_39
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_40

    goto :goto_30

    :catch_40
    move-exception v1

    instance-of v0, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_85

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Exception;

    if-eqz v4, :cond_85

    check-cast v0, Ljava/lang/Exception;

    :goto_52
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_59

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_59
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in startTLS: host "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", port "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_85
    move-object v0, v1

    goto :goto_52
.end method

.method private static stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1d
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a
.end method
