.class public Lcom/sina/weibo/sdk/api/share/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
    }
.end annotation


# static fields
.field public static final BUILD_INT:I = 0x286e

.field public static final BUILD_INT_VER_2_2:I = 0x286f

.field public static final BUILD_INT_VER_2_3:I = 0x2870

.field public static final BUILD_INT_VER_2_5:I = 0x2871

.field private static final TAG:Ljava/lang/String; = "ApiUtils"

.field private static final WEIBO_IDENTITY_ACTION:Ljava/lang/String; = "com.sina.weibo.action.sdkidentity"

.field private static final WEIBO_NAME_URI:Landroid/net/Uri; = null

.field private static final WEIBO_SIGN:Ljava/lang/String; = "18da2bf10352443a00a5e046d9fca6bd"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://com.sina.weibo.sdkProvider/query/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/api/share/ApiUtils;->WEIBO_NAME_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containSign([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v2

    :cond_6
    array-length v4, p0

    move v3, v2

    :goto_8
    if-ge v3, v4, :cond_5

    aget-object v1, p0, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string/jumbo v2, "ApiUtils"

    const-string/jumbo v3, "check pass"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public static isWeiboAppSupportAPI(I)Z
    .registers 2

    const/16 v0, 0x286e

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
    .registers 2

    invoke-static {p0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfoByProvider(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfoByFile(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private static queryWeiboInfoByAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
    .registers 16

    const/4 v13, -0x1

    const/4 v10, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move-object v9, v10

    :cond_7
    :goto_7
    return-object v9

    :cond_8
    const/4 v3, 0x0

    const/4 v11, 0x2

    :try_start_a
    invoke-virtual {p0, p1, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    const/16 v1, 0x400

    const/16 v11, 0x400

    new-array v0, v11, [B

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string/jumbo v12, "weibo_for_sdk.json"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_24
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v3, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v13, :cond_44

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3d

    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_3a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3a} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_3a} :catch_87
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_93

    move-result v11

    if-nez v11, :cond_59

    :cond_3d
    if-eqz v3, :cond_42

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_ad

    :cond_42
    :goto_42
    move-object v9, v10

    goto :goto_7

    :cond_44
    :try_start_44
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_4d} :catch_87
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_93

    goto :goto_24

    :catch_4e
    move-exception v2

    :try_start_4f
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_a6

    if-eqz v3, :cond_57

    :try_start_54
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_af

    :cond_57
    :goto_57
    move-object v9, v10

    goto :goto_7

    :cond_59
    :try_start_59
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "support_api"

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    new-instance v9, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    invoke-direct {v9}, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;-><init>()V

    iput-object p1, v9, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    iput v7, v9, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
    :try_end_73
    .catchall {:try_start_59 .. :try_end_73} :catchall_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_59 .. :try_end_73} :catch_4e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_73} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_73} :catch_87
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_73} :catch_93

    if-eqz v3, :cond_7

    :try_start_75
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_7

    :catch_79
    move-exception v10

    goto :goto_7

    :catch_7b
    move-exception v2

    :try_start_7c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_a6

    if-eqz v3, :cond_57

    :try_start_81
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_57

    :catch_85
    move-exception v11

    goto :goto_57

    :catch_87
    move-exception v2

    :try_start_88
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_a6

    if-eqz v3, :cond_57

    :try_start_8d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_57

    :catch_91
    move-exception v11

    goto :goto_57

    :catch_93
    move-exception v2

    :try_start_94
    const-string/jumbo v11, "ApiUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_a6

    if-eqz v3, :cond_57

    :try_start_a0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_57

    :catch_a4
    move-exception v11

    goto :goto_57

    :catchall_a6
    move-exception v10

    if-eqz v3, :cond_ac

    :try_start_a9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_b1

    :cond_ac
    :goto_ac
    throw v10

    :catch_ad
    move-exception v11

    goto :goto_42

    :catch_af
    move-exception v11

    goto :goto_57

    :catch_b1
    move-exception v11

    goto :goto_ac
.end method

.method private static queryWeiboInfoByFile(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
    .registers 9

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.sina.weibo.action.sdkidentity"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_22

    :cond_20
    move-object v4, v5

    :goto_21
    return-object v4

    :cond_22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2e

    move-object v4, v5

    goto :goto_21

    :cond_2e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_26

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_26

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_26

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_26

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfoByAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    move-result-object v4

    if-eqz v4, :cond_26

    goto :goto_21
.end method

.method public static queryWeiboInfoByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
    .registers 5

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfoByAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->queryWeiboInfoByProvider(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v2, v0, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_1b
    move-object v0, v1

    goto :goto_6
.end method

.method private static queryWeiboInfoByProvider(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;
    .registers 16

    const/4 v14, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_6
    sget-object v1, Lcom/sina/weibo/sdk/api/share/ApiUtils;->WEIBO_NAME_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_5c

    move-result-object v6

    if-nez v6, :cond_1a

    if-eqz v6, :cond_18

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_18
    move-object v13, v14

    :cond_19
    :goto_19
    return-object v13

    :cond_1a
    :try_start_1a
    const-string/jumbo v1, "support_api"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v1, "package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7a

    const/4 v12, -0x1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_5c

    move-result-object v10

    :try_start_33
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_72
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_36} :catch_57
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_5c

    move-result v12

    :goto_37
    :try_start_37
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-static {p0, v9}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    new-instance v13, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;

    invoke-direct {v13}, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;-><init>()V

    iput-object v9, v13, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    iput v12, v13, Lcom/sina/weibo/sdk/api/share/ApiUtils$WeiboInfo;->supportApi:I
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_50} :catch_5c

    if-eqz v6, :cond_19

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_19

    :catch_57
    move-exception v7

    :try_start_58
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_37

    :catch_5c
    move-exception v7

    :try_start_5d
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "ApiUtils"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_72

    if-eqz v6, :cond_70

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_70
    :goto_70
    move-object v13, v14

    goto :goto_19

    :catchall_72
    move-exception v1

    if-eqz v6, :cond_79

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_79
    throw v1

    :cond_7a
    if-eqz v6, :cond_70

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_70
.end method

.method public static validateWeiboSign(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_14

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string/jumbo v3, "18da2bf10352443a00a5e046d9fca6bd"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/api/share/ApiUtils;->containSign([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v2

    :goto_13
    return v2

    :catch_14
    move-exception v0

    const/4 v2, 0x0

    goto :goto_13
.end method
