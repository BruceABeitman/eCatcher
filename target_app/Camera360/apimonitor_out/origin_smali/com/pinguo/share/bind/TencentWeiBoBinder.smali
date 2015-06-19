.class public Lcom/pinguo/share/bind/TencentWeiBoBinder;
.super Ljava/lang/Object;
.source "TencentWeiBoBinder.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "ACCESS_TOKEN"

.field private static APPKEY:J = 0x0L

.field private static APPSECRET:Ljava/lang/String; = null

.field private static final AUTHORIZETIME:Ljava/lang/String; = "AUTHORIZETIME"

.field private static final CLIENT_ID:Ljava/lang/String; = "CLIENT_ID"

.field private static final EXPIRES_IN:Ljava/lang/String; = "EXPIRES_IN"

.field private static final NAME:Ljava/lang/String; = "NAME"

.field private static final NICK:Ljava/lang/String; = "NICK"

.field private static final OPEN_ID:Ljava/lang/String; = "OPEN_ID"

.field private static final OPEN_KEY:Ljava/lang/String; = "OPEN_KEY"

.field private static final REFRESH_TOKEN:Ljava/lang/String; = "REFRESH_TOKEN"

.field public static final SITE_CODE:Ljava/lang/String; = "qq"

.field static final SUPPORT_WEIBO_MIN_VERSION:I = 0x2c

.field static final WEIBO_AUTH_URL:Ljava/lang/String; = "TencentAuth://weibo"

.field static final WEIBO_PACKAGE:Ljava/lang/String; = "com.tencent.WBlog"

.field private static instanceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/pinguo/share/bind/TencentWeiBoBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static isTencentWeiboValidate:Z

.field public static needCallback:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoListener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;

.field private mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;

.field private mSsoInterface:Lcom/pinguo/share/bind/SsoInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string/jumbo v0, "801368787"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->APPKEY:J

    const-string/jumbo v0, "2ce44d2761dd578a8501548e14b3624e"

    sput-object v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->APPSECRET:Ljava/lang/String;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->instanceMap:Ljava/util/WeakHashMap;

    sput-boolean v2, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboValidate:Z

    sput-boolean v2, Lcom/pinguo/share/bind/TencentWeiBoBinder;->needCallback:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/share/bind/TencentWeiBoBinder$1;

    invoke-direct {v0, p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder$1;-><init>(Lcom/pinguo/share/bind/TencentWeiBoBinder;)V

    iput-object v0, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mSsoInterface:Lcom/pinguo/share/bind/SsoInterface;

    new-instance v0, Lcom/pinguo/share/bind/TencentWeiBoBinder$2;

    invoke-direct {v0, p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder$2;-><init>(Lcom/pinguo/share/bind/TencentWeiBoBinder;)V

    iput-object v0, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mAutoListener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;

    iput-object p1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Lcom/pinguo/share/bind/BindManager$BindCallback;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/pinguo/share/bind/TencentWeiBoBinder;
    .registers 4

    sget-object v2, Lcom/pinguo/share/bind/TencentWeiBoBinder;->instanceMap:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/pinguo/share/bind/TencentWeiBoBinder;->instanceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;

    if-nez v0, :cond_17

    new-instance v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;

    invoke-direct {v0, p0}, Lcom/pinguo/share/bind/TencentWeiBoBinder;-><init>(Landroid/app/Activity;)V

    sget-object v1, Lcom/pinguo/share/bind/TencentWeiBoBinder;->instanceMap:Ljava/util/WeakHashMap;

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

.method public static isTencentWeiboSite(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_d

    const-string/jumbo v0, "qq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->APPKEY:J

    goto :goto_8
.end method

.method public static setAppSecret(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sput-object p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->APPSECRET:Ljava/lang/String;

    goto :goto_8
.end method

.method public static validateWeiboApp(Landroid/content/Context;)Z
    .registers 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_5
    const-string/jumbo v5, "com.tencent.WBlog"

    const/16 v6, 0x10

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_37

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v6, 0x2c

    if-lt v5, v6, :cond_37

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "TencentAuth://weibo"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x1

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_37

    const/4 v5, 0x1

    sput-boolean v5, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboValidate:Z

    sget-boolean v5, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboValidate:Z

    :goto_36
    return v5

    :cond_37
    const/4 v5, 0x0

    sput-boolean v5, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboValidate:Z

    sget-boolean v5, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboValidate:Z
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_3c} :catch_3d

    goto :goto_36

    :catch_3d
    move-exception v0

    sput-boolean v7, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboValidate:Z

    sget-boolean v5, Lcom/pinguo/share/bind/TencentWeiBoBinder;->isTencentWeiboValidate:Z

    goto :goto_36
.end method


# virtual methods
.method public auth()V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-wide v1, Lcom/pinguo/share/bind/TencentWeiBoBinder;->APPKEY:J

    sget-object v3, Lcom/pinguo/share/bind/TencentWeiBoBinder;->APPSECRET:Ljava/lang/String;

    iget-object v4, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mAutoListener:Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->register(Landroid/content/Context;JLjava/lang/String;Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;)V

    iget-object v0, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->auth(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public doOnActivityResult()V
    .registers 6

    iget-object v3, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_b
    const-string/jumbo v3, "access_token"

    const-string/jumbo v4, "ACCESS_TOKEN"

    invoke-static {v0, v4}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "expires_in"

    const-string/jumbo v4, "EXPIRES_IN"

    invoke-static {v0, v4}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "refresh_token"

    const-string/jumbo v4, "REFRESH_TOKEN"

    invoke-static {v0, v4}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "uid"

    const-string/jumbo v4, "OPEN_ID"

    invoke-static {v0, v4}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_3f} :catch_50

    :goto_3f
    iget-object v3, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mSsoInterface:Lcom/pinguo/share/bind/SsoInterface;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mSsoInterface:Lcom/pinguo/share/bind/SsoInterface;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/pinguo/share/bind/SsoInterface;->bindSso(Ljava/lang/String;)V

    :cond_4c
    const/4 v3, 0x0

    sput-boolean v3, Lcom/pinguo/share/bind/TencentWeiBoBinder;->needCallback:Z

    return-void

    :catch_50
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3f
.end method

.method public isAuthSuccess()Z
    .registers 4

    iget-object v2, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "NICK"

    invoke-static {v0, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x1

    goto :goto_16
.end method

.method public setmBindCallback(Lcom/pinguo/share/bind/BindManager$BindCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->mBindCallback:Lcom/pinguo/share/bind/BindManager$BindCallback;

    return-void
.end method
