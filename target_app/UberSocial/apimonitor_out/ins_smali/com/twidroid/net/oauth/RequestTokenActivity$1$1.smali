.class  Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;
.super Lcom/ubermedia/net/b/a;
.source "SourceFile"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity$1;Lcom/twidroid/net/oauth/RequestTokenActivity;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iput-object p3, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->a:Ljava/lang/String;
invoke-direct {p0, p2}, Lcom/ubermedia/net/b/a;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method protected bridge synthetic a(Landroid/app/Activity;)Landroid/app/ProgressDialog;
.registers 3
check-cast p1, Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {p0, p1}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;)Landroid/app/ProgressDialog;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/twidroid/net/oauth/RequestTokenActivity;)Landroid/app/ProgressDialog;
.registers 4
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
const v1, 0x7f0c020f
invoke-virtual {p1, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$4;
invoke-direct {v1, p0, p1}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$4;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;Lcom/twidroid/net/oauth/RequestTokenActivity;)V
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
return-object v0
.end method
.method protected a()V
.registers 9
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
:try_start_3
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->b:Ld/a/e;
iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v1, v1, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->c:Ld/a/d;
iget-object v2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->a:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
const-string v3, "oauth_verifier"
invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/String;
invoke-interface {v0, v1, v2, v3}, Ld/a/e;->b(Ld/a/d;Ljava/lang/String;[Ljava/lang/String;)V
:try_end_1d
.catch Ld/a/c/d; {:try_start_3 .. :try_end_1d} :catch_c5
.catch Ld/a/c/e; {:try_start_3 .. :try_end_1d} :catch_f5
.catch Ld/a/c/c; {:try_start_3 .. :try_end_1d} :catch_125
.catch Ld/a/c/a; {:try_start_3 .. :try_end_1d} :catch_156
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->b:Ld/a/e;
invoke-interface {v0}, Ld/a/e;->a()Ld/a/d/a;
move-result-object v2
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
const-string v1, "user_id"
invoke-virtual {v2, v1}, Ld/a/d/a;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v3
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, v3, v4}, Lcom/twidroid/b/a/b;->d(J)Lcom/twidroid/model/twitter/c;
move-result-object v1
if-nez v1, :cond_50
new-instance v1, Lcom/twidroid/model/twitter/c;
invoke-direct {v1}, Lcom/twidroid/model/twitter/c;-><init>()V
invoke-virtual {v1, v3, v4}, Lcom/twidroid/model/twitter/c;->a(J)J
const-string v3, "NO STORED"
invoke-virtual {v1, v3}, Lcom/twidroid/model/twitter/c;->d(Ljava/lang/String;)V
:cond_50
const-string v3, "screen_name"
invoke-virtual {v2, v3}, Ld/a/d/a;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/c;->c(Ljava/lang/String;)V
iget-object v2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v2, v2, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->c:Ld/a/d;
invoke-interface {v2}, Ld/a/d;->b()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v3, v3, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->c:Ld/a/d;
invoke-interface {v3}, Ld/a/d;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/twidroid/model/twitter/c;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_6c
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v2
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
:try_end_7b
.catch Lcom/ubermedia/net/a/a/a; {:try_start_6c .. :try_end_7b} :catch_188
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/twidroid/model/twitter/c;->f(Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/twidroid/model/twitter/User;->k()Z
move-result v2
invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/c;->a(Z)V
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->h()V
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->f()Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ne v0, v6, :cond_bc
const-string v0, "login_successful"
new-array v2, v5, [Ljava/lang/Object;
invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
invoke-static {v0, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_bc
new-instance v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;
invoke-direct {v0, p0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$3;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;Lcom/twidroid/model/twitter/c;)V
invoke-virtual {p0, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->a(Lcom/ubermedia/net/b/b;)V
:goto_c4
return-void
:catch_c5
move-exception v0
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_ed
const-string v0, "login_unsuccessful"
new-array v1, v7, [Ljava/lang/Object;
const-string v2, "reason"
aput-object v2, v1, v5
const-string v2, "OAuth Message Signer"
aput-object v2, v1, v6
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_ed
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->finish()V
goto :goto_c4
:catch_f5
move-exception v0
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_11d
const-string v0, "login_unsuccessful"
new-array v1, v7, [Ljava/lang/Object;
const-string v2, "reason"
aput-object v2, v1, v5
const-string v2, "OAuth Not Authorized"
aput-object v2, v1, v6
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_11d
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->finish()V
goto :goto_c4
:catch_125
move-exception v0
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_14d
const-string v0, "login_unsuccessful"
new-array v1, v7, [Ljava/lang/Object;
const-string v2, "reason"
aput-object v2, v1, v5
const-string v2, "OAuth Expectation Failed"
aput-object v2, v1, v6
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_14d
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->finish()V
goto/16 :goto_c4
:catch_156
move-exception v0
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->b:Lcom/twidroid/net/oauth/RequestTokenActivity$1;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iget-object v0, v0, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_17e
const-string v0, "login_unsuccessful"
new-array v1, v7, [Ljava/lang/Object;
const-string v2, "reason"
aput-object v2, v1, v5
const-string v2, "Network error"
aput-object v2, v1, v6
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_17e
new-instance v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$1;
invoke-direct {v0, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$1;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;)V
invoke-virtual {p0, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->a(Lcom/ubermedia/net/b/b;)V
goto/16 :goto_c4
:catch_188
move-exception v1
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_1aa
const-string v0, "login_unsuccessful"
new-array v1, v7, [Ljava/lang/Object;
const-string v2, "reason"
aput-object v2, v1, v5
const-string v2, "Network error"
aput-object v2, v1, v6
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_1aa
new-instance v0, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$2;
invoke-direct {v0, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1$2;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;)V
invoke-virtual {p0, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;->a(Lcom/ubermedia/net/b/b;)V
goto/16 :goto_c4
.end method