.class public Lcom/pinguo/share/bind/BindManager;
.super Ljava/lang/Object;
.source "BindManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/bind/BindManager$BindCallback;,
        Lcom/pinguo/share/bind/BindManager$WebSitesThread;
    }
.end annotation


# static fields
.field public static dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

.field private static instanceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/pinguo/share/bind/BindManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/pinguo/share/bind/BindManager;->instanceMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/bind/BindManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/share/bind/BindManager;->redirectToWebAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/share/bind/BindManager;)Lcom/pinguo/share/bind/BindManager$BindCallback;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/BindManager;->mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;

    return-object v0
.end method

.method public static changeActivate(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Z
    .registers 6

    invoke-static {p0, p2, p1}, Lcom/pinguo/share/bind/BindSharedPreferences;->changeActivate(Lcom/pinguo/share/website/WebSiteInfoBean;ZLandroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    if-nez v1, :cond_e

    invoke-static {p1}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v1

    sput-object v1, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    :cond_e
    sget-object v1, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    iget-object v2, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/share/bind/DispatchBean;->getWebSite(Ljava/lang/String;)Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/pinguo/share/website/WebSiteInfoBean;->setActivate(Z)V

    return v0
.end method

.method public static clearDispatchBean()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    return-void
.end method

.method public static clearWebSite(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;)Z
    .registers 4

    invoke-static {p1, p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->clearWebSite(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v1, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->refreshBindArray()V

    iget-object v1, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/pinguo/share/at/AtManager;->clearFile(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_10
    return v0
.end method

.method public static encryptResult(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {p0}, Lcom/pinguo/share/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_a
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-static {v0}, Lcom/pinguo/share/util/DES;->des([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_72
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_4b

    const/16 v7, 0x400

    :try_start_1a
    new-array v3, v7, [B

    :goto_1c
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v6, v3, v7, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_6c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_22} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_6f

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_36

    if-eqz v6, :cond_6a

    :try_start_28
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_66

    move-object v5, v6

    :cond_2c
    :goto_2c
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    return-object v7

    :cond_36
    const/4 v7, 0x0

    :try_start_37
    invoke-virtual {v1, v3, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_6c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_6f

    goto :goto_1c

    :catch_3b
    move-exception v4

    move-object v5, v6

    :goto_3d
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_5a

    if-eqz v5, :cond_2c

    :try_start_42
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_2c

    :catch_46
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catch_4b
    move-exception v4

    :goto_4c
    :try_start_4c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5a

    if-eqz v5, :cond_2c

    :try_start_51
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_2c

    :catch_55
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catchall_5a
    move-exception v7

    :goto_5b
    if-eqz v5, :cond_60

    :try_start_5d
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    throw v7

    :catch_61
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    :catch_66
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_6a
    move-object v5, v6

    goto :goto_2c

    :catchall_6c
    move-exception v7

    move-object v5, v6

    goto :goto_5b

    :catch_6f
    move-exception v4

    move-object v5, v6

    goto :goto_4c

    :catch_72
    move-exception v4

    goto :goto_3d
.end method

.method public static getAtList(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_21

    :cond_20
    return-object v0

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v2}, Lcom/pinguo/share/website/WebSiteInfoBean;->isAtable()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method public static declared-synchronized getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
    .registers 12

    const-class v8, Lcom/pinguo/share/bind/BindManager;

    monitor-enter v8

    :try_start_3
    sget-object v7, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    if-nez v7, :cond_67

    invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getServerDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v7

    sput-object v7, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    sget-object v7, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_93

    if-nez v7, :cond_67

    const/4 v0, 0x0

    :try_start_12
    invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v7, "dispatch.json-"

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "zh-CN"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    const-string/jumbo v7, "zh-CN"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_43
    .catchall {:try_start_12 .. :try_end_43} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_43} :catch_84

    :try_start_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a4

    new-instance v7, Lcom/pinguo/share/bind/DispatchBean;

    invoke-direct {v7}, Lcom/pinguo/share/bind/DispatchBean;-><init>()V

    sput-object v7, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;
    :try_end_56
    .catchall {:try_start_43 .. :try_end_56} :catchall_b0
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_56} :catch_a8

    :try_start_56
    sget-object v7, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v7, v9}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_b0
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_5f} :catch_ab
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5f} :catch_a8

    :goto_5f
    :try_start_5f
    invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->clearLocationTime(Landroid/content/Context;)Z
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_b0
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_a8

    if-eqz v1, :cond_67

    :try_start_64
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_93
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_b8

    :cond_67
    :goto_67
    :try_start_67
    sget-object v7, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_93

    monitor-exit v8

    return-object v7

    :cond_6b
    :try_start_6b
    const-string/jumbo v7, "zh-HK"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7d

    const-string/jumbo v7, "zh-TW"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    :cond_7d
    const-string/jumbo v7, "zh-HK"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_83
    .catchall {:try_start_6b .. :try_end_83} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_83} :catch_84

    goto :goto_2d

    :catch_84
    move-exception v2

    :goto_85
    :try_start_85
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_9d

    if-eqz v0, :cond_67

    :try_start_8a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_93
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_67

    :catch_8e
    move-exception v2

    :try_start_8f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_67

    :catchall_93
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_96
    :try_start_96
    const-string/jumbo v7, "en-US"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_9d
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9c} :catch_84

    goto :goto_2d

    :catchall_9d
    move-exception v7

    :goto_9e
    if-eqz v0, :cond_a3

    :try_start_a0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_93
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_b3

    :cond_a3
    :goto_a3
    :try_start_a3
    throw v7
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_93

    :cond_a4
    :try_start_a4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    :catch_a8
    move-exception v2

    move-object v0, v1

    goto :goto_85

    :catch_ab
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_a4 .. :try_end_af} :catchall_b0
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_af} :catch_a8

    goto :goto_5f

    :catchall_b0
    move-exception v7

    move-object v0, v1

    goto :goto_9e

    :catch_b3
    move-exception v2

    :try_start_b4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    :catch_b8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_93

    goto :goto_67
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/BindManager;
    .registers 4

    sget-object v2, Lcom/pinguo/share/bind/BindManager;->instanceMap:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/pinguo/share/bind/BindManager;->instanceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/bind/BindManager;

    if-nez v0, :cond_17

    new-instance v0, Lcom/pinguo/share/bind/BindManager;

    invoke-direct {v0}, Lcom/pinguo/share/bind/BindManager;-><init>()V

    sget-object v1, Lcom/pinguo/share/bind/BindManager;->instanceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    monitor-exit v2

    return-object v0

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static getWebSiteInfoBean(Ljava/lang/String;)Lcom/pinguo/share/website/WebSiteInfoBean;
    .registers 6

    sget-object v1, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getArray()[Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_8
    if-lt v1, v3, :cond_c

    const/4 v0, 0x0

    :cond_b
    return-object v0

    :cond_c
    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static getWebSites(Lcom/pinguo/share/bind/IBindProcess;Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/pinguo/share/bind/BindManager$WebSitesThread;

    invoke-direct {v0, p0, p1}, Lcom/pinguo/share/bind/BindManager$WebSitesThread;-><init>(Lcom/pinguo/share/bind/IBindProcess;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/pinguo/share/bind/BindManager$WebSitesThread;->getWebSites()V

    return-void
.end method

.method public static isNeedDispatch(Landroid/app/Activity;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->needUpdateDispatchBean(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_d
    invoke-static {}, Lcom/pinguo/share/bind/BindManager;->clearDispatchBean()V

    const/4 v0, 0x1

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getLocationTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    const/4 v0, 0x1

    goto :goto_11

    :cond_24
    invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getLastLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method private redirectToWebAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/login.json?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/pinguo/share/util/ShareModuleUtil;->getMyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&site="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&callbackurl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&focus_us="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&cuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/pinguo/share/ShareAccess;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/pinguo/share/net/ServiceConnection;->addSig(Ljava/lang/StringBuilder;)V

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/pinguo/share/bind/web/WebViewActivity;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "WEB_PATH"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static refreshLocalWebSiteToken(Landroid/content/Context;Lcom/pinguo/share/website/ShareResultBean;)V
    .registers 11

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v6

    iget-object v3, v6, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/pinguo/share/website/ShareResultBean;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pinguo/share/website/ShareResultBean;->getExpiredTime()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_29

    invoke-static {p0, p1}, Lcom/pinguo/share/bind/BindSharedPreferences;->refreshWebSiteTokenInfo(Landroid/content/Context;Lcom/pinguo/share/website/ShareResultBean;)Z

    goto :goto_2

    :cond_29
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v7, v4, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-virtual {v4, v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->setToken(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lcom/pinguo/share/website/WebSiteInfoBean;->setExpire_in(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/pinguo/share/website/WebSiteInfoBean;->setTimespan(J)V

    goto :goto_1f
.end method

.method public static requestDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/IBindProcess;)V
    .registers 8

    :try_start_0
    invoke-static {p0}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/share/net/ServiceConnection;->getWebSites()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "requestDispatch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "response src = \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/pinguo/share/bind/BindManager;->encryptResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "requestDispatch"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "response dec = \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/share/bind/DispatchBean;

    invoke-direct {v0}, Lcom/pinguo/share/bind/DispatchBean;-><init>()V

    invoke-static {p0, v0, v2}, Lcom/pinguo/share/bind/BindManager;->saveDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;Ljava/lang/String;)V

    if-eqz p1, :cond_48

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->finishBind()V

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->stopProgress()V
    :try_end_48
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_48} :catch_49
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_48} :catch_53
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_48} :catch_5d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_48} :catch_67
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_48} :catch_71

    :cond_48
    :goto_48
    return-void

    :catch_49
    move-exception v1

    if-eqz p1, :cond_4f

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    :cond_4f
    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    goto :goto_48

    :catch_53
    move-exception v1

    if-eqz p1, :cond_59

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    :cond_59
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_48

    :catch_5d
    move-exception v1

    if-eqz p1, :cond_63

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    :cond_63
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_48

    :catch_67
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p1, :cond_48

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    goto :goto_48

    :catch_71
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    if-eqz p1, :cond_48

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    goto :goto_48
.end method

.method public static saveDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;Ljava/lang/String;)V

    sput-object p1, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    return-void
.end method

.method public static saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;
    .registers 6

    invoke-static {p0, p1, p2}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v1, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/share/ShareAccess;->statShareSiteBindSuccess(Ljava/lang/String;)V

    :goto_b
    sget-object v1, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->refreshBindArray()V

    if-nez v0, :cond_19

    const v1, 0x7f080072

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0

    :cond_1a
    iget-object v1, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/share/ShareAccess;->statShareSiteBindFail(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static startBind(Landroid/app/Activity;Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/share/bind/BindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "is_share_into"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static syncBindInfosOfCloud(Landroid/content/Context;Lcom/pinguo/share/bind/IBindProcess;)V
    .registers 7

    sget-object v2, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    if-nez v2, :cond_e

    const-string/jumbo v2, "sync"

    const-string/jumbo v3, "Local dispatchBean is null"

    invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/share/net/ServiceConnection;->getBindObject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/share/bind/BindManager;->encryptResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sync"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sync results = \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v2

    sput-object v2, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    sget-object v2, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;Ljava/lang/String;Z)V

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->finishBind()V

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->stopProgress()V
    :try_end_44
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_44} :catch_45
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_44} :catch_4f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_e .. :try_end_44} :catch_59
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_44} :catch_63
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_44} :catch_6d

    goto :goto_d

    :catch_45
    move-exception v0

    if-eqz p1, :cond_4b

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    :cond_4b
    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    goto :goto_d

    :catch_4f
    move-exception v0

    if-eqz p1, :cond_55

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    :cond_55
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_d

    :catch_59
    move-exception v0

    if-eqz p1, :cond_5f

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    :cond_5f
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_d

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    goto :goto_d

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/pinguo/share/bind/IBindProcess;->fail()V

    goto :goto_d
.end method


# virtual methods
.method public setBindCallback(Lcom/pinguo/share/bind/BindManager$BindCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/BindManager;->mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;

    return-void
.end method

.method public startWebActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/pinguo/share/bind/DispatchBean;->getWebSite(Ljava/lang/String;)Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v9

    invoke-virtual {v8}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/pinguo/share/bind/SinaBinder;->isSinaSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    if-eqz v9, :cond_5b

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-static {v7}, Lcom/pinguo/share/bind/SinaBinder;->validateSina(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/SinaBinder;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/SinaBinder;->setAppSecret(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/SinaBinder;->setRedirectUrl(Ljava/lang/String;)V

    new-instance v6, Lcom/pinguo/share/bind/SinaBinder;

    invoke-direct {v6}, Lcom/pinguo/share/bind/SinaBinder;-><init>()V

    sput-boolean v4, Lcom/pinguo/share/bind/SinaBinder;->mBindBySso:Z

    new-instance v0, Lcom/pinguo/share/bind/BindManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/share/bind/BindManager$1;-><init>(Lcom/pinguo/share/bind/BindManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, p1, v0}, Lcom/pinguo/share/bind/SinaBinder;->ssoLogin(Landroid/app/Activity;Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;)V

    :goto_5a
    return-void

    :cond_5b
    sput-boolean v2, Lcom/pinguo/share/bind/SinaBinder;->mBindBySso:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/share/bind/BindManager;->redirectToWebAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5a

    :cond_61
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "HTC 802w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {p3}, Lcom/pinguo/share/bind/QQBinder;->isQQSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-static {p1}, Lcom/pinguo/share/bind/QQBinder;->validateQzone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/QQBinder;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/QQBinder;->setAppSecret(Ljava/lang/String;)V

    sput-boolean v4, Lcom/pinguo/share/bind/QQBinder;->mSSOLogin:Z

    new-instance v6, Lcom/pinguo/share/bind/QQBinder;

    invoke-direct {v6}, Lcom/pinguo/share/bind/QQBinder;-><init>()V

    new-instance v0, Lcom/pinguo/share/bind/BindManager$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/share/bind/BindManager$2;-><init>(Lcom/pinguo/share/bind/BindManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, p1, v0}, Lcom/pinguo/share/bind/QQBinder;->ssoLogin(Landroid/app/Activity;Lcom/pinguo/share/bind/QQBinder$IQQSSOLoginCallback;)V

    goto :goto_5a

    :cond_a8
    sput-boolean v2, Lcom/pinguo/share/bind/QQBinder;->mSSOLogin:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/share/bind/BindManager;->redirectToWebAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5a

    :cond_ae
    invoke-static {p3}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboSite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    if-eqz v0, :cond_df

    invoke-static {p1}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->validateWeiboApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_df

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->setAppSecret(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/TencentWeiBoBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->auth()V

    goto/16 :goto_5a

    :cond_df
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/share/bind/BindManager;->redirectToWebAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5a

    :cond_e4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/share/bind/BindManager;->redirectToWebAuth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5a
.end method
