.class  Lcom/twidroid/activity/UberSocialBaseActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:I
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/twidroid/activity/aa;
.field final synthetic d:Ljava/lang/String;
.field final synthetic e:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;ILjava/lang/String;Lcom/twidroid/activity/aa;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iput p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->a:I
iput-object p3, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->c:Lcom/twidroid/activity/aa;
iput-object p5, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialBaseActivity$18; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
const/4 v5, 0x0
iget v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->a:I
if-gez v0, :cond_d0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->j(Ljava/lang/String;)I
move-result v0
:goto_14
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->b:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;I)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
new-instance v2, Landroid/content/Intent;
sget-object v3, Lcom/twidroid/fragments/e/g;->H:Ljava/lang/String;
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->sendBroadcast(Landroid/content/Intent;)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iput-boolean v5, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->ae:Z
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->ad:Landroid/view/MenuItem;
if-eqz v1, :cond_41
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, v1, Lcom/twidroid/activity/UberSocialBaseActivity;->ad:Landroid/view/MenuItem;
const v2, 0x7f0c01e6
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
:cond_41
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-virtual {v1, v5}, Lcom/twidroid/activity/UberSocialBaseActivity;->d(Z)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->c:Lcom/twidroid/activity/aa;
if-eqz v1, :cond_4f
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->c:Lcom/twidroid/activity/aa;
invoke-interface {v1}, Lcom/twidroid/activity/aa;->a()V
:cond_4f
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->b:Ljava/lang/String;
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_66
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;
invoke-direct {v2, p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity$18;I)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
:cond_66
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/twidroid/b/a/b;->a(Z)I
move-result v1
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v6}, Lcom/twidroid/b/a/b;->a(Z)I
move-result v2
const-string v3, "Unmute"
const/16 v0, 0xa
new-array v4, v0, [Ljava/lang/Object;
const-string v0, "source"
aput-object v0, v4, v5
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->d:Ljava/lang/String;
aput-object v0, v4, v6
const/4 v0, 0x2
const-string v5, "type"
aput-object v5, v4, v0
const/4 v5, 0x3
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->b:Ljava/lang/String;
const-string v6, "@"
invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d4
const-string v0, "user"
:goto_9e
aput-object v0, v4, v5
const/4 v0, 0x4
const-string v5, "total mutes"
aput-object v5, v4, v0
const/4 v0, 0x5
add-int v5, v2, v1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v0
const/4 v0, 0x6
const-string v5, "total hashtags"
aput-object v5, v4, v0
const/4 v0, 0x7
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v4, v0
const/16 v0, 0x8
const-string v2, "total users"
aput-object v2, v4, v0
const/16 v0, 0x9
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v4, v0
invoke-static {v4}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v0
invoke-static {v3, v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialBaseActivity$18; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_d0
iget v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->a:I
goto/16 :goto_14
:cond_d4
const-string v0, "hashtag"
goto :goto_9e
.end method