.class  Lcom/twidroid/activity/x;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field  a:Landroid/app/ProgressDialog;
.field final synthetic b:Lcom/twidroid/activity/UberSocialAccount;
.method private constructor <init>(Lcom/twidroid/activity/UberSocialAccount;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/activity/UberSocialAccount;Lcom/twidroid/activity/UberSocialAccount$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/x;-><init>(Lcom/twidroid/activity/UberSocialAccount;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
.registers 8
const/4 v0, 0x0
:try_start_1
new-instance v1, Lcom/twidroid/net/a/c/c;
iget-object v2, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
new-instance v3, Lcom/twidroid/net/oauth/a;
iget-object v4, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
invoke-virtual {v4}, Lcom/twidroid/activity/UberSocialAccount;->getApplicationContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v3, v4}, Lcom/twidroid/net/oauth/a;-><init>(Landroid/content/Context;)V
iget-object v4, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v4, v4, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/d/v;->al()Z
move-result v4
iget-object v5, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v5, v5, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v5}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v5
invoke-virtual {v5}, Lcom/twidroid/d/v;->am()Z
move-result v5
invoke-direct {v1, v2, v3, v4, v5}, Lcom/twidroid/net/a/c/c;-><init>(Lcom/twidroid/model/twitter/c;Lcom/ubermedia/net/b/c;ZZ)V
invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->p()Z
move-result v2
if-eqz v2, :cond_4e
iget-object v2, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v2, v2, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/User;->k()Z
move-result v1
invoke-virtual {v2, v1}, Lcom/twidroid/model/twitter/c;->a(Z)V
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_4f
:try_start_4a
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v1, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
:goto_4e
:cond_4e
return-object v0
:catch_4f
move-exception v1
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/c;->a(Z)V
:try_end_58
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_58} :catch_59
goto :goto_4e
:catch_59
move-exception v1
goto :goto_4e
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/x;->a([Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
const v2, 0x7f0c001c
invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialAccount;->d(Ljava/lang/String;)V
return-void
.end method
.method protected a(Lcom/twidroid/model/twitter/c;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccount;->n()V
if-eqz p1, :cond_64
sget-wide v0, Lcom/twidroid/net/a/c/c;->g:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_22
iget-object v0, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->f(Lcom/twidroid/activity/UberSocialAccount;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
sget-wide v2, Lcom/twidroid/net/a/c/c;->g:J
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;J)V
:cond_22
iget-object v0, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->ae()V
iget-object v0, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
invoke-static {v1}, Lcom/twidroid/activity/UberSocialAccount;->f(Lcom/twidroid/activity/UberSocialAccount;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->i(Landroid/database/sqlite/SQLiteDatabase;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "activate/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccount;->finish()V
:goto_63
return-void
:cond_64
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
const-class v2, Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/twidroid/activity/x;->b:Lcom/twidroid/activity/UberSocialAccount;
const/16 v2, 0x3e7
invoke-virtual {v1, v0, v2}, Lcom/twidroid/activity/UberSocialAccount;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_63
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/x;->a(Lcom/twidroid/model/twitter/c;)V
return-void
.end method