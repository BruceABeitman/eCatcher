.class public final Lcom/instagram/android/directshare/widget/k;
.super Ljava/lang/Object;
.source "DirectShareUserRowViewBinder.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/instagram/android/directshare/widget/l;Lcom/instagram/user/c/a;Lcom/instagram/creation/b/a/b;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/instagram/user/c/a;->B()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v0, :cond_43
if-eqz v2, :cond_43
const/4 v0, 0x1
:goto_1f
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_28
iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->c:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->d:Landroid/widget/CheckBox;
invoke-virtual {p2}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/creation/b/a/g;->a(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
return-void
:cond_43
move v0, v1
goto :goto_1f
:cond_45
if-eqz v2, :cond_56
iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->B()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_50
iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_28
:cond_56
iget-object v0, p0, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_50
.end method
.method public final a(Landroid/content/Context;)Landroid/view/View;
.registers 5
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->directshare_row_user:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/directshare/widget/l;
invoke-direct {v2, p0}, Lcom/instagram/android/directshare/widget/l;-><init>(Lcom/instagram/android/directshare/widget/k;)V
sget v0, Lcom/facebook/av;->row_user_imageview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;
iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->a:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
sget v0, Lcom/facebook/av;->row_user_fullname:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->b:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_user_username:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->c:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->recipient_toggle:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->d:Landroid/widget/CheckBox;
sget v0, Lcom/facebook/av;->user_row_background:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/instagram/android/directshare/widget/l;->e:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method