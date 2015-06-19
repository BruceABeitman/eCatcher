.class  Lcom/twidroid/UberSocialProfile$22;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$22;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$22;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$22;->a:Lcom/twidroid/UberSocialProfile;
const v2, 0x7f0c0178
invoke-virtual {v1, v2}, Lcom/twidroid/UberSocialProfile;->e(I)Ljava/lang/CharSequence;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method