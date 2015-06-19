.class  Lcom/twidroid/UberSocialProfile$17$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile$17;
.method constructor <init>(Lcom/twidroid/UberSocialProfile$17;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$17$1;->a:Lcom/twidroid/UberSocialProfile$17;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$17$1;->a:Lcom/twidroid/UberSocialProfile$17;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile;->n()V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$17$1;->a:Lcom/twidroid/UberSocialProfile$17;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$17;->a:Lcom/twidroid/UberSocialProfile;
const/16 v1, 0x2c3
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
return-void
.end method