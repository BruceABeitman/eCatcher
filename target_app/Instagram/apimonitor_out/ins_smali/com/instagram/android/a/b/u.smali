.class public final Lcom/instagram/android/a/b/u;
.super Ljava/lang/Object;
.source "PendingMediaRowViewBinder.java"
.implements Lcom/instagram/creation/b/a/c;
.field  a:Lcom/instagram/creation/b/a/b;
.field  b:Landroid/widget/ImageView;
.field  c:Landroid/widget/ImageView;
.field  d:Landroid/view/View;
.field  e:Landroid/view/View;
.field  f:Landroid/widget/ProgressBar;
.field  g:Landroid/widget/TextView;
.field  h:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
.field  i:Landroid/view/View;
.field  j:Landroid/view/View;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/b;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/a/b/u;->f:Landroid/widget/ProgressBar;
new-instance v1, Lcom/instagram/android/a/b/v;
invoke-direct {v1, p0, p1}, Lcom/instagram/android/a/b/v;-><init>(Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z
return-void
.end method