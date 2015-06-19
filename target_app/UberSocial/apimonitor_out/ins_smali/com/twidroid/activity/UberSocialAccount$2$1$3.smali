.class  Lcom/twidroid/activity/UberSocialAccount$2$1$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount$2$1;
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount$2$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$2$1$3;->a:Lcom/twidroid/activity/UberSocialAccount$2$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount$2$1$3;->a:Lcom/twidroid/activity/UberSocialAccount$2$1;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2$1;->b:Lcom/twidroid/activity/UberSocialAccount$2;
iget-object v0, v0, Lcom/twidroid/activity/UberSocialAccount$2;->a:Lcom/twidroid/activity/UberSocialAccount;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialAccount;->n()V
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
goto :goto_9
.end method