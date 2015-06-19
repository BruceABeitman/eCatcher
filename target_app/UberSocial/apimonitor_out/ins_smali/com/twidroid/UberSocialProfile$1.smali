.class  Lcom/twidroid/UberSocialProfile$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$1;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$1;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$1;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, v1, Lcom/twidroid/UberSocialProfile;->f:Lcom/twidroid/model/twitter/User;
iget-object v1, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$1;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$1;->a:Lcom/twidroid/UberSocialProfile;
iget-object v2, p0, Lcom/twidroid/UberSocialProfile$1;->a:Lcom/twidroid/UberSocialProfile;
iget v2, v2, Lcom/twidroid/UberSocialProfile;->ac:I
invoke-static {v1, v2}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;I)I
move-result v1
iput v1, v0, Lcom/twidroid/UberSocialProfile;->ac:I
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$1;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->a(Lcom/twidroid/UberSocialProfile;)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$1;->a:Lcom/twidroid/UberSocialProfile;
const v1, 0x7f090185
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const v1, 0x7f0c030f
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
return-void
.end method