.class final Lcom/instagram/android/directshare/c/o;
.super Ljava/lang/Object;
.source "InboxRowViewBinder.java"
.implements Lcom/instagram/common/ui/widget/imageview/f;
.field final synthetic a:Lcom/instagram/android/directshare/c/q;
.method constructor <init>(Lcom/instagram/android/directshare/c/q;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/c/o;->a:Lcom/instagram/android/directshare/c/q;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/directshare/c/o;->a:Lcom/instagram/android/directshare/c/q;
iget-object v1, v0, Lcom/instagram/android/directshare/c/q;->h:Landroid/widget/ImageView;
if-nez p1, :cond_14
const/16 v0, 0x8
:goto_8
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/o;->a:Lcom/instagram/android/directshare/c/q;
iget-object v0, v0, Lcom/instagram/android/directshare/c/q;->c:Lcom/instagram/common/ui/widget/imageview/IgImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setOnLoadListener(Lcom/instagram/common/ui/widget/imageview/f;)V
return-void
:cond_14
const/4 v0, 0x0
goto :goto_8
.end method