.class  Lcom/twidroid/activity/UberSocialBaseActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/twidroid/activity/UberSocialBaseActivity;
.method constructor <init>(Lcom/twidroid/activity/UberSocialBaseActivity;I)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$7;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iput p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity$7;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$7;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z
iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity$7;->b:Lcom/twidroid/activity/UberSocialBaseActivity;
iget v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity$7;->a:I
invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
return-void
.end method