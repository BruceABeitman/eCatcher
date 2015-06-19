.class  Lcom/twidroid/UberSocialProfile$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$5;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$5;->a:Lcom/twidroid/UberSocialProfile;
const v1, 0x7f090185
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialProfile;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const v1, 0x7f0c0132
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
return-void
.end method