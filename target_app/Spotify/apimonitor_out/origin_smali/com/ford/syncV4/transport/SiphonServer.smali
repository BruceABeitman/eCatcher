.class public final Lcom/ford/syncV4/transport/SiphonServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/net/Socket;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/net/ServerSocket;

.field private static f:Ljava/io/OutputStream;

.field private static g:Lcom/ford/syncV4/transport/g;

.field private static h:J

.field private static i:B

.field private static final j:Ljava/lang/Integer;

.field private static k:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ford/syncV4/transport/SiphonServer;->a:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ford/syncV4/transport/SiphonServer;->b:Ljava/lang/Boolean;

    sput-object v1, Lcom/ford/syncV4/transport/SiphonServer;->c:Ljava/net/Socket;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ford/syncV4/transport/SiphonServer;->d:Ljava/lang/Object;

    sput-object v1, Lcom/ford/syncV4/transport/SiphonServer;->e:Ljava/net/ServerSocket;

    sput-object v1, Lcom/ford/syncV4/transport/SiphonServer;->f:Ljava/io/OutputStream;

    sput-object v1, Lcom/ford/syncV4/transport/SiphonServer;->g:Lcom/ford/syncV4/transport/g;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ford/syncV4/transport/SiphonServer;->h:J

    const/4 v0, 0x1

    sput-byte v0, Lcom/ford/syncV4/transport/SiphonServer;->i:B

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/ford/syncV4/transport/SiphonServer;->j:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ford/syncV4/transport/SiphonServer;->k:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 1

    sput-object p0, Lcom/ford/syncV4/transport/SiphonServer;->f:Ljava/io/OutputStream;

    return-object p0
.end method

.method private static declared-synchronized a(BLjava/lang/Integer;[BII)Ljava/lang/Boolean;
    .registers 11

    const-class v1, Lcom/ford/syncV4/transport/SiphonServer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2d

    move-result-object v0

    :goto_10
    monitor-exit v1

    return-object v0

    :cond_12
    if-eqz p2, :cond_16

    if-nez p4, :cond_1c

    :cond_16
    const/4 v0, 0x0

    :try_start_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10

    :cond_1c
    sget-object v2, Lcom/ford/syncV4/transport/SiphonServer;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_2d

    :try_start_1f
    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->f:Ljava/io/OutputStream;

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2a

    if-nez v0, :cond_30

    const/4 v0, 0x0

    :try_start_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10

    :catchall_2a
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_30
    add-int/lit8 v2, p4, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    :try_start_36
    invoke-static {v2}, Lcom/ford/syncV4/util/a;->a(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    sget-byte v4, Lcom/ford/syncV4/transport/SiphonServer;->i:B

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    ushr-int/lit8 v5, v2, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    ushr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    ushr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_74
    .catchall {:try_start_36 .. :try_end_74} :catchall_2d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_74} :catch_7a

    const/4 v0, 0x1

    :try_start_75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10

    :catch_7a
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7f
    .catchall {:try_start_75 .. :try_end_7f} :catchall_2d

    move-result-object v0

    goto :goto_10
.end method

.method private static a(Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;[BII)Ljava/lang/Boolean;
    .registers 9

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/ford/syncV4/transport/SiphonServer;->h:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/ford/syncV4/transport/SiphonServer$1;->a:[I

    invoke-virtual {p0}, Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2a

    :goto_18
    :pswitch_18
    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/ford/syncV4/transport/SiphonServer;->a(BLjava/lang/Integer;[BII)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_20
    const/4 v0, 0x1

    goto :goto_18

    :pswitch_22
    const/4 v0, 0x2

    goto :goto_18

    :pswitch_24
    const/4 v0, 0x3

    goto :goto_18

    :pswitch_26
    const/4 v0, 0x4

    goto :goto_18

    :pswitch_28
    const/4 v0, 0x5

    goto :goto_18

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_18
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_28
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    :cond_16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    :cond_1b
    :try_start_1b
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_20} :catch_29

    move-result-object v0

    array-length v1, v0

    sget-object v2, Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;->c:Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;

    invoke-static {v2, v0, v3, v1}, Lcom/ford/syncV4/transport/SiphonServer;->a(Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;[BII)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d

    :catch_29
    move-exception v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d
.end method

.method public static a([BI)Ljava/lang/Boolean;
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;->a:Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;

    invoke-static {v0, p0, v1, p1}, Lcom/ford/syncV4/transport/SiphonServer;->a(Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;[BII)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d
.end method

.method public static a([BII)Ljava/lang/Boolean;
    .registers 4

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;->b:Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;

    invoke-static {v0, p0, p1, p2}, Lcom/ford/syncV4/transport/SiphonServer;->a(Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;[BII)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_d
.end method

.method static synthetic a(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .registers 1

    sput-object p0, Lcom/ford/syncV4/transport/SiphonServer;->e:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic a(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 1

    sput-object p0, Lcom/ford/syncV4/transport/SiphonServer;->c:Ljava/net/Socket;

    return-object p0
.end method

.method public static a()Z
    .registers 4

    const/4 v0, 0x1

    sget-object v1, Lcom/ford/syncV4/transport/SiphonServer;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    sget-object v1, Lcom/ford/syncV4/transport/SiphonServer;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->g:Lcom/ford/syncV4/transport/g;

    if-nez v0, :cond_3e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/ford/syncV4/transport/SiphonServer;->h:J

    new-instance v0, Lcom/ford/syncV4/transport/g;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/ford/syncV4/transport/g;-><init>(B)V

    sput-object v0, Lcom/ford/syncV4/transport/SiphonServer;->g:Lcom/ford/syncV4/transport/g;

    const-string v2, "Siphon"

    invoke-virtual {v0, v2}, Lcom/ford/syncV4/transport/g;->setName(Ljava/lang/String;)V

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->g:Lcom/ford/syncV4/transport/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ford/syncV4/transport/g;->setDaemon(Z)V

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->g:Lcom/ford/syncV4/transport/g;

    invoke-virtual {v0}, Lcom/ford/syncV4/transport/g;->start()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ford/syncV4/transport/SiphonServer;->b:Ljava/lang/Boolean;

    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_46

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9

    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_14} :catch_2d

    move-result-object v0

    array-length v1, v0

    sget-object v2, Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;->d:Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;

    invoke-static {v2, v0, v3, v1}, Lcom/ford/syncV4/transport/SiphonServer;->a(Lcom/ford/syncV4/transport/SiphonServer$SiphonDataType;[BII)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ford/syncV4/transport/SiphonServer;->k:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e

    :catch_2d
    move-exception v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e

    :cond_33
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e
.end method

.method static synthetic b()Ljava/lang/Integer;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c()Ljava/net/ServerSocket;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->e:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->f:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic f()Ljava/net/Socket;
    .registers 1

    sget-object v0, Lcom/ford/syncV4/transport/SiphonServer;->c:Ljava/net/Socket;

    return-object v0
.end method
