.class  Lcom/twidroid/UberSocialProfile$12;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$12;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$12;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$12;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
iget-object v1, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$12;->a:Lcom/twidroid/UberSocialProfile;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile;->o:Landroid/view/MenuItem;
const v1, 0x7f0c030e
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$12;->a:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/twidroid/UberSocialProfile;->v:Z
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$12;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/UberSocialProfile;)V
return-void
.end method