.class  Lcom/twidroid/UberSocialProfile$10$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/CharSequence;
.field final synthetic b:Lcom/twidroid/UberSocialProfile$10;
.method constructor <init>(Lcom/twidroid/UberSocialProfile$10;Ljava/lang/CharSequence;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/UberSocialProfile$10$1;->b:Lcom/twidroid/UberSocialProfile$10;
iput-object p2, p0, Lcom/twidroid/UberSocialProfile$10$1;->a:Ljava/lang/CharSequence;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10$1;->b:Lcom/twidroid/UberSocialProfile$10;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialProfile;->e(Z)V
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10$1;->a:Ljava/lang/CharSequence;
const-string v1, "LOCATION_DISABLED"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
:try_start_12
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10$1;->b:Lcom/twidroid/UberSocialProfile$10;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
invoke-static {v0}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1e
return-void
:catch_1e
move-exception v0
const-string v1, "com.twidroid.activity.UberSocialProfile"
const-string v2, "error showing location settings dialog"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1d
:cond_27
iget-object v0, p0, Lcom/twidroid/UberSocialProfile$10$1;->b:Lcom/twidroid/UberSocialProfile$10;
iget-object v0, v0, Lcom/twidroid/UberSocialProfile$10;->a:Lcom/twidroid/UberSocialProfile;
iget-object v1, p0, Lcom/twidroid/UberSocialProfile$10$1;->a:Ljava/lang/CharSequence;
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_1d
.end method