.class public Lcom/twidroid/net/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "instapaperlogin"

    sput-object v0, Lcom/twidroid/net/a/b;->a:Ljava/lang/String;

    const-string v0, "instapaperpassword"

    sput-object v0, Lcom/twidroid/net/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Z
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/twidroid/net/a/b;->a:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/twidroid/net/a/b;->b:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .registers 9

    const/16 v6, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "username"

    aput-object v3, v2, v1

    sget-object v3, Lcom/twidroid/net/a/b;->a:Ljava/lang/String;

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/twidroid/net/a/b;->b:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/ubermedia/net/e;

    invoke-direct {v3}, Lcom/ubermedia/net/e;-><init>()V

    const-string v4, "https://www.instapaper.com/api/add"

    invoke-static {v4, v2, v5, v3}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    invoke-virtual {v3}, Lcom/ubermedia/net/e;->a()I

    move-result v2

    if-ne v2, v6, :cond_46

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Username or Password"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-virtual {v3}, Lcom/ubermedia/net/e;->a()I

    move-result v2

    if-ne v2, v6, :cond_4d

    :goto_4c
    return v0

    :cond_4d
    move v0, v1

    goto :goto_4c
.end method

.method public static b(Landroid/content/SharedPreferences;)Z
    .registers 8

    const/16 v6, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "username"

    aput-object v3, v2, v1

    sget-object v3, Lcom/twidroid/net/a/b;->a:Ljava/lang/String;

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/twidroid/net/a/b;->b:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/ubermedia/net/e;

    invoke-direct {v3}, Lcom/ubermedia/net/e;-><init>()V

    const-string v4, "https://www.instapaper.com/api/authenticate"

    invoke-static {v4, v2, v5, v3}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    invoke-virtual {v3}, Lcom/ubermedia/net/e;->a()I

    move-result v2

    if-ne v2, v6, :cond_3e

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Username or Password"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    invoke-virtual {v3}, Lcom/ubermedia/net/e;->a()I

    move-result v2

    if-ne v2, v6, :cond_45

    :goto_44
    return v0

    :cond_45
    move v0, v1

    goto :goto_44
.end method
