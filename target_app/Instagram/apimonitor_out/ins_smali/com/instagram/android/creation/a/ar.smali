.class public final Lcom/instagram/android/creation/a/ar;
.super Lcom/instagram/base/a/b;
.source "ShareLaterFragment.java"
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/android/widget/v;
.field private a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
.field private b:Landroid/os/Handler;
.field private c:Lcom/instagram/sharelater/ShareLaterMedia;
.field private d:Lcom/instagram/android/widget/s;
.field private e:Landroid/view/View;
.field private f:I
.field private g:Lcom/facebook/b/e;
.field private h:Ljava/util/List;
.field private i:Lcom/instagram/api/j/a;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->b:Landroid/os/Handler;
new-instance v0, Lcom/instagram/android/creation/a/au;
invoke-direct {v0, p0}, Lcom/instagram/android/creation/a/au;-><init>(Lcom/instagram/android/creation/a/ar;)V
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->i:Lcom/instagram/api/j/a;
return-void
.end method
.method private a(I)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;
if-eqz v0, :cond_19
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/instagram/android/activity/MainTabActivity;
invoke-virtual {v0, p1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V
:cond_19
return-void
.end method
.method static synthetic a(Lcom/instagram/android/creation/a/ar;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->c()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/android/widget/IgAutoCompleteTextView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
return-object v0
.end method
.method private b()Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/x;
iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-virtual {v0, v2}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;)Z
move-result v0
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method static synthetic c(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/sharelater/ShareLaterMedia;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
return-object v0
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;
iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V
invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->d()V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/creation/a/ar;)Lcom/instagram/api/j/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->i:Lcom/instagram/api/j/a;
return-object v0
.end method
.method private d()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->e:Landroid/view/View;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->e:Landroid/view/View;
invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->b()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
:cond_d
return-void
.end method
.method static synthetic e(Lcom/instagram/android/creation/a/ar;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->b:Landroid/os/Handler;
return-object v0
.end method
.method public final E()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I
move-result v0
iput v0, p0, Lcom/instagram/android/creation/a/ar;->f:I
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
return-void
.end method
.method public final F()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
iget v1, p0, Lcom/instagram/android/creation/a/ar;->f:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->e:Landroid/view/View;
return-void
.end method
.method public final G()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->G()V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;
move-result-object v0
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;
if-eqz v0, :cond_1d
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/ar;->a(I)V
:cond_1d
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v4, 0x0
sget v0, Lcom/facebook/aw;->share_later:I
invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->metadata_imageview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;
iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-virtual {v2}, Lcom/instagram/sharelater/ShareLaterMedia;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/common/ui/widget/imageview/ConstrainedImageView;->setUrl(Ljava/lang/String;)V
sget v0, Lcom/facebook/av;->caption_text_view:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/IgAutoCompleteTextView;
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-virtual {v2}, Lcom/instagram/sharelater/ShareLaterMedia;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
new-instance v2, Lcom/instagram/android/a/a;
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v3
invoke-direct {v2, v3}, Lcom/instagram/android/a/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IgAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-virtual {v0}, Lcom/instagram/sharelater/ShareLaterMedia;->d()Z
move-result v0
if-eqz v0, :cond_4c
sget v0, Lcom/facebook/av;->caption_video_overlay:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
:cond_4c
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->n()Landroid/content/Context;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-static {v0, v2}, Lcom/instagram/android/widget/x;->a(Landroid/content/Context;Lcom/instagram/model/a/b;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->h:Ljava/util/List;
new-instance v0, Lcom/instagram/android/widget/s;
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->n()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/creation/a/ar;->h:Ljava/util/List;
invoke-direct {v0, v2, v3}, Lcom/instagram/android/widget/s;-><init>(Landroid/content/Context;Ljava/util/List;)V
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;
invoke-virtual {v0, p0}, Lcom/instagram/android/widget/s;->setOnSharingToggleListener(Lcom/instagram/android/widget/v;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->o()Landroid/content/res/Resources;
move-result-object v0
sget v2, Lcom/facebook/at;->row_padding:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;
invoke-virtual {v2, v0, v4, v0, v0}, Lcom/instagram/android/widget/s;->setPadding(IIII)V
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;
iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-virtual {v0, v2}, Lcom/instagram/android/widget/s;->a(Lcom/instagram/model/a/b;)V
sget v0, Lcom/facebook/av;->share_later_content:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iget-object v2, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
return-object v1
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->g:Lcom/facebook/b/e;
iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-static {p1, p2, p3, v0, v1}, Lcom/instagram/android/widget/r;->a(IILandroid/content/Intent;Lcom/facebook/b/e;Lcom/instagram/model/a/b;)V
invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->c()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ar;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "ShareLaterMedia.SHARE_LATER_MEDIA"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/instagram/sharelater/ShareLaterMedia;
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
const/16 v0, 0x8
invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/ar;->a(I)V
new-instance v0, Lcom/instagram/android/creation/a/as;
iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
invoke-direct {v0, p0, p0, v1}, Lcom/instagram/android/creation/a/as;-><init>(Lcom/instagram/android/creation/a/ar;Landroid/support/v4/app/Fragment;Lcom/instagram/model/a/b;)V
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->g:Lcom/facebook/b/e;
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
sget v0, Lcom/facebook/az;->share:I
new-instance v1, Lcom/instagram/android/creation/a/at;
invoke-direct {v1, p0}, Lcom/instagram/android/creation/a/at;-><init>(Lcom/instagram/android/creation/a/ar;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->e:Landroid/view/View;
invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->d()V
return-void
.end method
.method public final a(Lcom/instagram/android/widget/x;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/creation/a/ar;->c:Lcom/instagram/sharelater/ShareLaterMedia;
iget-object v1, p0, Lcom/instagram/android/creation/a/ar;->g:Lcom/facebook/b/e;
invoke-virtual {p1, v0, p0, v1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Landroid/support/v4/app/Fragment;Lcom/facebook/b/e;)V
invoke-direct {p0}, Lcom/instagram/android/creation/a/ar;->c()V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "share_later"
return-object v0
.end method
.method public final l_()V
.registers 2
const/4 v0, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->a:Lcom/instagram/android/widget/IgAutoCompleteTextView;
iput-object v0, p0, Lcom/instagram/android/creation/a/ar;->d:Lcom/instagram/android/widget/s;
return-void
.end method