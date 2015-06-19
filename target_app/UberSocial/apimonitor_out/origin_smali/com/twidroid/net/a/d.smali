.class public Lcom/twidroid/net/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "https://sapi.postup.com/users/v1"

.field public static final b:Ljava/lang/String; = "https://sapi.postup.com/users/v1/demographic/"

.field public static final c:Ljava/lang/String; = "http://api.postup.com/twitterclient/v1/status/Twidroyd?platform=Android"

.field private static final i:Ljava/lang/String; = "UberCoreAPI"


# instance fields
.field public final d:Z

.field e:Landroid/content/SharedPreferences;

.field f:Lcom/twidroid/model/twitter/c;

.field g:Lcom/ubermedia/net/b/c;

.field h:Lcom/ubermedia/a/a;


# direct methods
.method public constructor <init>(Lcom/twidroid/model/twitter/c;Landroid/content/SharedPreferences;Lcom/ubermedia/net/b/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/net/a/d;->d:Z

    iput-object p2, p0, Lcom/twidroid/net/a/d;->e:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/twidroid/net/a/d;->f:Lcom/twidroid/model/twitter/c;

    iput-object p3, p0, Lcom/twidroid/net/a/d;->g:Lcom/ubermedia/net/b/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/ubermedia/b/a;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, ""

    goto :goto_4
.end method

.method public static a(Landroid/app/Activity;)Z
    .registers 7

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    new-instance v2, Lcom/twidroid/net/a/d;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/d/v;->s()Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Lcom/twidroid/net/oauth/a;

    invoke-direct {v5, p0}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/twidroid/net/a/d;-><init>(Lcom/twidroid/model/twitter/c;Landroid/content/SharedPreferences;Lcom/ubermedia/net/b/c;)V

    invoke-virtual {v2}, Lcom/twidroid/net/a/d;->a()Z

    move-result v2

    if-eqz v2, :cond_57

    if-eqz p0, :cond_57

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->bi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_57

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->bm()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bp()V

    new-instance v0, Lcom/twidroid/net/a/d$1;

    invoke-direct {v0, p0}, Lcom/twidroid/net/a/d$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_57
    move v0, v1

    goto :goto_4
.end method

.method public static b()J
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()Z
    .registers 15

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_3
    new-instance v10, Lcom/ubermedia/net/e;

    invoke-direct {v10}, Lcom/ubermedia/net/e;-><init>()V

    const-string v11, "http://api.postup.com/twitterclient/v1/status/Twidroyd?platform=Android"

    const/4 v0, 0x6

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Content-Type"

    aput-object v1, v12, v0

    const/4 v0, 0x1

    const-string v1, "application/json"

    aput-object v1, v12, v0

    const/4 v0, 0x2

    const-string v1, "Accept"

    aput-object v1, v12, v0

    const/4 v0, 0x3

    const-string v1, "application/json"

    aput-object v1, v12, v0

    const/4 v0, 0x4

    const-string v1, "Authorization"

    aput-object v1, v12, v0

    const/4 v13, 0x5

    iget-object v0, p0, Lcom/twidroid/net/a/d;->g:Lcom/ubermedia/net/b/c;

    const-string v1, "GET"

    const-string v2, "http://api.postup.com/twitterclient/v1/status/Twidroyd?platform=Android"

    const/4 v3, 0x0

    invoke-static {}, Lcom/twidroid/net/a/d;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/twidroid/net/a/d;->f:Lcom/twidroid/model/twitter/c;

    invoke-virtual/range {v0 .. v6}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/ubermedia/net/c;JLcom/ubermedia/net/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v13

    invoke-static {v12}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v11, v0, v10}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lcom/ubermedia/net/e;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9d

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/a/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v0, "importantmessage"

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "importantmessage_flag"

    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "webViewEnabled"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v3, "web_view_enabled_flag"

    const-string v0, "webViewEnabled"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "false"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    move-object v0, v9

    :goto_84
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_87
    const-string v0, "webViewUrl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "web_view_url"

    const-string v3, "webViewUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_9a
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_9d
    move v0, v7

    :goto_9e
    return v0

    :cond_9f
    const-string v0, "webViewEnabled"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a4} :catch_a6

    move-result-object v0

    goto :goto_84

    :catch_a6
    move-exception v0

    const-string v0, "UberCoreAPI"

    const-string v1, "Getting status failed"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_9e
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 15

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v9, Lcom/ubermedia/net/e;

    invoke-direct {v9}, Lcom/ubermedia/net/e;-><init>()V

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "android"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v6, "ubersocial"

    const-string v0, "0"

    :try_start_12
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v10, "com.twidroid"

    const/16 v11, 0x80

    invoke-virtual {v1, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_20} :catch_c1

    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://sapi.postup.com/users/v1/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, p0, Lcom/twidroid/net/a/d;->f:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "?email="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "&screenName="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, p0, Lcom/twidroid/net/a/d;->f:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "&device="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&os="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&osVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x6

    new-array v10, v0, [Ljava/lang/Object;

    const-string v0, "Content-Type"

    aput-object v0, v10, v8

    const-string v0, "application/json"

    aput-object v0, v10, v7

    const/4 v0, 0x2

    const-string v1, "Accept"

    aput-object v1, v10, v0

    const/4 v0, 0x3

    const-string v1, "application/json"

    aput-object v1, v10, v0

    const/4 v0, 0x4

    const-string v1, "Authorization"

    aput-object v1, v10, v0

    const/4 v11, 0x5

    iget-object v0, p0, Lcom/twidroid/net/a/d;->g:Lcom/ubermedia/net/b/c;

    const-string v1, "POST"

    invoke-static {}, Lcom/twidroid/net/a/d;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/twidroid/net/a/d;->f:Lcom/twidroid/model/twitter/c;

    invoke-virtual/range {v0 .. v6}, Lcom/ubermedia/net/b/c;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/ubermedia/net/c;JLcom/ubermedia/net/b/d;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    invoke-static {v10}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v3, v0, v9}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    invoke-virtual {v9}, Lcom/ubermedia/net/e;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_c7

    move v0, v7

    :goto_c0
    return v0

    :catch_c1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_20

    :cond_c7
    move v0, v8

    goto :goto_c0
.end method
