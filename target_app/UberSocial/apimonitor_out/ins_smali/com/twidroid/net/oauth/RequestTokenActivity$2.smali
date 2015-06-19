.class  Lcom/twidroid/net/oauth/RequestTokenActivity$2;
.super Lcom/ubermedia/net/b/a;
.source "SourceFile"
.field static final synthetic a:Z
.field final synthetic b:Ld/a/e;
.field final synthetic c:Ld/a/d;
.field final synthetic d:Lcom/twidroid/net/oauth/RequestTokenActivity;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;Lcom/twidroid/net/oauth/RequestTokenActivity;Ld/a/e;Ld/a/d;)V
.registers 5
iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iput-object p3, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->b:Ld/a/e;
iput-object p4, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->c:Ld/a/d;
invoke-direct {p0, p2}, Lcom/ubermedia/net/b/a;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method protected bridge synthetic a(Landroid/app/Activity;)Landroid/app/ProgressDialog;
.registers 3
check-cast p1, Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {p0, p1}, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;)Landroid/app/ProgressDialog;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/twidroid/net/oauth/RequestTokenActivity;)Landroid/app/ProgressDialog;
.registers 4
new-instance v0, Landroid/app/ProgressDialog;
invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
const v1, 0x7f0c0210
invoke-virtual {p1, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$2$6;
invoke-direct {v1, p0, p1}, Lcom/twidroid/net/oauth/RequestTokenActivity$2$6;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$2;Lcom/twidroid/net/oauth/RequestTokenActivity;)V
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
return-object v0
.end method
.method protected a()V
.registers 10
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
const/4 v1, 0x0
:try_start_4
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->b:Ld/a/e;
iget-object v2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->c:Ld/a/d;
const-string v3, "https://auth.twidroyd.com/success"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/String;
invoke-interface {v0, v2, v3, v4}, Ld/a/e;->a(Ld/a/d;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
:try_end_10
.catch Ld/a/c/e; {:try_start_4 .. :try_end_10} :catch_4a
.catch Ld/a/c/d; {:try_start_4 .. :try_end_10} :catch_5e
.catch Ld/a/c/c; {:try_start_4 .. :try_end_10} :catch_c9
.catch Ld/a/c/a; {:try_start_4 .. :try_end_10} :catch_ff
move-result-object v0
:try_start_11
:goto_11
iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v1}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "&force_login=true&screen_name="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v2}, Lcom/twidroid/net/oauth/RequestTokenActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_3d
.catch Ld/a/c/d; {:try_start_11 .. :try_end_3d} :catch_140
.catch Ld/a/c/e; {:try_start_11 .. :try_end_3d} :catch_13d
.catch Ld/a/c/c; {:try_start_11 .. :try_end_3d} :catch_13b
.catch Ld/a/c/a; {:try_start_11 .. :try_end_3d} :catch_139
move-result-object v0
:goto_3e
:cond_3e
sget-boolean v1, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a:Z
if-nez v1, :cond_130
if-nez v0, :cond_130
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:catch_4a
move-exception v0
:try_start_4b
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->b()V
iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->b:Ld/a/e;
iget-object v2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->c:Ld/a/d;
const-string v3, "https://auth.twidroyd.com/success"
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/String;
invoke-interface {v0, v2, v3, v4}, Ld/a/e;->a(Ld/a/d;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
:try_end_5c
.catch Ld/a/c/d; {:try_start_4b .. :try_end_5c} :catch_5e
.catch Ld/a/c/e; {:try_start_4b .. :try_end_5c} :catch_93
.catch Ld/a/c/c; {:try_start_4b .. :try_end_5c} :catch_c9
.catch Ld/a/c/a; {:try_start_4b .. :try_end_5c} :catch_ff
move-result-object v0
goto :goto_11
:catch_5e
move-exception v0
move-object v8, v0
move-object v0, v1
move-object v1, v8
:goto_62
invoke-virtual {v1}, Ld/a/c/d;->printStackTrace()V
iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iget-object v1, v1, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-nez v1, :cond_8a
const-string v1, "login_unsuccessful"
new-array v2, v7, [Ljava/lang/Object;
const-string v3, "reason"
aput-object v3, v2, v5
const-string v3, "OAuth Message Signer"
aput-object v3, v2, v6
invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_8a
new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$2$1;
invoke-direct {v1, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$2$1;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$2;)V
invoke-virtual {p0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a(Lcom/ubermedia/net/b/b;)V
goto :goto_3e
:catch_93
move-exception v0
move-object v8, v0
move-object v0, v1
move-object v1, v8
:goto_97
invoke-virtual {v1}, Ld/a/c/e;->printStackTrace()V
iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iget-object v1, v1, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-nez v1, :cond_bf
const-string v1, "login_unsuccessful"
new-array v2, v7, [Ljava/lang/Object;
const-string v3, "reason"
aput-object v3, v2, v5
const-string v3, "OAuth Not Authorized"
aput-object v3, v2, v6
invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_bf
new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$2$2;
invoke-direct {v1, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$2$2;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$2;)V
invoke-virtual {p0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a(Lcom/ubermedia/net/b/b;)V
goto/16 :goto_3e
:catch_c9
move-exception v0
move-object v8, v0
move-object v0, v1
move-object v1, v8
:goto_cd
invoke-virtual {v1}, Ld/a/c/c;->printStackTrace()V
iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iget-object v1, v1, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-nez v1, :cond_f5
const-string v1, "login_unsuccessful"
new-array v2, v7, [Ljava/lang/Object;
const-string v3, "reason"
aput-object v3, v2, v5
const-string v3, "OAuth Expectation Failed"
aput-object v3, v2, v6
invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_f5
new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$2$3;
invoke-direct {v1, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$2$3;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$2;)V
invoke-virtual {p0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a(Lcom/ubermedia/net/b/b;)V
goto/16 :goto_3e
:catch_ff
move-exception v0
move-object v0, v1
:goto_101
iget-object v1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;
iget-object v1, v1, Lcom/twidroid/net/oauth/RequestTokenActivity;->a:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-nez v1, :cond_126
const-string v1, "login_unsuccessful"
new-array v2, v7, [Ljava/lang/Object;
const-string v3, "reason"
aput-object v3, v2, v5
const-string v3, "Network error"
aput-object v3, v2, v6
invoke-static {v2}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v2
invoke-static {v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:cond_126
new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$2$4;
invoke-direct {v1, p0}, Lcom/twidroid/net/oauth/RequestTokenActivity$2$4;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$2;)V
invoke-virtual {p0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a(Lcom/ubermedia/net/b/b;)V
goto/16 :goto_3e
:cond_130
new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$2$5;
invoke-direct {v1, p0, v0}, Lcom/twidroid/net/oauth/RequestTokenActivity$2$5;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$2;Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity$2;->a(Lcom/ubermedia/net/b/b;)V
return-void
:catch_139
move-exception v1
goto :goto_101
:catch_13b
move-exception v1
goto :goto_cd
:catch_13d
move-exception v1
goto/16 :goto_97
:catch_140
move-exception v1
goto/16 :goto_62
.end method