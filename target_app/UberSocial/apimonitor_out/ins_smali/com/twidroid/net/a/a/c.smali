.class public Lcom/twidroid/net/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "access_token"
.field private static final b:Ljava/lang/String; = "expires_in"
.field private static final c:Ljava/lang/String; = "facebook-session"
.field private static final d:Ljava/lang/String; = "uid"
.field private static final e:Ljava/lang/String; = "name"
.field private static final f:Ljava/lang/String; = "app_id"
.field private static g:Lcom/twidroid/net/a/a/c;
.field private static h:Lcom/facebook/a/e;
.field private i:Lcom/facebook/a/e;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/String;
.method public constructor <init>(Lcom/facebook/a/e;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/net/a/a/c;->i:Lcom/facebook/a/e;
iput-object p2, p0, Lcom/twidroid/net/a/a/c;->j:Ljava/lang/String;
iput-object p3, p0, Lcom/twidroid/net/a/a/c;->k:Ljava/lang/String;
return-void
.end method
.method public static a(Lcom/facebook/a/e;)V
.registers 1
sput-object p0, Lcom/twidroid/net/a/a/c;->h:Lcom/facebook/a/e;
return-void
.end method
.method public static b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;
.registers 7
const/4 v0, 0x0
sget-object v1, Lcom/twidroid/net/a/a/c;->g:Lcom/twidroid/net/a/a/c;
if-eqz v1, :cond_14
sget-object v1, Lcom/twidroid/net/a/a/c;->g:Lcom/twidroid/net/a/a/c;
invoke-virtual {v1}, Lcom/twidroid/net/a/a/c;->a()Lcom/facebook/a/e;
move-result-object v1
invoke-virtual {v1}, Lcom/facebook/a/e;->b()Z
move-result v1
if-eqz v1, :cond_13
sget-object v0, Lcom/twidroid/net/a/a/c;->g:Lcom/twidroid/net/a/a/c;
:cond_13
:goto_13
return-object v0
:cond_14
const-string v1, "facebook-session"
const/4 v2, 0x0
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "app_id"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_13
new-instance v3, Lcom/facebook/a/e;
invoke-direct {v3, v2}, Lcom/facebook/a/e;-><init>(Ljava/lang/String;)V
const-string v2, "access_token"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/facebook/a/e;->b(Ljava/lang/String;)V
const-string v2, "expires_in"
const-wide/16 v4, 0x0
invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Lcom/facebook/a/e;->a(J)V
const-string v2, "uid"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v4, "name"
invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3}, Lcom/facebook/a/e;->b()Z
move-result v4
if-eqz v4, :cond_13
if-eqz v2, :cond_13
if-eqz v1, :cond_13
new-instance v0, Lcom/twidroid/net/a/a/c;
invoke-direct {v0, v3, v2, v1}, Lcom/twidroid/net/a/a/c;-><init>(Lcom/facebook/a/e;Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/twidroid/net/a/a/c;->g:Lcom/twidroid/net/a/a/c;
goto :goto_13
.end method
.method public static c(Landroid/content/Context;)V
.registers 3
const-string v0, "facebook-session"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const/4 v0, 0x0
sput-object v0, Lcom/twidroid/net/a/a/c;->g:Lcom/twidroid/net/a/a/c;
return-void
.end method
.method public static d()Lcom/facebook/a/e;
.registers 2
sget-object v0, Lcom/twidroid/net/a/a/c;->h:Lcom/facebook/a/e;
const/4 v1, 0x0
sput-object v1, Lcom/twidroid/net/a/a/c;->h:Lcom/facebook/a/e;
return-object v0
.end method
.method public a()Lcom/facebook/a/e;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/a/c;->i:Lcom/facebook/a/e;
return-object v0
.end method
.method public a(Landroid/content/Context;)Z
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
const-string v1, "facebook-session"
invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "access_token"
iget-object v3, p0, Lcom/twidroid/net/a/a/c;->i:Lcom/facebook/a/e;
invoke-virtual {v3}, Lcom/facebook/a/e;->d()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v2, "expires_in"
iget-object v3, p0, Lcom/twidroid/net/a/a/c;->i:Lcom/facebook/a/e;
invoke-virtual {v3}, Lcom/facebook/a/e;->e()J
move-result-wide v3
invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v2, "uid"
iget-object v3, p0, Lcom/twidroid/net/a/a/c;->j:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v2, "name"
iget-object v3, p0, Lcom/twidroid/net/a/a/c;->k:Ljava/lang/String;
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v2, "app_id"
iget-object v3, p0, Lcom/twidroid/net/a/a/c;->i:Lcom/facebook/a/e;
invoke-virtual {v3}, Lcom/facebook/a/e;->g()Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v1
if-eqz v1, :cond_3
sput-object p0, Lcom/twidroid/net/a/a/c;->g:Lcom/twidroid/net/a/a/c;
const/4 v0, 0x1
goto :goto_3
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/a/c;->j:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/a/a/c;->k:Ljava/lang/String;
return-object v0
.end method