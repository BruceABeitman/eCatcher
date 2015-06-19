.class  Lcom/twidroid/fragments/f$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/l;
.field final synthetic a:Landroid/widget/ImageView;
.field final synthetic b:Lcom/twidroid/fragments/f;
.method constructor <init>(Lcom/twidroid/fragments/f;Landroid/widget/ImageView;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/f$9;->b:Lcom/twidroid/fragments/f;
iput-object p2, p0, Lcom/twidroid/fragments/f$9;->a:Landroid/widget/ImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/fragments/f$9;->b:Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/fragments/f$9;->b:Lcom/twidroid/fragments/f;
invoke-virtual {v0}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
new-instance v1, Lcom/twidroid/fragments/f$9$1;
invoke-direct {v1, p0, p1}, Lcom/twidroid/fragments/f$9$1;-><init>(Lcom/twidroid/fragments/f$9;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_16
return-void
.end method