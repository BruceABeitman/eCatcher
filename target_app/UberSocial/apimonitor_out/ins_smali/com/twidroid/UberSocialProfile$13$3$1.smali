.class  Lcom/twidroid/UberSocialProfile$13$3$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile$13$3;
.method constructor <init>(Lcom/twidroid/UberSocialProfile$13$3;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$13$3$1;->a:Lcom/twidroid/UberSocialProfile$13$3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13$3$1;->a:Lcom/twidroid/UberSocialProfile$13$3;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13$3;->a:Lcom/twidroid/UberSocialProfile$13;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$13$3$1;->a:Lcom/twidroid/UberSocialProfile$13$3;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile$13$3;->a:Lcom/twidroid/UberSocialProfile$13;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->n:Ljava/lang/String;
iput-object v1, v0, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13$3$1;->a:Lcom/twidroid/UberSocialProfile$13$3;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13$3;->a:Lcom/twidroid/UberSocialProfile$13;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->d(Z)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13$3$1;->a:Lcom/twidroid/UberSocialProfile$13$3;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13$3;->a:Lcom/twidroid/UberSocialProfile$13;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Z)V
return-void
.end method