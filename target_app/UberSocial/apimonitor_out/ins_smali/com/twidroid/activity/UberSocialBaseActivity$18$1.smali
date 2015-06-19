.class  Lcom/twidroid/activity/UberSocialBaseActivity$18$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity$18;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity$18;I)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$18;
iput p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$18;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;->a:I
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v1
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$18;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->e:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$18;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->b:Ljava/lang/String;
const-string v3, "@"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$18;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->b:Ljava/lang/String;
const/4 v3, 0x1
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_33
const/4 v3, 0x0
invoke-virtual {v2, v0, v3, v1}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;ZLcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/User;
:goto_37
return-void
:cond_38
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$18$1;->b:Lcom/twidroid/activity/UberSocialBaseActivity$18;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialBaseActivity$18;->b:Ljava/lang/String;
:try_end_3c
.catch Lcom/ubermedia/net/a/a/a; {:try_start_0 .. :try_end_3c} :catch_3d
goto :goto_33
:catch_3d
move-exception v0
const-string v1, "UberSocialBaseActivity"
const-string v2, "can\'t mute/unmute user"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
goto :goto_37
.end method