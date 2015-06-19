.class  Lcom/twidroid/UberSocialProfile$13$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile$13;
.method constructor <init>(Lcom/twidroid/UberSocialProfile$13;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$13$3;->a:Lcom/twidroid/UberSocialProfile$13;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13$3;->a:Lcom/twidroid/UberSocialProfile$13;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->W(Lcom/twidroid/UberSocialProfile;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/twidroid/UberSocialProfile$13$3$1;
invoke-direct {v1, p0}, Lcom/twidroid/UberSocialProfile$13$3$1;-><init>(Lcom/twidroid/UberSocialProfile$13$3;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method