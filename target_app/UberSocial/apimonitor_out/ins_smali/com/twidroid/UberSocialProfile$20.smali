.class  Lcom/twidroid/UberSocialProfile$20;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/UberSocialProfile;
.method constructor <init>(Lcom/twidroid/UberSocialProfile;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$20;->a:Lcom/twidroid/UberSocialProfile;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$20;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/UberSocialProfile;->ao(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/ui/widgets/CachedImageView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$20;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v1}, Lcom/twidroid/UberSocialProfile;->an(Lcom/twidroid/UberSocialProfile;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->S()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setBackgroundColor(I)V
return-void
.end method