.class  Lcom/twidroid/UberSocialProfile$29;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$29;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$29;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->d(Lcom/twidroid/UberSocialProfile;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f0c01e6
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$29;->a:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/UberSocialProfile;Z)Z
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$29;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->b(Lcom/twidroid/UberSocialProfile;)V
return-void
.end method