.class public final Lcom/instagram/android/directshare/c/c;
.super Lcom/instagram/base/a/b;
.source "InboxFragment.java"
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/android/activity/e;
.field private a:Landroid/os/Handler;
.field private aa:Landroid/view/View;
.field private ab:Landroid/view/View;
.field private ac:Z
.field private ad:Z
.field private ae:Z
.field private af:Lcom/instagram/common/h/e;
.field private ag:I
.field private ah:Z
.field private ai:Z
.field private aj:Lcom/instagram/api/k/a/h;
.field private b:Lcom/instagram/android/directshare/c/a;
.field private c:Lcom/instagram/common/c/h;
.field private d:Lcom/instagram/android/directshare/c/k;
.field private e:Lcom/instagram/android/directshare/c/m;
.field private f:Lcom/instagram/android/activity/c;
.field private g:Lcom/instagram/android/feed/e/a;
.field private h:Landroid/widget/ListView;
.field private i:Landroid/widget/LinearLayout;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Lcom/instagram/android/directshare/c/k;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/directshare/c/k;-><init>(Lcom/instagram/android/directshare/c/c;B)V
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/k;
new-instance v0, Lcom/instagram/android/directshare/c/d;
invoke-direct {v0, p0}, Lcom/instagram/android/directshare/c/d;-><init>(Lcom/instagram/android/directshare/c/c;)V
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->aj:Lcom/instagram/api/k/a/h;
return-void
.end method
.method private U()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
:cond_c
return-void
.end method
.method private V()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ah:Z
return-void
.end method
.method private W()Z
.registers 3
iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ah:Z
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/instagram/android/directshare/c/c;->ah:Z
return v0
.end method
.method private X()V
.registers 6
new-instance v0, Lcom/instagram/f/a/a/n;
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/directshare/c/l;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Lcom/instagram/android/directshare/c/l;-><init>(Lcom/instagram/android/directshare/c/c;B)V
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/f/a/a/n;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-virtual {v0}, Lcom/instagram/f/a/a/n;->h()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/m;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->e:Lcom/instagram/android/directshare/c/m;
return-object v0
.end method
.method private a(I)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->aa:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/directshare/c/c;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/c;->a(Ljava/util/List;)V
return-void
.end method
.method private a(Ljava/util/List;)V
.registers 9
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
if-eqz v0, :cond_12
if-eqz p1, :cond_d
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_13
:cond_d
const/16 v0, 0x8
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/c;->a(I)V
:cond_12
:goto_12
return-void
:cond_13
invoke-direct {p0, v3}, Lcom/instagram/android/directshare/c/c;->a(I)V
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/c;->f(I)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
:goto_25
if-lez v0, :cond_2f
iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V
add-int/lit8 v0, v0, -0x1
goto :goto_25
:cond_2f
const/4 v0, 0x3
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v4
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v5
move v2, v3
:goto_41
if-ge v2, v4, :cond_67
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/f/c/a;
sget v1, Lcom/facebook/aw;->row_requested_direct_share_avatar:I
iget-object v6, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
invoke-virtual {v5, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/instagram/common/ui/widget/imageview/IgImageView;
invoke-virtual {v0}, Lcom/instagram/f/c/a;->a()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_41
:cond_67
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Lcom/instagram/android/directshare/c/c;->ag:I
if-le v0, v1, :cond_12
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
invoke-static {v0}, Lcom/instagram/android/directshare/a/a;->b(I)V
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
iput v0, p0, Lcom/instagram/android/directshare/c/c;->ag:I
goto :goto_12
.end method
.method static synthetic b(Lcom/instagram/android/directshare/c/c;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->c()V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/directshare/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;
return-object v0
.end method
.method private c()V
.registers 4
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->b()Z
move-result v0
if-eqz v0, :cond_1f
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->D()Landroid/view/View;
move-result-object v1
sget v2, Lcom/facebook/av;->inbox_empty:I
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
:cond_1f
return-void
.end method
.method private c(Z)V
.registers 3
sget v0, Lcom/instagram/android/directshare/c/b;->b:I
invoke-virtual {p0, v0, p1}, Lcom/instagram/android/directshare/c/c;->a(IZ)V
return-void
.end method
.method private d()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;
if-eqz v0, :cond_1c
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->b()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/a;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_1c
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_1c
.end method
.method static synthetic d(Lcom/instagram/android/directshare/c/c;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ac:Z
return v0
.end method
.method static synthetic e(Lcom/instagram/android/directshare/c/c;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ac:Z
return v0
.end method
.method private f(I)V
.registers 8
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
sget v1, Lcom/facebook/av;->inbox_requests_textview:I
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->o()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/ax;->directshare_inbox_pending_request_count:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method static synthetic f(Lcom/instagram/android/directshare/c/c;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ai:Z
return v0
.end method
.method static synthetic g(Lcom/instagram/android/directshare/c/c;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->U()V
return-void
.end method
.method static synthetic h(Lcom/instagram/android/directshare/c/c;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ai:Z
return v0
.end method
.method static synthetic i(Lcom/instagram/android/directshare/c/c;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic j(Lcom/instagram/android/directshare/c/c;)V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/c;->c(Z)V
return-void
.end method
.method static synthetic k(Lcom/instagram/android/directshare/c/c;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->X()V
return-void
.end method
.method static synthetic l(Lcom/instagram/android/directshare/c/c;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ae:Z
return v0
.end method
.method static synthetic m(Lcom/instagram/android/directshare/c/c;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->d()V
return-void
.end method
.method static synthetic n(Lcom/instagram/android/directshare/c/c;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->a:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic o(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/activity/c;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;
return-object v0
.end method
.method public final E()V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->g:Lcom/instagram/android/feed/e/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->b()V
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->C()V
iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ad:Z
if-nez v0, :cond_27
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_27
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->j()Landroid/os/Bundle;
move-result-object v0
const-string v3, "InboxFragment.ADD_TO_BACKSTACK"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_61
:cond_27
move v0, v2
:goto_28
if-eqz v0, :cond_38
invoke-static {}, Lcom/instagram/android/c2dm/c;->a()Lcom/instagram/android/c2dm/c;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/c2dm/c;->c()V
invoke-static {}, Lcom/instagram/android/directshare/f/a;->a()Lcom/instagram/android/directshare/f/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/directshare/f/a;->b()V
:cond_38
invoke-static {}, Lcom/instagram/android/directshare/c/v;->b()Z
move-result v3
if-eqz v3, :cond_63
if-eqz v0, :cond_43
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->X()V
:goto_43
:cond_43
iget-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ae:Z
if-eqz v0, :cond_4c
invoke-direct {p0, v2}, Lcom/instagram/android/directshare/c/c;->c(Z)V
iput-boolean v1, p0, Lcom/instagram/android/directshare/c/c;->ae:Z
:cond_4c
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/android/c2dm/a;
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->af:Lcom/instagram/common/h/e;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->W()Z
move-result v0
if-eqz v0, :cond_60
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->U()V
:cond_60
return-void
:cond_61
move v0, v1
goto :goto_28
:cond_63
invoke-static {}, Lcom/instagram/android/directshare/c/v;->a()Ljava/util/List;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/c;->a(Ljava/util/List;)V
goto :goto_43
.end method
.method public final F()V
.registers 4
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->g:Lcom/instagram/android/feed/e/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->a()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ad:Z
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/android/c2dm/a;
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->af:Lcom/instagram/common/h/e;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->fragment_inbox:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(II)V
.registers 3
return-void
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;
invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/android/activity/c;->a(IILandroid/content/Intent;)V
return-void
.end method
.method final a(IZ)V
.registers 5
iput-boolean p2, p0, Lcom/instagram/android/directshare/c/c;->ai:Z
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v0
sget v1, Lcom/instagram/android/directshare/c/b;->b:I
if-ne p1, v1, :cond_e
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->i()V
:goto_d
return-void
:cond_e
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->j()V
goto :goto_d
.end method
.method public final a(Landroid/content/Context;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/content/Context;)V
new-instance v0, Lcom/instagram/common/c/j;
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "InboxFragment.REFRESH_INBOX"
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/k;
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "InboxFragment.UPDATE_INBOX"
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/k;
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "InboxFragment.INBOX_SHARE_COUNT_CHANGED"
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/k;
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "ActionBarService.action_bar_refresh_click"
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/k;
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
const-string v1, "INTENT_ACTION_PENDING_REQUEST_ACCEPTED"
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->d:Lcom/instagram/android/directshare/c/k;
invoke-interface {v0, v1, v2}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->c:Lcom/instagram/common/c/h;
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->c:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
new-instance v2, Landroid/os/Handler;
invoke-direct {v2}, Landroid/os/Handler;-><init>()V
iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->a:Landroid/os/Handler;
new-instance v2, Lcom/instagram/android/directshare/c/m;
invoke-direct {v2, p0}, Lcom/instagram/android/directshare/c/m;-><init>(Lcom/instagram/android/directshare/c/c;)V
iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->e:Lcom/instagram/android/directshare/c/m;
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/directshare/c/r;->h()Z
if-eqz p1, :cond_24
const-string v2, "InboxFragment.LOGGED_INBOX_OPEN"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/instagram/android/directshare/c/c;->ac:Z
:cond_24
iget-boolean v2, p0, Lcom/instagram/android/directshare/c/c;->ac:Z
if-nez v2, :cond_3f
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/directshare/c/r;->b()Z
move-result v2
if-eqz v2, :cond_3f
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/directshare/c/r;->f()Ljava/util/List;
move-result-object v2
invoke-static {v2}, Lcom/instagram/android/directshare/a/a;->a(Ljava/util/List;)V
iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ac:Z
:cond_3f
new-instance v2, Lcom/instagram/android/directshare/c/a;
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;
move-result-object v3
iget-object v4, p0, Lcom/instagram/android/directshare/c/c;->e:Lcom/instagram/android/directshare/c/m;
invoke-direct {v2, v3, v4}, Lcom/instagram/android/directshare/c/a;-><init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;)V
iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;
new-instance v3, Lcom/instagram/android/directshare/c/e;
invoke-direct {v3, p0}, Lcom/instagram/android/directshare/c/e;-><init>(Lcom/instagram/android/directshare/c/c;)V
invoke-virtual {v2, v3}, Lcom/instagram/android/directshare/c/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
new-instance v2, Lcom/instagram/android/feed/e/a;
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;
move-result-object v3
sget v4, Lcom/instagram/creation/b/d/b;->a:I
iget-object v5, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v6
invoke-direct {v2, v3, v4, v5, v6}, Lcom/instagram/android/feed/e/a;-><init>(Landroid/content/Context;ILcom/instagram/android/feed/e/e;Lcom/instagram/android/feed/e/d;)V
iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->g:Lcom/instagram/android/feed/e/a;
new-instance v2, Lcom/instagram/android/activity/c;
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->n()Landroid/content/Context;
move-result-object v3
invoke-direct {v2, v3, p0}, Lcom/instagram/android/activity/c;-><init>(Landroid/content/Context;Lcom/instagram/android/activity/e;)V
iput-object v2, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;
iget-object v2, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;
invoke-virtual {v2, p1}, Lcom/instagram/android/activity/c;->b(Landroid/os/Bundle;)V
if-eqz p1, :cond_90
const-string v2, "InboxFragment.IGNORE_ADD_TO_BACKSTACK_ARGUMENT"
invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
if-eqz v2, :cond_90
:goto_83
iput-boolean v0, p0, Lcom/instagram/android/directshare/c/c;->ad:Z
new-instance v0, Lcom/instagram/android/directshare/c/f;
invoke-direct {v0, p0}, Lcom/instagram/android/directshare/c/f;-><init>(Lcom/instagram/android/directshare/c/c;)V
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->af:Lcom/instagram/common/h/e;
invoke-direct {p0, v1}, Lcom/instagram/android/directshare/c/c;->c(Z)V
return-void
:cond_90
move v0, v1
goto :goto_83
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
const v0, 0x102000a
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;
iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;
new-instance v1, Lcom/instagram/android/directshare/c/h;
invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/h;-><init>(Lcom/instagram/android/directshare/c/c;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;
iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->e:Lcom/instagram/android/directshare/c/m;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
sget v0, Lcom/facebook/av;->inbox_requests_separator:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->aa:Landroid/view/View;
sget v0, Lcom/facebook/av;->inbox_requests_row:I
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
new-instance v1, Lcom/instagram/android/directshare/c/i;
invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/i;-><init>(Lcom/instagram/android/directshare/c/c;)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->c()V
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->aj:Lcom/instagram/api/k/a/h;
invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/r;->a(Lcom/instagram/api/k/a/h;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
const/4 v1, 0x1
sget v0, Lcom/facebook/az;->directshare_inbox:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
invoke-interface {p1, v1}, Lcom/instagram/a/a;->b(Z)V
invoke-interface {p1, v1}, Lcom/instagram/a/a;->a(Z)V
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->e()Z
move-result v0
invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V
sget v0, Lcom/facebook/aw;->action_bar_button_new_directshare:I
new-instance v1, Lcom/instagram/android/directshare/c/j;
invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/j;-><init>(Lcom/instagram/android/directshare/c/c;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(ILandroid/view/View$OnClickListener;)Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->action_bar_inbox_arrow:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->d()V
return-void
.end method
.method public final a(Ljava/io/File;)V
.registers 3
const/16 v0, 0x2712
invoke-static {p0, v0, p1}, Lcom/instagram/creation/base/e;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;)V
return-void
.end method
.method public final a(Ljava/io/File;ILjava/lang/String;)V
.registers 4
invoke-static {p0, p2, p1, p3}, Lcom/instagram/creation/photo/b/a;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;Ljava/lang/String;)V
return-void
.end method
.method public final a_(Landroid/content/Intent;I)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/instagram/android/directshare/c/c;->a(Landroid/content/Intent;I)V
return-void
.end method
.method final b()Lcom/instagram/android/directshare/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->b:Lcom/instagram/android/directshare/c/a;
return-object v0
.end method
.method public final e(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->f:Lcom/instagram/android/activity/c;
invoke-virtual {v0, p1}, Lcom/instagram/android/activity/c;->a(Landroid/os/Bundle;)V
const-string v0, "InboxFragment.IGNORE_ADD_TO_BACKSTACK_ARGUMENT"
const/4 v1, 0x1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "InboxFragment.LOGGED_INBOX_OPEN"
iget-boolean v1, p0, Lcom/instagram/android/directshare/c/c;->ac:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public final g_()V
.registers 2
invoke-static {}, Lcom/instagram/android/activity/MainTabActivity;->b()Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p0}, Lcom/instagram/android/directshare/c/c;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V
:goto_d
return-void
:cond_e
invoke-direct {p0}, Lcom/instagram/android/directshare/c/c;->V()V
goto :goto_d
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "direct_share_inbox"
return-object v0
.end method
.method public final l_()V
.registers 3
const/4 v0, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->ab:Landroid/view/View;
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->h:Landroid/widget/ListView;
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->i:Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/instagram/android/directshare/c/c;->aa:Landroid/view/View;
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/directshare/c/c;->aj:Lcom/instagram/api/k/a/h;
invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/c/r;->b(Lcom/instagram/api/k/a/h;)V
return-void
.end method
.method public final p_()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->p_()V
iget-object v0, p0, Lcom/instagram/android/directshare/c/c;->c:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V
return-void
.end method