.class final Lcom/facebook/v;
.super Lcom/facebook/j;
.source "AuthorizationClient.java"
.field final synthetic b:Lcom/facebook/c;
.field private transient c:Lcom/facebook/widget/h;
.method constructor <init>(Lcom/facebook/c;)V
.registers 2
iput-object p1, p0, Lcom/facebook/v;->b:Lcom/facebook/c;
invoke-direct {p0, p1}, Lcom/facebook/j;-><init>(Lcom/facebook/c;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/facebook/v;->b:Lcom/facebook/c;
invoke-virtual {v0}, Lcom/facebook/c;->c()Lcom/facebook/u;
move-result-object v0
invoke-interface {v0}, Lcom/facebook/u;->a()Landroid/app/Activity;
move-result-object v0
const-string v1, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "TOKEN"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
if-nez v0, :cond_23
invoke-static {}, Lcom/facebook/g/t;->a()V
:cond_23
return-void
.end method
.method private d()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/facebook/v;->b:Lcom/facebook/c;
invoke-virtual {v0}, Lcom/facebook/c;->c()Lcom/facebook/u;
move-result-object v0
invoke-interface {v0}, Lcom/facebook/u;->a()Landroid/app/Activity;
move-result-object v0
const-string v1, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "TOKEN"
const-string v2, ""
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final a(Lcom/facebook/k;Landroid/os/Bundle;Lcom/facebook/z;)V
.registers 7
if-eqz p2, :cond_28
invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;
move-result-object v0
sget-object v1, Lcom/facebook/b;->e:Lcom/facebook/b;
invoke-static {v0, p2, v1}, Lcom/facebook/a;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;
move-result-object v1
invoke-static {v1}, Lcom/facebook/s;->a(Lcom/facebook/a;)Lcom/facebook/s;
move-result-object v0
iget-object v2, p0, Lcom/facebook/v;->b:Lcom/facebook/c;
iget-object v2, v2, Lcom/facebook/c;->c:Landroid/content/Context;
invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
move-result-object v2
invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
invoke-virtual {v1}, Lcom/facebook/a;->a()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lcom/facebook/v;->a(Ljava/lang/String;)V
:goto_22
iget-object v1, p0, Lcom/facebook/v;->b:Lcom/facebook/c;
invoke-virtual {v1, v0}, Lcom/facebook/c;->a(Lcom/facebook/s;)V
return-void
:cond_28
instance-of v0, p3, Lcom/facebook/ab;
if-eqz v0, :cond_33
const-string v0, "User canceled log in."
invoke-static {v0}, Lcom/facebook/s;->a(Ljava/lang/String;)Lcom/facebook/s;
move-result-object v0
goto :goto_22
:cond_33
invoke-virtual {p3}, Lcom/facebook/z;->getMessage()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/facebook/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;
move-result-object v0
goto :goto_22
.end method
.method final a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method final a(Lcom/facebook/k;)Z
.registers 7
invoke-virtual {p1}, Lcom/facebook/k;->f()Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;
move-result-object v2
invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/util/Collection;)Z
move-result v2
if-nez v2, :cond_22
const-string v2, "scope"
const-string v3, ","
invoke-virtual {p1}, Lcom/facebook/k;->b()Ljava/util/List;
move-result-object v4
invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_22
invoke-virtual {p1}, Lcom/facebook/k;->h()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_62
invoke-direct {p0}, Lcom/facebook/v;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_62
const-string v3, "access_token"
invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_3b
new-instance v2, Lcom/facebook/w;
invoke-direct {v2, p0, p1}, Lcom/facebook/w;-><init>(Lcom/facebook/v;Lcom/facebook/k;)V
new-instance v3, Lcom/facebook/i;
iget-object v4, p0, Lcom/facebook/v;->b:Lcom/facebook/c;
invoke-virtual {v4}, Lcom/facebook/c;->c()Lcom/facebook/u;
move-result-object v4
invoke-interface {v4}, Lcom/facebook/u;->a()Landroid/app/Activity;
move-result-object v4
invoke-direct {v3, v4, v0, v1}, Lcom/facebook/i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
invoke-virtual {v3, v2}, Lcom/facebook/i;->a(Lcom/facebook/widget/o;)Lcom/facebook/widget/m;
move-result-object v0
check-cast v0, Lcom/facebook/widget/l;
invoke-virtual {v0}, Lcom/facebook/widget/l;->a()Lcom/facebook/widget/h;
move-result-object v0
iput-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;
iget-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->show()V
const/4 v0, 0x1
return v0
:cond_62
iget-object v2, p0, Lcom/facebook/v;->b:Lcom/facebook/c;
iget-object v2, v2, Lcom/facebook/c;->c:Landroid/content/Context;
invoke-static {v2}, Lcom/facebook/g/t;->b(Landroid/content/Context;)V
goto :goto_3b
.end method
.method final b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method final c()V
.registers 2
iget-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/v;->c:Lcom/facebook/widget/h;
:cond_c
return-void
.end method