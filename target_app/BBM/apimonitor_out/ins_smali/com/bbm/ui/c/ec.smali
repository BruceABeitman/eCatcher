.class final Lcom/bbm/ui/c/ec;
.super Ljava/lang/Object;
.source "MyChannelsFragment.java"
.implements Lcom/bbm/ui/cx;
.field final synthetic a:Lcom/bbm/ui/c/du;
.method constructor <init>(Lcom/bbm/ui/c/du;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/ec;->a:Lcom/bbm/ui/c/du;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
iget-object v0, p0, Lcom/bbm/ui/c/ec;->a:Lcom/bbm/ui/c/du;
invoke-static {v0}, Lcom/bbm/ui/c/du;->b(Lcom/bbm/ui/c/du;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300d1
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v3
const v0, 0x7f0a0362
invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
const v1, 0x7f0a011b
invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/widget/FrameLayout$LayoutParams;
iget-object v4, p0, Lcom/bbm/ui/c/ec;->a:Lcom/bbm/ui/c/du;
invoke-static {v4}, Lcom/bbm/ui/c/du;->d(Lcom/bbm/ui/c/du;)I
move-result v4
iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/widget/FrameLayout$LayoutParams;
iget-object v4, p0, Lcom/bbm/ui/c/ec;->a:Lcom/bbm/ui/c/du;
invoke-static {v4}, Lcom/bbm/ui/c/du;->d(Lcom/bbm/ui/c/du;)I
move-result v4
iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I
invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/FrameLayout$LayoutParams;
iget-object v2, p0, Lcom/bbm/ui/c/ec;->a:Lcom/bbm/ui/c/du;
invoke-static {v2}, Lcom/bbm/ui/c/du;->d(Lcom/bbm/ui/c/du;)I
move-result v2
iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I
iget-object v1, p0, Lcom/bbm/ui/c/ec;->a:Lcom/bbm/ui/c/du;
invoke-static {v1}, Lcom/bbm/ui/c/du;->e(Lcom/bbm/ui/c/du;)Lcom/bbm/util/b/g;
move-result-object v1
iget-object v1, v1, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
const-string v2, "com.bbm.ui.fragments.ChannelsDefaultAvatarBitmap"
invoke-virtual {v1, v2}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v1
if-eqz v1, :cond_61
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V
:cond_61
return-object v3
.end method