.class public final Lcom/instagram/android/fragment/cc;
.super Lcom/instagram/base/a/c;
.source "FollowDestinationFragment.java"
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/android/a/b/f;
.field private aa:Landroid/content/IntentFilter;
.field private ab:Lcom/instagram/android/widget/e;
.field private ac:Ljava/util/Set;
.field private ad:Z
.field private ae:Lcom/instagram/user/follow/h;
.field private af:Landroid/content/BroadcastReceiver;
.field private i:Lcom/instagram/android/a/m;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/android/fragment/cc;->ac:Ljava/util/Set;
new-instance v0, Lcom/instagram/android/fragment/cd;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/cd;-><init>(Lcom/instagram/android/fragment/cc;)V
iput-object v0, p0, Lcom/instagram/android/fragment/cc;->af:Landroid/content/BroadcastReceiver;
return-void
.end method
.method private U()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->q_()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
:cond_e
return-void
.end method
.method private V()V
.registers 7
new-instance v0, Lcom/instagram/android/c/a/m;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->y()Landroid/support/v4/app/an;
move-result-object v2
const/4 v3, 0x0
const/4 v4, 0x1
new-instance v5, Lcom/instagram/android/fragment/cf;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/cf;-><init>(Lcom/instagram/android/fragment/cc;)V
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/c/a/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ZZLcom/instagram/api/j/f;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/m;->h()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/cc;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/fragment/cc;->U()V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/cc;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/fragment/cc;->ad:Z
return p1
.end method
.method public final E()V
.registers 4
invoke-super {p0}, Lcom/instagram/base/a/c;->E()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/cc;->af:Landroid/content/BroadcastReceiver;
iget-object v2, p0, Lcom/instagram/android/fragment/cc;->aa:Landroid/content/IntentFilter;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final F()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/cc;->af:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/instagram/android/fragment/cc;->ac:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
invoke-super {p0}, Lcom/instagram/base/a/c;->F()V
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
.method public final a(IILandroid/content/Intent;)V
.registers 6
const/4 v0, -0x1
if-eq p2, v0, :cond_4
:goto_3
return-void
:cond_4
packed-switch p1, :pswitch_data_1a
goto :goto_3
:pswitch_8
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/cc;->ab:Lcom/instagram/android/widget/e;
invoke-virtual {v1}, Lcom/instagram/android/widget/e;->d()Lcom/instagram/android/widget/g;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V
goto :goto_3
nop
:pswitch_data_1a
.packed-switch 0x7f99
:pswitch_8
.end packed-switch
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "ActionBarService.action_bar_clicked"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/instagram/android/fragment/cc;->aa:Landroid/content/IntentFilter;
iget-object v0, p0, Lcom/instagram/android/fragment/cc;->aa:Landroid/content/IntentFilter;
const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/l/c;->d:Lcom/instagram/l/a;
invoke-virtual {v0}, Lcom/instagram/l/a;->b()Z
move-result v0
if-eqz v0, :cond_32
sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;
:goto_1d
iput-object v0, p0, Lcom/instagram/android/fragment/cc;->ae:Lcom/instagram/user/follow/h;
new-instance v0, Lcom/instagram/android/widget/e;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->d()Lcom/instagram/android/a/m;
move-result-object v2
invoke-direct {v0, v1, p0, v2}, Lcom/instagram/android/widget/e;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/widget/BaseAdapter;)V
iput-object v0, p0, Lcom/instagram/android/fragment/cc;->ab:Lcom/instagram/android/widget/e;
invoke-direct {p0}, Lcom/instagram/android/fragment/cc;->V()V
return-void
:cond_32
sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;
goto :goto_1d
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->d()Lcom/instagram/android/a/m;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-boolean v0, p0, Lcom/instagram/android/fragment/cc;->ad:Z
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 3
sget v0, Lcom/facebook/az;->people:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
const/4 v0, 0x1
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
return-void
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
if-nez v0, :cond_3d
new-instance v0, Lcom/instagram/user/follow/a;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->l()Landroid/support/v4/app/k;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->y()Landroid/support/v4/app/an;
move-result-object v3
const/4 v4, 0x1
new-instance v5, Lcom/instagram/android/fragment/ce;
invoke-direct {v5, p0}, Lcom/instagram/android/fragment/ce;-><init>(Lcom/instagram/android/fragment/cc;)V
invoke-direct {v0, v2, v3, v4, v5}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
invoke-virtual {v0, v1}, Lcom/instagram/user/follow/a;->a(Ljava/lang/Iterable;)V
:cond_3d
return-void
.end method
.method public final b()Lcom/instagram/android/widget/e;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/cc;->ab:Lcom/instagram/android/widget/e;
return-object v0
.end method
.method protected final d()Lcom/instagram/android/a/m;
.registers 9
const/4 v4, 0x1
iget-object v0, p0, Lcom/instagram/android/fragment/cc;->i:Lcom/instagram/android/a/m;
if-nez v0, :cond_1c
new-instance v0, Lcom/instagram/android/a/m;
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->p()Landroid/support/v4/app/s;
move-result-object v3
iget-object v6, p0, Lcom/instagram/android/fragment/cc;->ae:Lcom/instagram/user/follow/h;
move v5, v4
move-object v7, p0
invoke-direct/range {v0 .. v7}, Lcom/instagram/android/a/m;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/user/follow/h;Lcom/instagram/android/a/b/f;)V
iput-object v0, p0, Lcom/instagram/android/fragment/cc;->i:Lcom/instagram/android/a/m;
:cond_1c
iget-object v0, p0, Lcom/instagram/android/fragment/cc;->i:Lcom/instagram/android/a/m;
return-object v0
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "follow_destination"
return-object v0
.end method
.method public final l_()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->q_()Landroid/widget/ListView;
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
const-string v0, " + Lcom/instagram/android/fragment/cc; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p1, :cond_31
if-lez p3, :cond_31
if-lez p2, :cond_31
move v1, p2
:goto_7
add-int v0, p2, p3
if-ge v1, v0, :cond_31
invoke-virtual {p0}, Lcom/instagram/android/fragment/cc;->d()Lcom/instagram/android/a/m;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/android/a/m;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Lcom/instagram/user/d/a;
if-eqz v2, :cond_2d
check-cast v0, Lcom/instagram/user/d/a;
iget-object v2, p0, Lcom/instagram/android/fragment/cc;->ac:Ljava/util/Set;
invoke-virtual {v0}, Lcom/instagram/user/d/a;->a()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2d
const/4 v2, 0x1
invoke-static {p0, v0, v1, v2}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;IZ)V
:cond_2d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_31
const-string v1, " - Lcom/instagram/android/fragment/cc; onScroll"
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
const-string v0, " + Lcom/instagram/android/fragment/cc; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/fragment/cc; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method