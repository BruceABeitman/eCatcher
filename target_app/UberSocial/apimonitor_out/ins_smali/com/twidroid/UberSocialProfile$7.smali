.class  Lcom/twidroid/UberSocialProfile$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Z
.field final synthetic b:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;Z)V
.registers 3
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$7;->b:Lcom/twidroid/UberSocialProfile;
iput-boolean p2, p0, Lcom/twidroid/UberSocialProfile$7;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-boolean v0, p0, Lcom/twidroid/UberSocialProfile$7;->a:Z
if-eqz v0, :cond_e
new-instance v0, Lcom/twidroid/UberSocialProfile$7$1;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$7;->b:Lcom/twidroid/UberSocialProfile;
invoke-direct {v0, p0, v1}, Lcom/twidroid/UberSocialProfile$7$1;-><init>(Lcom/twidroid/UberSocialProfile$7;Landroid/app/Activity;)V
invoke-virtual {v0}, Lcom/twidroid/UberSocialProfile$7$1;->show()V
:cond_e
return-void
.end method