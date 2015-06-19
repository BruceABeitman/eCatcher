.class public abstract Lcom/instagram/android/fragment/a;
.super Lcom/instagram/base/a/c;
.source "AbstractFeedFragment.java"
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/android/feed/a/b/v;
.implements Lcom/instagram/android/fragment/aa;
.implements Lcom/instagram/base/a/e;
.implements Lcom/instagram/feed/g/a;
.implements Lcom/instagram/ui/widget/loadmore/c;
.field protected aa:Ljava/lang/Long;
.field protected ab:Ljava/lang/Boolean;
.field protected ac:Z
.field protected ad:Lcom/instagram/feed/f/a;
.field private ae:Lcom/instagram/android/feed/a/a;
.field private af:Lcom/instagram/feed/c/a;
.field private ag:Z
.field private ah:Z
.field private ai:Z
.field private aj:Ljava/util/HashMap;
.field private ak:Lcom/instagram/common/c/h;
.field private al:Lcom/instagram/android/feed/e/j;
.field private final am:Lcom/instagram/common/h/d;
.field private an:Landroid/content/BroadcastReceiver;
.field private ao:Landroid/os/Handler;
.field protected i:Lcom/instagram/feed/a/a;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/fragment/a;->ab:Ljava/lang/Boolean;
iput-boolean v1, p0, Lcom/instagram/android/fragment/a;->ag:Z
iput-boolean v1, p0, Lcom/instagram/android/fragment/a;->ah:Z
new-instance v0, Lcom/instagram/android/fragment/b;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/b;-><init>(Lcom/instagram/android/fragment/a;)V
iput-object v0, p0, Lcom/instagram/android/fragment/a;->am:Lcom/instagram/common/h/d;
new-instance v0, Lcom/instagram/android/fragment/c;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/c;-><init>(Lcom/instagram/android/fragment/a;)V
iput-object v0, p0, Lcom/instagram/android/fragment/a;->an:Landroid/content/BroadcastReceiver;
new-instance v0, Lcom/instagram/android/fragment/f;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/f;-><init>(Lcom/instagram/android/fragment/a;)V
iput-object v0, p0, Lcom/instagram/android/fragment/a;->ao:Landroid/os/Handler;
return-void
.end method
.method protected static Z()V
.registers 0
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/a;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ao:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/fragment/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/fragment/a;->ai:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/android/fragment/a;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/fragment/a;->ah:Z
return v0
.end method
.method static synthetic b(Lcom/instagram/android/fragment/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/fragment/a;->ag:Z
return p1
.end method
.method public E()V
.registers 5
invoke-super {p0}, Lcom/instagram/base/a/c;->E()V
iget-boolean v0, p0, Lcom/instagram/android/fragment/a;->ah:Z
if-eqz v0, :cond_19
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I
move-result v0
if-lez v0, :cond_19
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/s;->d()V
:goto_18
return-void
:cond_19
invoke-static {}, Lcom/instagram/creation/c/a;->b()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->j()V
:cond_26
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->i()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/a;->an:Landroid/content/BroadcastReceiver;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "ActionBarService.action_bar_clicked"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
iget-object v1, p0, Lcom/instagram/android/fragment/a;->an:Landroid/content/BroadcastReceiver;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "ActionBarService.action_bar_refresh_click"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/d;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/d;-><init>(Lcom/instagram/android/fragment/a;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/android/feed/a/f;)V
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ak:Lcom/instagram/common/c/h;
if-nez v0, :cond_67
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/app/Activity;)Lcom/instagram/common/c/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/fragment/a;->ak:Lcom/instagram/common/c/h;
:cond_67
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ak:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
iget-object v0, p0, Lcom/instagram/android/fragment/a;->al:Lcom/instagram/android/feed/e/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/e/j;->a()V
iget-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/a;
invoke-virtual {v0}, Lcom/instagram/feed/c/a;->c()V
goto :goto_18
.end method
.method public F()V
.registers 4
const/4 v2, 0x0
invoke-super {p0}, Lcom/instagram/base/a/c;->F()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/fragment/a;->an:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/android/feed/a/f;)V
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ao:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->q()V
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ak:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V
iget-object v0, p0, Lcom/instagram/android/fragment/a;->al:Lcom/instagram/android/feed/e/j;
invoke-virtual {v0}, Lcom/instagram/android/feed/e/j;->b()V
iget-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/a;
invoke-virtual {v0}, Lcom/instagram/feed/c/a;->b()V
return-void
.end method
.method public G()V
.registers 4
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/feed/d/q;
iget-object v2, p0, Lcom/instagram/android/fragment/a;->am:Lcom/instagram/common/h/d;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
invoke-super {p0}, Lcom/instagram/base/a/c;->G()V
iget-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/a;
invoke-virtual {v0}, Lcom/instagram/feed/c/a;->d()V
return-void
.end method
.method public final U()Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->o()I
move-result v0
sget v1, Lcom/instagram/android/feed/a/h;->a:I
if-ne v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public final V()V
.registers 6
const-wide/16 v3, 0x64
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I
move-result v0
if-nez v0, :cond_1f
:goto_1e
:cond_1e
return-void
:cond_1f
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->getCount()I
move-result v0
if-le v0, v2, :cond_4a
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
if-eqz v0, :cond_4a
invoke-virtual {p0, v2}, Lcom/instagram/android/fragment/a;->a_(I)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/g;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/g;-><init>(Lcom/instagram/android/fragment/a;)V
invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_1e
:cond_4a
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
if-eqz v0, :cond_71
invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/a;->a_(I)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
:goto_5e
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/i;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/i;-><init>(Lcom/instagram/android/fragment/a;)V
invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_1e
:cond_71
invoke-virtual {p0, v1}, Lcom/instagram/android/fragment/a;->a_(I)V
goto :goto_5e
.end method
.method protected final W()Lcom/instagram/android/feed/a/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ae:Lcom/instagram/android/feed/a/a;
if-nez v0, :cond_a
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->X()Lcom/instagram/android/feed/a/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/fragment/a;->ae:Lcom/instagram/android/feed/a/a;
:cond_a
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ae:Lcom/instagram/android/feed/a/a;
return-object v0
.end method
.method protected abstract X()Lcom/instagram/android/feed/a/a;
.end method
.method protected Y()I
.registers 2
sget v0, Lcom/instagram/android/feed/a/h;->a:I
return v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->layout_feed:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected abstract a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
.end method
.method public a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V
invoke-static {}, Lcom/instagram/feed/f/a;->a()Lcom/instagram/feed/f/a;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/fragment/a;->ad:Lcom/instagram/feed/f/a;
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/a;->a(Landroid/widget/ListAdapter;)V
invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;
move-result-object v0
const-class v1, Lcom/instagram/feed/d/q;
iget-object v2, p0, Lcom/instagram/android/fragment/a;->am:Lcom/instagram/common/h/d;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
new-instance v0, Lcom/instagram/feed/c/a;
invoke-direct {v0, p0}, Lcom/instagram/feed/c/a;-><init>(Lcom/instagram/feed/g/a;)V
iput-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/a;
new-instance v0, Lcom/instagram/android/feed/e/j;
invoke-direct {v0, p0, p0}, Lcom/instagram/android/feed/e/j;-><init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V
iput-object v0, p0, Lcom/instagram/android/fragment/a;->al:Lcom/instagram/android/feed/e/j;
return-void
.end method
.method public a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-ge v0, v1, :cond_11
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V
:cond_11
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return-void
.end method
.method public a(Lcom/instagram/a/a;)V
.registers 4
const/4 v0, 0x1
invoke-interface {p1, v0}, Lcom/instagram/a/a;->b(Z)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/s;->g()I
move-result v1
if-lez v1, :cond_19
:goto_e
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->e()Z
move-result v0
invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V
return-void
:cond_19
const/4 v0, 0x0
goto :goto_e
.end method
.method public a(Lcom/instagram/feed/d/z;I)V
.registers 9
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-interface {p1}, Lcom/instagram/feed/d/z;->f()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->al()Z
move-result v4
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->an()Z
move-result v5
invoke-interface/range {v0 .. v5}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;ZZZ)Lcom/instagram/base/a/a/a;
move-result-object v1
invoke-interface {p1}, Lcom/instagram/feed/d/z;->g()Z
move-result v0
if-eqz v0, :cond_29
const-string v0, "video_thumbnail"
:goto_21
invoke-virtual {v1, v0}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
:cond_29
const-string v0, "photo_thumbnail"
goto :goto_21
.end method
.method protected a(Lcom/instagram/feed/survey/b;)V
.registers 2
return-void
.end method
.method protected abstract a(Ljava/util/Map;)V
.end method
.method public final aa()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/a;->aj:Ljava/util/HashMap;
if-nez v0, :cond_10
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/android/fragment/a;->aj:Ljava/util/HashMap;
iget-object v0, p0, Lcom/instagram/android/fragment/a;->aj:Ljava/util/HashMap;
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/a;->a(Ljava/util/Map;)V
:cond_10
iget-object v0, p0, Lcom/instagram/android/fragment/a;->aj:Ljava/util/HashMap;
return-object v0
.end method
.method public ab()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final ac()Z
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->u()Z
move-result v1
if-eqz v1, :cond_13
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->i()Z
move-result v1
if-nez v1, :cond_13
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->e()Z
move-result v1
if-eqz v1, :cond_14
:cond_13
:goto_13
return v0
:cond_14
iget-object v1, p0, Lcom/instagram/android/fragment/a;->ad:Lcom/instagram/feed/f/a;
invoke-virtual {v1}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;
move-result-object v1
sget-object v2, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;
if-eq v1, v2, :cond_13
iget-object v1, p0, Lcom/instagram/android/fragment/a;->ad:Lcom/instagram/feed/f/a;
invoke-virtual {v1}, Lcom/instagram/feed/f/a;->d()Z
move-result v1
if-eqz v1, :cond_13
const/4 v0, 0x1
goto :goto_13
.end method
.method public final ad()Lcom/instagram/feed/f/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ad:Lcom/instagram/feed/f/a;
return-object v0
.end method
.method public ae()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public af()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected ag()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final ah()V
.registers 4
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->v()Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->could_not_refresh_feed:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_14
return-void
.end method
.method public ai()Lcom/instagram/android/fragment/j;
.registers 2
new-instance v0, Lcom/instagram/android/fragment/j;
invoke-direct {v0, p0}, Lcom/instagram/android/fragment/j;-><init>(Lcom/instagram/android/fragment/a;)V
return-object v0
.end method
.method public final aj()Lcom/instagram/feed/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/a;->af:Lcom/instagram/feed/c/a;
return-object v0
.end method
.method public ak()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public al()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public am()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public an()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected final c(Z)V
.registers 6
const-string v0, "%s#%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "AbstractFeedFragment"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "constructAndPerformFeedRequest"
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/facebook/e/c/k;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->ai()Lcom/instagram/android/fragment/j;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->e()Z
move-result v1
if-eqz v1, :cond_1d
:cond_1c
:goto_1c
return-void
:cond_1d
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/fragment/a;->aa:Ljava/lang/Long;
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/a;->a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
move-result-object v1
iput-object v1, p0, Lcom/instagram/android/fragment/a;->i:Lcom/instagram/feed/a/a;
iget-object v1, p0, Lcom/instagram/android/fragment/a;->i:Lcom/instagram/feed/a/a;
if-eqz v1, :cond_1c
invoke-static {v0, p1}, Lcom/instagram/android/fragment/j;->a(Lcom/instagram/android/fragment/j;Z)V
if-eqz p1, :cond_41
iget-object v0, p0, Lcom/instagram/android/fragment/a;->i:Lcom/instagram/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/feed/a/a;->h()V
goto :goto_1c
:cond_41
iget-object v0, p0, Lcom/instagram/android/fragment/a;->i:Lcom/instagram/feed/a/a;
invoke-virtual {v0}, Lcom/instagram/feed/a/a;->o()V
goto :goto_1c
.end method
.method public d()Z
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->e()Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->p()I
move-result v0
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public e()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/a;->ag:Z
return v0
.end method
.method public final f()Z
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->m()Z
move-result v0
return v0
.end method
.method public final g()Z
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/a;->ad:Lcom/instagram/feed/f/a;
invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;
move-result-object v0
sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;
if-eq v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public h()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final i()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/fragment/a;->ai:Z
return v0
.end method
.method public l_()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/c;->l_()V
invoke-virtual {p0}, Lcom/instagram/android/fragment/a;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->h()V
return-void
.end method
.method public m_()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/a;->c(Z)V
return-void
.end method
.method public n_()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public p_()V
.registers 1
invoke-super {p0}, Lcom/instagram/base/a/c;->p_()V
return-void
.end method