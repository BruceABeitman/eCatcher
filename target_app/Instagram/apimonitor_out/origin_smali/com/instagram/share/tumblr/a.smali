.class public final Lcom/instagram/share/tumblr/a;
.super Lcom/instagram/share/e/a;
.source "TumblrAccount.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/share/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/share/tumblr/a;
    .registers 4

    invoke-static {}, Lcom/instagram/share/tumblr/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oauth_token"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "oauth_secret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/instagram/share/tumblr/a;->b()Lcom/instagram/share/tumblr/a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .registers 1

    invoke-static {}, Lcom/instagram/share/tumblr/a;->b()Lcom/instagram/share/tumblr/a;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b()Lcom/instagram/share/tumblr/a;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/instagram/share/tumblr/a;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "oauth_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oauth_secret"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_15

    if-nez v1, :cond_16

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lcom/instagram/share/tumblr/a;

    invoke-direct {v0, v2, v1}, Lcom/instagram/share/tumblr/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static c()V
    .registers 2

    invoke-static {}, Lcom/instagram/share/tumblr/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "oauth_secret"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static d()Landroid/content/SharedPreferences;
    .registers 1

    const-string v0, "tumblrPreferences"

    invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
