.class  Lcom/twidroid/UberSocialProfile$13$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile$13;
.method constructor <init>(Lcom/twidroid/UberSocialProfile$13;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$13$4;->a:Lcom/twidroid/UberSocialProfile$13;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13$4;->a:Lcom/twidroid/UberSocialProfile$13;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$13$4;->a:Lcom/twidroid/UberSocialProfile$13;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$13;->c:Lcom/twidroid/UberSocialProfile;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->e(Z)V
return-void
.end method