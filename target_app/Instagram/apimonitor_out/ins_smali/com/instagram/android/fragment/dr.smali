.class public final Lcom/instagram/android/fragment/dr;
.super Lcom/instagram/base/a/c;
.source "RecommendedUserFragment.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/a/b;
.field private aa:Z
.field private ab:Z
.field private ac:Z
.field private ad:Z
.field private ae:Lcom/instagram/user/follow/h;
.field private af:Ljava/util/Set;
.field private ag:Lcom/instagram/android/fragment/dx;
.field private ah:Landroid/content/BroadcastReceiver;
.field private ai:Landroid/content/BroadcastReceiver;
.field private i:Lcom/instagram/android/a/m;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/android/fragment/dr;->af:Ljava/util/Set;
new-instance v0, Lcom/instagram/android/fragment/dx;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/fragment/dx;-><init>(Lcom/instagram/android/fragment/dr;B)V
iput-object v0, p0, Lcom/instagram/android/fragment/dr;->ag:Lcom/instagram/android/fragment/dx;
new-instance v0, Lcom/instagram/android/fragment/ds;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/ds;-><init>(Lcom/instagram/android/fragment/dr;)V
iput-object v0, p0, Lcom/instagram/android/fragment/dr;->ah:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/instagram/android/fragment/dv;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/dv;-><init>(Lcom/instagram/android/fragment/dr;)V
iput-object v0, p0, Lcom/instagram/android/fragment/dr;->ai:Landroid/content/BroadcastReceiver;
return-void
.end method
.method private V()Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method private W()Lcom/instagram/api/j/f;
.registers 2
new-instance v0, Lcom/instagram/android/fragment/dw;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/dw;-><init>(Lcom/instagram/android/fragment/dr;)V
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/fragment/dr;)Lcom/instagram/android/a/m;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/dr;->i:Lcom/instagram/android/a/m;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/fragment/dr;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/fragment/dr;->ab:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/android/fragment/dr;)Lcom/instagram/android/fragment/dx;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/dr;->ag:Lcom/instagram/android/fragment/dx;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/fragment/dr;)Landroid/content/BroadcastReceiver;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/dr;->ah:Landroid/content/BroadcastReceiver;
return-object v0
.end method
.method private c(Z)V
.registers 8
iput-boolean p1, p0, Lcom/instagram/android/fragment/dr;->aa:Z
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ac:Z
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->aa:Z
if-eqz v0, :cond_28
:cond_a
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ab:Z
if-nez v0, :cond_28
new-instance v0, Lcom/instagram/android/c/a/m;
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-direct {p0}, Lcom/instagram/android/fragment/dr;->V()Z
move-result v3
iget-boolean v4, p0, Lcom/instagram/android/fragment/dr;->ad:Z
invoke-direct {p0}, Lcom/instagram/android/fragment/dr;->W()Lcom/instagram/api/j/f;
move-result-object v5
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ZZLcom/instagram/api/j/f;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/m;->h()V
:cond_28
return-void
.end method
.method static synthetic d(Lcom/instagram/android/fragment/dr;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ab:Z
return v0
.end method
.method static synthetic e(Lcom/instagram/android/fragment/dr;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ac:Z
return v0
.end method
.method static synthetic f(Lcom/instagram/android/fragment/dr;)V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/android/fragment/dr;->c(Z)V
return-void
.end method
.method static synthetic g(Lcom/instagram/android/fragment/dr;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->aa:Z
return v0
.end method
.method static synthetic h(Lcom/instagram/android/fragment/dr;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ac:Z
return v0
.end method
.method public final E()V
.registers 4
invoke-super {p0}, Lcom/instagram/base/a/c;->E()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V
:cond_15
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "ActionBarService.action_bar_clicked"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "ActionBarService.action_bar_refresh_click"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/fragment/dr;->ai:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final F()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/dr;->ai:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;
if-eqz v0, :cond_1f
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->b(Z)V
:cond_1f
iget-object v0, p0, Lcom/instagram/android/fragment/dr;->af:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
invoke-super {p0}, Lcom/instagram/base/a/c;->F()V
return-void
.end method
.method public final G()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/dr;->ah:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
invoke-super {p0}, Lcom/instagram/base/a/c;->G()V
return-void
.end method
.method public final U()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->q_()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->layout_listview_with_progress:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "RecommendedUserFragment.IS_AYML_ENABLED"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ad:Z
:cond_16
sget-object v0, Lcom/instagram/l/c;->d:Lcom/instagram/l/a;
invoke-virtual {v0}, Lcom/instagram/l/a;->b()Z
move-result v0
if-eqz v0, :cond_39
sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;
:goto_20
iput-object v0, p0, Lcom/instagram/android/fragment/dr;->ae:Lcom/instagram/user/follow/h;
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->d()Lcom/instagram/android/a/m;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/dr;->a(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->d()Lcom/instagram/android/a/m;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/dt;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/dt;-><init>(Lcom/instagram/android/fragment/dr;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/a/m;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
invoke-direct {p0, v2}, Lcom/instagram/android/fragment/dr;->c(Z)V
return-void
:cond_39
sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;
goto :goto_20
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ad:Z
if-eqz v0, :cond_3e
sget v0, Lcom/facebook/az;->recommended_follow_more_people:I
:goto_8
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
invoke-direct {p0}, Lcom/instagram/android/fragment/dr;->V()Z
move-result v0
if-nez v0, :cond_41
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I
move-result v0
if-lez v0, :cond_41
move v0, v1
:goto_1c
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
invoke-direct {p0}, Lcom/instagram/android/fragment/dr;->V()Z
move-result v0
if-nez v0, :cond_43
:goto_25
invoke-interface {p1, v1}, Lcom/instagram/a/a;->b(Z)V
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ab:Z
invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V
invoke-direct {p0}, Lcom/instagram/android/fragment/dr;->V()Z
move-result v0
if-eqz v0, :cond_3d
sget v0, Lcom/facebook/az;->done:I
new-instance v1, Lcom/instagram/android/fragment/du;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/du;-><init>(Lcom/instagram/android/fragment/dr;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->b(ILandroid/view/View$OnClickListener;)Landroid/view/View;
:cond_3d
return-void
:cond_3e
sget v0, Lcom/facebook/az;->find_friends_item_suggested_users:I
goto :goto_8
:cond_41
move v0, v2
goto :goto_1c
:cond_43
move v1, v2
goto :goto_25
.end method
.method public final a(Ljava/util/ArrayList;)V
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/d/a;
invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_21
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_39
new-instance v0, Lcom/instagram/user/follow/a;
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->y()Landroid/support/v4/app/an;
move-result-object v3
const/4 v4, 0x1
const/4 v5, 0x0
invoke-direct {v0, v2, v3, v4, v5}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
invoke-virtual {v0, v1}, Lcom/instagram/user/follow/a;->a(Ljava/lang/Iterable;)V
:cond_39
return-void
.end method
.method protected final d()Lcom/instagram/android/a/m;
.registers 9
iget-object v0, p0, Lcom/instagram/android/fragment/dr;->i:Lcom/instagram/android/a/m;
if-nez v0, :cond_23
new-instance v0, Lcom/instagram/android/a/m;
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->p()Landroid/support/v4/app/s;
move-result-object v3
invoke-direct {p0}, Lcom/instagram/android/fragment/dr;->V()Z
move-result v4
if-nez v4, :cond_26
const/4 v4, 0x1
:goto_19
iget-boolean v5, p0, Lcom/instagram/android/fragment/dr;->ad:Z
iget-object v6, p0, Lcom/instagram/android/fragment/dr;->ae:Lcom/instagram/user/follow/h;
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Lcom/instagram/android/a/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/user/follow/h;Lcom/instagram/android/a/b/f;)V
iput-object v0, p0, Lcom/instagram/android/fragment/dr;->i:Lcom/instagram/android/a/m;
:cond_23
iget-object v0, p0, Lcom/instagram/android/fragment/dr;->i:Lcom/instagram/android/a/m;
return-object v0
:cond_26
const/4 v4, 0x0
goto :goto_19
.end method
.method public final i_()Ljava/lang/String;
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ad:Z
if-eqz v0, :cond_7
const-string v0, "ayml_recommended_users"
:goto_6
return-object v0
:cond_7
const-string v0, "suggested_users"
goto :goto_6
.end method
.method public final j_()V
.registers 3
iget-boolean v0, p0, Lcom/instagram/android/fragment/dr;->ab:Z
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
invoke-super {p0}, Lcom/instagram/base/a/c;->j_()V
return-void
.end method
.method public final l_()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->q_()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
invoke-super {p0}, Lcom/instagram/base/a/c;->l_()V
return-void
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/dr; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p1, :cond_2f
if-lez p3, :cond_2f
move v1, p2
:goto_5
add-int v0, p2, p3
if-ge v1, v0, :cond_2f
invoke-virtual {p0}, Lcom/instagram/android/fragment/dr;->d()Lcom/instagram/android/a/m;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/d/a;
iget-object v2, p0, Lcom/instagram/android/fragment/dr;->af:Ljava/util/Set;
invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2b
iget-boolean v2, p0, Lcom/instagram/android/fragment/dr;->ad:Z
if-eqz v2, :cond_2b
const/4 v2, 0x1
invoke-static {p0, v0, v1, v2}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;IZ)V
:cond_2b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_5
:cond_2f
const-string v1, " - Lcom/instagram/android/fragment/dr; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/dr; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/fragment/dr; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method