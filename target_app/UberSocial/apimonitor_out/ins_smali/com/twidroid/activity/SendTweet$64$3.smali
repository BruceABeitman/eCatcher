.class  Lcom/twidroid/activity/SendTweet$64$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/CharSequence;
.field final synthetic b:Lcom/twidroid/activity/SendTweet$64;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$64;Ljava/lang/CharSequence;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$64$3;->b:Lcom/twidroid/activity/SendTweet$64;
iput-object p2, p0, Lcom/twidroid/activity/SendTweet$64$3;->a:Ljava/lang/CharSequence;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64$3;->b:Lcom/twidroid/activity/SendTweet$64;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/twidroid/activity/SendTweet;->Q:Z
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64$3;->b:Lcom/twidroid/activity/SendTweet$64;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->z(Lcom/twidroid/activity/SendTweet;)Landroid/widget/ImageButton;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$64$3;->b:Lcom/twidroid/activity/SendTweet$64;
iget-object v1, v1, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v1}, Lcom/twidroid/activity/SendTweet;->u(Lcom/twidroid/activity/SendTweet;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64$3;->b:Lcom/twidroid/activity/SendTweet$64;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->v(Lcom/twidroid/activity/SendTweet;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/SendTweet$64$3;->a:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64$3;->a:Ljava/lang/CharSequence;
const-string v1, "LOCATION_DISABLED"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3c
:try_start_31
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$64$3;->b:Lcom/twidroid/activity/SendTweet$64;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$64;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
:try_end_3c
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_3d
:cond_3c
:goto_3c
return-void
:catch_3d
move-exception v0
const-string v1, "com.twidroid.SendTweet"
const-string v2, "error showing location settings dialog"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_3c
.end method