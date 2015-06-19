.class public Lcom/pinguo/share/util/ShareModuleUtil;
.super Ljava/lang/Object;
.source "ShareModuleUtil.java"


# static fields
.field private static mlocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/share/util/ShareModuleUtil;->mlocation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .registers 6

    if-nez p0, :cond_4

    const/4 v1, 0x0

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3
.end method

.method public static dpToPixel(Landroid/content/Context;F)I
    .registers 6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v1, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3
.end method

.method public static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/pinguo/share/util/ShareModuleUtil;->getBitmap(Ljava/lang/String;IILjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;IILjava/util/List;)Landroid/graphics/Bitmap;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v4, v6, v5

    mul-int v1, p1, p2

    int-to-double v8, v4

    const-wide/high16 v10, 0x3ff0

    mul-double/2addr v8, v10

    int-to-double v10, v1

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    float-to-double v8, v2

    const-wide v10, 0x3fe999999999999aL

    add-double/2addr v8, v10

    double-to-int v7, v8

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x0

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v8, 0x0

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_45

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    return-object v0
.end method

.method public static getEncodeSiteInfo(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_21

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/share/util/Base64;->encode([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    return-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/share/website/WebSiteInfoBean;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_2c
    const-string/jumbo v5, "site_code"

    iget-object v6, v3, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "site_uid"

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "site_token"

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_48} :catch_4c

    :goto_48
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_48
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    const-string/jumbo v4, ""

    :goto_25
    return-object v4

    :cond_26
    move-object v4, v0

    goto :goto_25
.end method

.method public static getLocationInfo()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/pinguo/share/util/ShareModuleUtil;->mlocation:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/share/util/ShareModuleUtil;->mlocation:Ljava/lang/String;

    return-object v2
.end method

.method public static getMyVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "camera360_android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/share/ShareAccess;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v2, "unKnow"

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    :goto_1e
    return-object v3

    :cond_1f
    const-string/jumbo v3, "wifi"

    goto :goto_1e

    :cond_23
    move-object v3, v2

    goto :goto_1e
.end method

.method public static getNetType(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    const-string/jumbo v3, "unknown"

    :cond_1e
    :goto_1e
    return-object v3

    :cond_1f
    const-string/jumbo v4, "mobile"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    move-object v3, v2

    goto :goto_1e

    :cond_30
    const-string/jumbo v3, "unknown"

    goto :goto_1e
.end method

.method public static getNewThemeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    sget-object v1, Lcom/pinguo/share/util/ShareModuleUtil;->mlocation:Ljava/lang/String;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/pinguo/share/util/ShareModuleUtil;->mlocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_d
    invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;

    :cond_10
    sget-object v1, Lcom/pinguo/share/util/ShareModuleUtil;->mlocation:Ljava/lang/String;

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/pinguo/share/util/ShareModuleUtil;->mlocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_27

    :cond_1c
    const-string/jumbo v1, "."

    const-string/jumbo v2, "_en-US."

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0

    :cond_27
    const-string/jumbo v1, "."

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/share/util/ShareModuleUtil;->mlocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public static getOrientation(I)I
    .registers 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_e

    :goto_4
    :pswitch_4
    return v0

    :pswitch_5
    const/16 v0, 0x5a

    goto :goto_4

    :pswitch_8
    const/16 v0, 0xb4

    goto :goto_4

    :pswitch_b
    const/16 v0, 0x10e

    goto :goto_4

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    :goto_e
    return-object v1

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_e
.end method

.method public static getRotateBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v1, 0x0

    const/4 v10, 0x0

    :try_start_2
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "Orientation"

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_3f

    move-result v9

    packed-switch v9, :pswitch_data_46

    :goto_12
    :pswitch_12
    if-eqz p0, :cond_44

    if-lez v10, :cond_44

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v10

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_44

    if-eq v11, p0, :cond_44

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_35
    return-object v11

    :pswitch_36
    const/16 v10, 0x5a

    goto :goto_12

    :pswitch_39
    const/16 v10, 0xb4

    goto :goto_12

    :pswitch_3c
    const/16 v10, 0x10e

    goto :goto_12

    :catch_3f
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    :cond_44
    move-object v11, p0

    goto :goto_35

    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_39
        :pswitch_12
        :pswitch_12
        :pswitch_36
        :pswitch_12
        :pswitch_3c
    .end packed-switch
.end method

.method public static hasNet(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static isUrlAvailable(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_9
    return v4

    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_c
    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const-string/jumbo v3, "HEAD"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_3d

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_3b

    const/4 v3, 0x1

    :goto_34
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_39
    move v4, v3

    goto :goto_9

    :cond_3b
    move v3, v4

    goto :goto_34

    :catch_3d
    move-exception v2

    :try_start_3e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_47

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9

    :catchall_47
    move-exception v3

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4d
    throw v3
.end method

.method public static isZhForNow()Z
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "--"

    const-string/jumbo v5, "\r\n"

    const-string/jumbo v6, "multipart/form-data"

    const-string/jumbo v4, "UTF-8"

    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    const v24, 0x88b8

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v24, 0x1388

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string/jumbo v24, "POST"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v24, "connection"

    const-string/jumbo v25, "keep-alive"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v24, "Charsert"

    const-string/jumbo v25, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v24, "Content-Type"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v26, ";boundary="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_9a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_136

    new-instance v20, Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v8, 0x0

    :try_start_ae
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    if-eqz p2, :cond_cd

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_c7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1da

    :cond_cd
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    const/16 v24, 0xc8

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2c2

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_114
    .catchall {:try_start_ae .. :try_end_114} :catchall_296

    const/16 v19, 0x0

    :try_start_116
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    :goto_11b
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_2b8

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_124
    .catchall {:try_start_116 .. :try_end_124} :catchall_2bf

    move-result-object v24

    if-eqz v9, :cond_12a

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    :cond_12a
    if-eqz v20, :cond_12f

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    :cond_12f
    if-eqz v11, :cond_134

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_134
    move-object v8, v9

    :goto_135
    return-object v24

    :cond_136
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, "\""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Content-Type: text/plain; charset="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Content-Transfer-Encoding: 8bit"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9a

    :cond_1da
    :try_start_1da
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Content-Disposition: form-data; name=\"file\"; filename=\""

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, "\""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Content-Type: image/jpeg; charset="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v17, Ljava/io/FileInputStream;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_270
    .catchall {:try_start_1da .. :try_end_270} :catchall_296

    const/16 v24, 0x2000

    :try_start_272
    move/from16 v0, v24

    new-array v10, v0, [B

    const/16 v18, 0x0

    :goto_278
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I
    :try_end_27d
    .catchall {:try_start_272 .. :try_end_27d} :catchall_2b3

    move-result v18

    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a7

    :try_start_286
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_294
    .catchall {:try_start_286 .. :try_end_294} :catchall_296

    goto/16 :goto_c7

    :catchall_296
    move-exception v24

    :goto_297
    if-eqz v8, :cond_29c

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_29c
    if-eqz v20, :cond_2a1

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    :cond_2a1
    if-eqz v11, :cond_2a6

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2a6
    throw v24

    :cond_2a7
    const/16 v24, 0x0

    :try_start_2a9
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2b2
    .catchall {:try_start_2a9 .. :try_end_2b2} :catchall_2b3

    goto :goto_278

    :catchall_2b3
    move-exception v24

    :try_start_2b4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    throw v24
    :try_end_2b8
    .catchall {:try_start_2b4 .. :try_end_2b8} :catchall_296

    :cond_2b8
    :try_start_2b8
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2bd
    .catchall {:try_start_2b8 .. :try_end_2bd} :catchall_2bf

    goto/16 :goto_11b

    :catchall_2bf
    move-exception v24

    move-object v8, v9

    goto :goto_297

    :cond_2c2
    if-eqz v8, :cond_2c7

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_2c7
    if-eqz v20, :cond_2cc

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    :cond_2cc
    if-eqz v11, :cond_2d1

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2d1
    const/16 v24, 0x0

    goto/16 :goto_135
.end method

.method public static saveFiles(Ljava/io/OutputStream;[B)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
