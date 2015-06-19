.class  Lcom/twidroid/activity/UberSocialBaseActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;I)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$4;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iput p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$4;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$4;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$4;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$4;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const v2, 0x7f0c0027
invoke-virtual {v1, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$4;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iget v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$4;->a:I
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$4;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-virtual {v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->n()V
return-void
.end method