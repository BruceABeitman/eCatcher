.class public Lcom/tencent/weibo/sdk/android/api/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSharePersistent(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->getInstance()Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;

    move-result-object v0

    const-string/jumbo v1, "ACCESS_TOKEN"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v1, "EXPIRES_IN"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v1, "OPEN_ID"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v1, "OPEN_KEY"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v1, "REFRESH_TOKEN"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v1, "NAME"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v1, "NICK"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v1, "CLIENT_ID"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public static clearSharePersistent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->getInstance()Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->clear(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public static getConfig()Ljava/util/Properties;
    .registers 5

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const-class v3, Lcom/tencent/weibo/sdk/android/api/util/Util;

    const-string/jumbo v4, "/config/config.properties"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_e
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    :goto_11
    return-object v2

    :catch_12
    move-exception v0

    const-string/jumbo v3, "\u5de5\u5177\u5305\u5f02\u5e38"

    const-string/jumbo v4, "\u83b7\u53d6\u914d\u7f6e\u6587\u4ef6\u5f02\u5e38"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11
.end method

.method public static getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    and-int/lit16 v5, v0, 0xff

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "Location"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "currentProvider: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_47

    move-result-object v1

    :goto_46
    return-object v1

    :catch_47
    move-exception v3

    const/4 v1, 0x0

    goto :goto_46
.end method

.method public static getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->getInstance()Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharePersistentLong(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->getInstance()Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private intToIp(I)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/app/Activity;)Z
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return v4

    :cond_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_10

    const/4 v2, 0x0

    :goto_18
    array-length v5, v3

    if-ge v2, v5, :cond_10

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_27

    const/4 v4, 0x1

    goto :goto_10

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method public static loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 9

    const/4 v7, 0x0

    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x2

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    :goto_26
    return-object v6

    :catch_27
    move-exception v2

    move-object v6, v7

    goto :goto_26
.end method

.method public static saveSharePersistent(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5

    invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->getInstance()Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->put(Landroid/content/Context;Ljava/lang/String;J)Z

    return-void
.end method

.method public static saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->getInstance()Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/weibo/sdk/android/api/util/SharePersistent;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
