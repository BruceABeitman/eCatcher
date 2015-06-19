.class public final Lcom/instagram/share/f/a;
.super Lcom/instagram/share/e/a;
.source "TwitterAccount.java"
.field private static a:Z
.field private final b:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/share/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object p3, p0, Lcom/instagram/share/f/a;->b:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/share/f/a;
.registers 5
invoke-static {}, Lcom/instagram/share/f/a;->j()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "oauth_token"
invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v1, "oauth_secret"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v1, "username"
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v0
if-eqz v0, :cond_2b
invoke-static {}, Lcom/instagram/share/f/a;->d()V
:goto_26
invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;
move-result-object v0
return-object v0
:cond_2b
invoke-static {}, Lcom/instagram/share/f/a;->k()V
goto :goto_26
.end method
.method private static a(Ljava/lang/String;Lcom/instagram/share/f/a;)V
.registers 4
new-instance v0, Lcom/instagram/common/a/a/q;
invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V
new-instance v1, Lcom/instagram/share/f/b;
invoke-direct {v1, p0, p1}, Lcom/instagram/share/f/b;-><init>(Ljava/lang/String;Lcom/instagram/share/f/a;)V
invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method
.method public static a(Z)V
.registers 3
if-eqz p0, :cond_5
invoke-static {}, Lcom/instagram/share/f/a;->l()V
:cond_5
invoke-static {}, Lcom/instagram/share/f/a;->j()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "oauth_token"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v1, "oauth_secret"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v1, "username"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static a()Z
.registers 1
invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static b()Lcom/instagram/share/f/a;
.registers 5
const/4 v0, 0x0
invoke-static {}, Lcom/instagram/share/f/a;->j()Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "oauth_token"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "oauth_secret"
invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "username"
invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v2, :cond_1b
if-nez v3, :cond_1c
:cond_1b
:goto_1b
return-object v0
:cond_1c
new-instance v0, Lcom/instagram/share/f/a;
invoke-direct {v0, v2, v3, v1}, Lcom/instagram/share/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
.end method
.method public static c()Z
.registers 1
sget-boolean v0, Lcom/instagram/share/f/a;->a:Z
return v0
.end method
.method public static d()V
.registers 2
const/4 v0, 0x0
sput-boolean v0, Lcom/instagram/share/f/a;->a:Z
invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;
move-result-object v0
const-string v1, "twitter/store_token/"
invoke-static {v1, v0}, Lcom/instagram/share/f/a;->a(Ljava/lang/String;Lcom/instagram/share/f/a;)V
return-void
.end method
.method public static i()Ljava/lang/Runnable;
.registers 1
new-instance v0, Lcom/instagram/share/f/c;
invoke-direct {v0}, Lcom/instagram/share/f/c;-><init>()V
return-object v0
.end method
.method private static j()Landroid/content/SharedPreferences;
.registers 1
const-string v0, "twitterPreferences"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method
.method private static k()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/instagram/share/f/a;->a:Z
return-void
.end method
.method private static l()V
.registers 2
invoke-static {}, Lcom/instagram/share/f/a;->b()Lcom/instagram/share/f/a;
move-result-object v0
const-string v1, "twitter/clear_token/"
invoke-static {v1, v0}, Lcom/instagram/share/f/a;->a(Ljava/lang/String;Lcom/instagram/share/f/a;)V
return-void
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/f/a;->b:Ljava/lang/String;
return-object v0
.end method
.method public final h()Ljava/util/HashMap;
.registers 4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "share_to_twitter"
const-string v2, "1"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "twitter_access_token_key"
invoke-virtual {p0}, Lcom/instagram/share/f/a;->e()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "twitter_access_token_secret"
invoke-virtual {p0}, Lcom/instagram/share/f/a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/instagram/share/f/a;->g()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_2d
const-string v1, "twitter_username"
invoke-virtual {p0}, Lcom/instagram/share/f/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2d
return-object v0
.end method