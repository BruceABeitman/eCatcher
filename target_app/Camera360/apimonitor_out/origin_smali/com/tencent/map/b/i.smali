.class public final Lcom/tencent/map/b/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:I

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/map/b/i;->a:I

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Z)Lcom/tencent/map/b/u;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    new-instance v5, Lcom/tencent/map/b/u;

    invoke-direct {v5}, Lcom/tencent/map/b/u;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "GBK"

    if-eqz v6, :cond_1c

    const-string/jumbo v4, ";"

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v4, v0

    :goto_1a
    if-lt v4, v8, :cond_66

    :cond_1c
    :goto_1c
    iput-object v3, v5, Lcom/tencent/map/b/u;->b:Ljava/lang/String;

    if-eqz p1, :cond_33

    if-eqz v6, :cond_86

    const-string/jumbo v3, "vnd.wap.wml"

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_86

    :goto_2b
    if-eqz v2, :cond_33

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    :cond_33
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_60

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v5, Lcom/tencent/map/b/u;->a:[B

    const/16 v2, 0x400

    new-array v2, v2, [B

    :cond_42
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_5e

    add-int/2addr v0, v3

    new-array v4, v0, [B

    iget-object v6, v5, Lcom/tencent/map/b/u;->a:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v5, Lcom/tencent/map/b/u;->a:[B

    array-length v9, v9

    invoke-static {v6, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    iget-object v7, v5, Lcom/tencent/map/b/u;->a:[B

    array-length v7, v7

    invoke-static {v2, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, v5, Lcom/tencent/map/b/u;->a:[B
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_88

    :cond_5e
    if-gtz v3, :cond_42

    :cond_60
    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_8f

    :cond_65
    :goto_65
    return-object v5

    :cond_66
    :try_start_66
    aget-object v9, v7, v4

    const-string/jumbo v10, "charset"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_83

    const-string/jumbo v4, "="

    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    if-le v7, v2, :cond_1c

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_88

    move-result-object v3

    goto :goto_1c

    :cond_83
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_86
    move v2, v0

    goto :goto_2b

    :catchall_88
    move-exception v0

    if-eqz v1, :cond_8e

    :try_start_8b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_91

    :cond_8e
    :goto_8e
    throw v0

    :catch_8f
    move-exception v0

    goto :goto_65

    :catch_91
    move-exception v1

    goto :goto_8e
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)Lcom/tencent/map/b/u;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/map/b/t;->d()Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v0, Lcom/tencent/map/b/h;

    invoke-direct {v0}, Lcom/tencent/map/b/h;-><init>()V

    throw v0

    :cond_f
    :try_start_f
    invoke-static {p1, p6}, Lcom/tencent/map/b/i;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_118
    .catch Lcom/tencent/map/b/j; {:try_start_f .. :try_end_12} :catch_124
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_11e

    move-result-object v3

    const/4 v4, 0x0

    :try_start_14
    invoke-static {v4}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_28
    :goto_28
    if-eqz p0, :cond_c1

    const-string/jumbo v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_30
    invoke-static {}, Lcom/tencent/map/b/d;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-static {}, Lcom/tencent/map/b/d;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string/jumbo v4, "User-Agent"

    invoke-virtual {v3, v4, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p0, :cond_4b

    move v2, v0

    :cond_4b
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    if-eqz p5, :cond_5d

    const-string/jumbo v2, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    invoke-static {v3}, Lcom/tencent/map/b/d;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {}, Lcom/tencent/map/b/d;->c()V

    if-nez p0, :cond_7f

    if-eqz p4, :cond_7f

    array-length v2, p4

    if-eqz v2, :cond_7f

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_76
    .catchall {:try_start_14 .. :try_end_76} :catchall_cf
    .catch Lcom/tencent/map/b/j; {:try_start_14 .. :try_end_76} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_76} :catch_c9

    :try_start_76
    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_11b
    .catch Lcom/tencent/map/b/j; {:try_start_76 .. :try_end_7f} :catch_127
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7f} :catch_121

    :cond_7f
    :try_start_7f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_8b

    const/16 v4, 0xce

    if-ne v2, v4, :cond_d1

    :cond_8b
    invoke-static {}, Lcom/tencent/map/b/d;->d()V

    invoke-static {v3, p0}, Lcom/tencent/map/b/i;->a(Ljava/net/HttpURLConnection;Z)Lcom/tencent/map/b/u;

    move-result-object v2

    if-eqz v2, :cond_9b

    iget-object v4, v2, Lcom/tencent/map/b/u;->a:[B

    if-eqz v4, :cond_9b

    iget-object v0, v2, Lcom/tencent/map/b/u;->a:[B

    array-length v0, v0

    :cond_9b
    invoke-static {v0}, Lcom/tencent/map/b/d;->a(I)V
    :try_end_9e
    .catchall {:try_start_7f .. :try_end_9e} :catchall_cf
    .catch Lcom/tencent/map/b/j; {:try_start_7f .. :try_end_9e} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9e} :catch_c9

    if-eqz v3, :cond_a3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a3
    return-object v2

    :cond_a4
    :try_start_a4
    const-string/jumbo v4, "Host"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_cf
    .catch Lcom/tencent/map/b/j; {:try_start_a4 .. :try_end_ab} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ab} :catch_c9

    goto/16 :goto_28

    :catch_ad
    move-exception v0

    move-object v2, v3

    :goto_af
    const/4 v3, 0x1

    :try_start_b0
    invoke-static {v3}, Lcom/tencent/map/b/d;->a(Z)V

    throw v0
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v0

    move-object v3, v2

    :goto_b6
    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_bb
    if-eqz v3, :cond_c0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c0
    throw v0

    :cond_c1
    :try_start_c1
    const-string/jumbo v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_cf
    .catch Lcom/tencent/map/b/j; {:try_start_c1 .. :try_end_c7} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c7} :catch_c9

    goto/16 :goto_30

    :catch_c9
    move-exception v0

    :goto_ca
    const/4 v2, 0x0

    :try_start_cb
    invoke-static {v2}, Lcom/tencent/map/b/d;->a(Z)V

    throw v0
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    goto :goto_b6

    :cond_d1
    const/16 v0, 0xca

    if-eq v2, v0, :cond_f9

    const/16 v0, 0xc9

    if-eq v2, v0, :cond_f9

    const/16 v0, 0xcc

    if-eq v2, v0, :cond_f9

    const/16 v0, 0xcd

    if-eq v2, v0, :cond_f9

    const/16 v0, 0x130

    if-eq v2, v0, :cond_f9

    const/16 v0, 0x131

    if-eq v2, v0, :cond_f9

    const/16 v0, 0x198

    if-eq v2, v0, :cond_f9

    const/16 v0, 0x1f6

    if-eq v2, v0, :cond_f9

    const/16 v0, 0x1f8

    if-eq v2, v0, :cond_f9

    const/16 v0, 0x1f7

    if-ne v2, v0, :cond_102

    :cond_f9
    :try_start_f9
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "doGetOrPost retry"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_102
    new-instance v0, Lcom/tencent/map/b/j;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "response code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/map/b/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_118
    .catchall {:try_start_f9 .. :try_end_118} :catchall_cf
    .catch Lcom/tencent/map/b/j; {:try_start_f9 .. :try_end_118} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_118} :catch_c9

    :catchall_118
    move-exception v0

    move-object v3, v1

    goto :goto_b6

    :catchall_11b
    move-exception v0

    move-object v1, v2

    goto :goto_b6

    :catch_11e
    move-exception v0

    move-object v3, v1

    goto :goto_ca

    :catch_121
    move-exception v0

    move-object v1, v2

    goto :goto_ca

    :catch_124
    move-exception v0

    move-object v2, v1

    goto :goto_af

    :catch_127
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_af
.end method

.method private static a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .registers 10

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_4
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_9} :catch_19

    invoke-static {}, Lcom/tencent/map/b/t;->c()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v2

    :goto_10
    if-nez v0, :cond_36

    :try_start_12
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_30

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_18

    :cond_1f
    invoke-static {}, Lcom/tencent/map/b/v;->a()Lcom/tencent/map/b/v;

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/map/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v2

    goto :goto_10

    :cond_2e
    move v0, v3

    goto :goto_10

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_18

    :cond_36
    sget v0, Lcom/tencent/map/b/i;->a:I

    if-nez v0, :cond_9e

    sget-boolean v0, Lcom/tencent/map/b/i;->b:Z

    if-nez v0, :cond_9e

    sput-boolean v3, Lcom/tencent/map/b/i;->b:Z

    :try_start_40
    new-instance v3, Ljava/net/URL;

    const-string/jumbo v0, "http://ls.map.soso.com/monitor/monitor.html"

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/net/MalformedURLException; {:try_start_40 .. :try_end_48} :catch_c3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-ne v0, v6, :cond_54

    const/16 v0, 0x50

    :cond_54
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :try_start_60
    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_dd
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_66} :catch_f9

    :try_start_66
    const-string/jumbo v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0xafc8

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string/jumbo v2, "User-Agent"

    const-string/jumbo v3, "QQ Map Mobile"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {v0}, Lcom/tencent/map/b/i;->a(Ljava/net/HttpURLConnection;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz v2, :cond_c7

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/map/b/i;->a(I)V
    :try_end_99
    .catchall {:try_start_66 .. :try_end_99} :catchall_f1
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_99} :catch_cc

    :goto_99
    if-eqz v0, :cond_9e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9e
    :goto_9e
    :try_start_9e
    sget v0, Lcom/tencent/map/b/i;->a:I

    packed-switch v0, :pswitch_data_fc

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-ne v0, v6, :cond_af

    const/16 v0, 0x50

    :cond_af
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_c1} :catch_ea

    goto/16 :goto_18

    :catch_c3
    move-exception v0

    sput-boolean v2, Lcom/tencent/map/b/i;->b:Z

    goto :goto_9e

    :cond_c7
    const/4 v2, 0x2

    :try_start_c8
    invoke-static {v2}, Lcom/tencent/map/b/i;->a(I)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_f1
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_99

    :catch_cc
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_d0
    :try_start_d0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/map/b/i;->a(I)V
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_f6

    if-eqz v2, :cond_9e

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9e

    :catchall_dd
    move-exception v0

    :goto_de
    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e3
    throw v0

    :pswitch_e4
    :try_start_e4
    invoke-static {v4, p0}, Lcom/tencent/map/b/i;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_ea

    move-result-object v0

    goto/16 :goto_18

    :catch_ea
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_18

    :catchall_f1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_de

    :catchall_f6
    move-exception v0

    move-object v1, v2

    goto :goto_de

    :catch_f9
    move-exception v0

    move-object v2, v1

    goto :goto_d0

    :pswitch_data_fc
    .packed-switch 0x2
        :pswitch_e4
    .end packed-switch
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x50

    const/4 v6, -0x1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-ne v0, v6, :cond_e

    move v0, v1

    :cond_e
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v2

    if-ne v2, v6, :cond_b4

    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_94

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6a
    :try_start_6a
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/net/MalformedURLException; {:try_start_6a .. :try_end_6f} :catch_b1

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string/jumbo v2, "X-Online-Host"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_93
    return-object v0

    :cond_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    :catch_b1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_93

    :cond_b4
    move v1, v2

    goto/16 :goto_18
.end method

.method private static a(I)V
    .registers 2

    sget v0, Lcom/tencent/map/b/i;->a:I

    if-ne v0, p0, :cond_5

    :goto_4
    return-void

    :cond_5
    sput p0, Lcom/tencent/map/b/i;->a:I

    goto :goto_4
.end method

.method private static a(Ljava/net/HttpURLConnection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_46

    move-result v0

    if-nez v0, :cond_19

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_17
    const/4 v0, 0x0

    :cond_18
    :goto_18
    return v0

    :cond_19
    :try_start_19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1e
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_3e

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_46

    move-result v0

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_18

    :cond_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    goto :goto_1e

    :catchall_46
    move-exception v0

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4c
    throw v0
.end method
