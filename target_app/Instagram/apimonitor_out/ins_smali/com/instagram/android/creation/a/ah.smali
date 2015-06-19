.class public final Lcom/instagram/android/creation/a/ah;
.super Lcom/instagram/base/a/b;
.source "MetadataFragment.java"
.field private a:Lcom/instagram/creation/b/a/b;
.field private b:Landroid/widget/ImageView;
.field private c:Z
.field private d:Lcom/instagram/android/creation/a/ao;
.field private e:I
.field private f:Lcom/instagram/android/creation/a/an;
.field private g:Lcom/instagram/common/c/h;
.field private h:Lcom/instagram/android/creation/a/am;
.field private i:I
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Lcom/instagram/android/creation/a/am;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/am;-><init>(Lcom/instagram/android/creation/a/ah;B)V
iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->h:Lcom/instagram/android/creation/a/am;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/android/creation/a/ah;->i:I
return-void
.end method
.method static synthetic a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->a:Lcom/instagram/creation/b/a/b;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/creation/a/ah;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/ah;->a:Lcom/instagram/creation/b/a/b;
return-object p1
.end method
.method private a(I)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v3, Landroid/content/Intent;
const-string v0, "MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY"
invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v4, "MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED"
if-nez p1, :cond_21
move v0, v1
:goto_e
invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v0, "MetadataFragment.IS_DIRECT_SHARE_SELECTED"
if-ne p1, v1, :cond_23
:goto_15
invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-static {v3}, Lcom/instagram/common/u/d;->b(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;
invoke-virtual {v0, p1}, Lcom/instagram/android/creation/a/ao;->b(I)V
return-void
:cond_21
move v0, v2
goto :goto_e
:cond_23
move v1, v2
goto :goto_15
.end method
.method private a(Landroid/view/View;)V
.registers 3
new-instance v0, Lcom/instagram/android/creation/a/ao;
invoke-direct {v0, p0, p1}, Lcom/instagram/android/creation/a/ao;-><init>(Lcom/instagram/android/creation/a/ah;Landroid/view/View;)V
iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;
invoke-virtual {v0}, Lcom/instagram/android/creation/a/ao;->a()V
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;
invoke-virtual {v0}, Lcom/instagram/android/creation/a/ao;->c()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/creation/a/ah;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/ah;->a(I)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/creation/a/ah;Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/ah;->c(Landroid/os/Bundle;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/creation/a/ah;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/ah;->d(Z)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/creation/a/ah;)I
.registers 2
iget v0, p0, Lcom/instagram/android/creation/a/ah;->i:I
return v0
.end method
.method static synthetic b(Lcom/instagram/android/creation/a/ah;I)I
.registers 2
iput p1, p0, Lcom/instagram/android/creation/a/ah;->e:I
return p1
.end method
.method private b()V
.registers 4
iget v0, p0, Lcom/instagram/android/creation/a/ah;->i:I
if-nez v0, :cond_27
sget v1, Lcom/facebook/av;->row_caption_followshare:I
sget v0, Lcom/facebook/av;->row_caption_directshare:I
:goto_8
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->D()Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->D()Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v1, :cond_26
if-eqz v0, :cond_26
invoke-static {v1}, Lcom/instagram/android/creation/a;->a(Landroid/view/View;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/creation/a;->a(Landroid/view/View;Ljava/lang/String;)V
invoke-static {v0}, Lcom/instagram/android/creation/a;->b(Landroid/view/View;)V
:cond_26
return-void
:cond_27
sget v1, Lcom/facebook/av;->row_caption_directshare:I
sget v0, Lcom/facebook/av;->row_caption_followshare:I
goto :goto_8
.end method
.method private b(Landroid/view/View;)V
.registers 5
const/4 v2, 0x0
sget v0, Lcom/facebook/av;->metadata_pager:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;
iget-object v1, p0, Lcom/instagram/android/creation/a/ah;->f:Lcom/instagram/android/creation/a/an;
invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setAdapter(Landroid/support/v4/view/ae;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->n()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/u/f;->d(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-virtual {v0, v2}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setScrollingEnabled(Z)V
:cond_1b
iput v2, p0, Lcom/instagram/android/creation/a/ah;->e:I
new-instance v1, Lcom/instagram/android/creation/a/al;
invoke-direct {v1, p0, v0}, Lcom/instagram/android/creation/a/al;-><init>(Lcom/instagram/android/creation/a/ah;Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;)V
invoke-virtual {v0, v1}, Lcom/instagram/ui/viewpager/ScrollingOptionalViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bm;)V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/creation/a/ah;I)I
.registers 2
iput p1, p0, Lcom/instagram/android/creation/a/ah;->i:I
return p1
.end method
.method private c(Landroid/os/Bundle;)V
.registers 8
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->D()Landroid/view/View;
move-result-object v1
if-nez v1, :cond_8
:goto_7
return-void
:cond_8
sget v2, Lcom/facebook/av;->loading_spinner:I
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
sget v2, Lcom/facebook/av;->super_metadata_content:I
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
invoke-direct {p0, v1}, Lcom/instagram/android/creation/a/ah;->a(Landroid/view/View;)V
invoke-direct {p0, v1}, Lcom/instagram/android/creation/a/ah;->b(Landroid/view/View;)V
sget v2, Lcom/facebook/av;->action_bar_button_back:I
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/a/c;
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->o()Landroid/content/res/Resources;
move-result-object v3
sget-object v4, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;
const/4 v5, 0x5
invoke-direct {v2, v3, v4, v5}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v2, Lcom/instagram/android/creation/a/aj;
invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/aj;-><init>(Lcom/instagram/android/creation/a/ah;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;
new-instance v2, Lcom/instagram/android/creation/a/ak;
invoke-direct {v2, p0}, Lcom/instagram/android/creation/a/ak;-><init>(Lcom/instagram/android/creation/a/ah;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "directShare"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5b
const/4 v0, 0x1
:cond_5b
if-eqz p1, :cond_6d
const-string v1, "shareMode"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6d
const-string v1, "shareMode"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/instagram/android/creation/a/ah;->i:I
:cond_6d
iget v1, p0, Lcom/instagram/android/creation/a/ah;->i:I
const/4 v2, -0x1
if-eq v1, v2, :cond_74
iget v0, p0, Lcom/instagram/android/creation/a/ah;->i:I
:cond_74
iget-object v1, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;
invoke-static {v0}, Lcom/instagram/android/creation/a/ao;->a(I)V
invoke-direct {p0, v0}, Lcom/instagram/android/creation/a/ah;->a(I)V
goto :goto_7
.end method
.method static synthetic c(Lcom/instagram/android/creation/a/ah;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/creation/a/ah;->b()V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/creation/a/ah;)I
.registers 2
iget v0, p0, Lcom/instagram/android/creation/a/ah;->e:I
return v0
.end method
.method private d(Z)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz p1, :cond_17
const/16 v0, 0xff
:goto_13
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
:cond_17
const/16 v0, 0x4d
goto :goto_13
.end method
.method static synthetic e(Lcom/instagram/android/creation/a/ah;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/android/creation/a/ah;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/creation/a/ah;->c:Z
return v0
.end method
.method public final E()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x20
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
return-void
.end method
.method public final F()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const/16 v3, 0x8
sget v0, Lcom/facebook/aw;->fragment_metadata:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->upload_button:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
sget v0, Lcom/facebook/av;->view_switcher_buttons:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->n()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/instagram/common/u/f;->d(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_34
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/facebook/av;->metadata_tab_shadow:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
:cond_34
return-object v1
.end method
.method public final a(Landroid/content/Context;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V
new-instance v0, Lcom/instagram/common/c/j;
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "MetadataFragment.INTENT_ACTION_UPDATE_DS_SHARE_ENABLED"
iget-object v2, p0, Lcom/instagram/android/creation/a/ah;->h:Lcom/instagram/android/creation/a/am;
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->g:Lcom/instagram/common/c/h;
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->g:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/android/creation/a/an;
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->q()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/a/an;-><init>(Lcom/instagram/android/creation/a/ah;Landroid/support/v4/app/s;)V
iput-object v0, p0, Lcom/instagram/android/creation/a/ah;->f:Lcom/instagram/android/creation/a/an;
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/a/e;
new-instance v1, Lcom/instagram/android/creation/a/ai;
invoke-direct {v1, p0, p2}, Lcom/instagram/android/creation/a/ai;-><init>(Lcom/instagram/android/creation/a/ah;Landroid/os/Bundle;)V
invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final c(Z)V
.registers 4
iput-boolean p1, p0, Lcom/instagram/android/creation/a/ah;->c:Z
iget v0, p0, Lcom/instagram/android/creation/a/ah;->i:I
const/4 v1, 0x1
if-ne v0, v1, :cond_a
invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/ah;->d(Z)V
:cond_a
return-void
.end method
.method public final e(Landroid/os/Bundle;)V
.registers 4
const-string v0, "shareMode"
iget v1, p0, Lcom/instagram/android/creation/a/ah;->i:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "metadata"
return-object v0
.end method
.method public final l_()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
iput-object v1, p0, Lcom/instagram/android/creation/a/ah;->b:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;
invoke-virtual {v0}, Lcom/instagram/android/creation/a/ao;->b()V
iput-object v1, p0, Lcom/instagram/android/creation/a/ah;->d:Lcom/instagram/android/creation/a/ao;
:cond_11
return-void
.end method
.method public final p_()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->p_()V
iget-object v0, p0, Lcom/instagram/android/creation/a/ah;->g:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V
return-void
.end method