.class public final Lcom/instagram/i/c/a;
.super Lcom/instagram/base/a/c;
.source "NewsfeedFollowRequestsFragment.java"
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/user/e/a/a/e;
.field private aa:Lcom/instagram/common/a/a/i;
.field private ab:Landroid/content/IntentFilter;
.field private ac:Lcom/instagram/user/follow/h;
.field private ad:Landroid/content/BroadcastReceiver;
.field private i:Lcom/instagram/i/a/c;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V
new-instance v0, Lcom/instagram/i/c/b;
invoke-direct {v0, p0}, Lcom/instagram/i/c/b;-><init>(Lcom/instagram/i/c/a;)V
iput-object v0, p0, Lcom/instagram/i/c/a;->ad:Landroid/content/BroadcastReceiver;
return-void
.end method
.method private U()V
.registers 2
invoke-direct {p0}, Lcom/instagram/i/c/a;->V()Lcom/instagram/i/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/a/c;->isEmpty()Z
move-result v0
if-eqz v0, :cond_18
invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/e/a;->b()V
invoke-virtual {p0}, Lcom/instagram/i/c/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V
:cond_18
return-void
.end method
.method private V()Lcom/instagram/i/a/c;
.registers 4
iget-object v0, p0, Lcom/instagram/i/c/a;->i:Lcom/instagram/i/a/c;
if-nez v0, :cond_11
new-instance v0, Lcom/instagram/i/a/c;
invoke-virtual {p0}, Lcom/instagram/i/c/a;->n()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/i/c/a;->ac:Lcom/instagram/user/follow/h;
invoke-direct {v0, v1, v2, p0}, Lcom/instagram/i/a/c;-><init>(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/e/a/a/e;)V
iput-object v0, p0, Lcom/instagram/i/c/a;->i:Lcom/instagram/i/a/c;
:cond_11
iget-object v0, p0, Lcom/instagram/i/c/a;->i:Lcom/instagram/i/a/c;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/i/c/a;)Lcom/instagram/i/a/c;
.registers 2
invoke-direct {p0}, Lcom/instagram/i/c/a;->V()Lcom/instagram/i/a/c;
move-result-object v0
return-object v0
.end method
.method private a(II)V
.registers 6
invoke-direct {p0}, Lcom/instagram/i/c/a;->V()Lcom/instagram/i/a/c;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/i/a/c;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->a(Ljava/lang/Boolean;)V
sget v1, Lcom/instagram/user/c/g;->d:I
if-eq p2, v1, :cond_1e
invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v1
sget-object v2, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
if-ne v1, v2, :cond_2c
:cond_1e
invoke-direct {p0}, Lcom/instagram/i/c/a;->V()Lcom/instagram/i/a/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/i/a/c;->a(Ljava/lang/Object;)V
:goto_25
invoke-direct {p0, p2, v0}, Lcom/instagram/i/c/a;->a(ILcom/instagram/user/c/a;)V
invoke-direct {p0}, Lcom/instagram/i/c/a;->U()V
return-void
:cond_2c
invoke-direct {p0}, Lcom/instagram/i/c/a;->V()Lcom/instagram/i/a/c;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/i/a/c;->notifyDataSetChanged()V
goto :goto_25
.end method
.method private a(ILcom/instagram/user/c/a;)V
.registers 6
new-instance v0, Lcom/instagram/user/follow/i;
invoke-virtual {p0}, Lcom/instagram/i/c/a;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/i/c/a;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-direct {v0, v1, v2, p1, p2}, Lcom/instagram/user/follow/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/user/c/a;)V
invoke-virtual {v0}, Lcom/instagram/user/follow/i;->h()V
return-void
.end method
.method static synthetic a(Lcom/instagram/i/c/a;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/i/c/a;->a(Ljava/util/List;)V
return-void
.end method
.method private a(Ljava/util/List;)V
.registers 7
new-instance v0, Lcom/instagram/user/follow/a;
invoke-virtual {p0}, Lcom/instagram/i/c/a;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/i/c/a;->y()Landroid/support/v4/app/an;
move-result-object v2
const/4 v3, 0x1
new-instance v4, Lcom/instagram/i/c/c;
invoke-direct {v4, p0}, Lcom/instagram/i/c/c;-><init>(Lcom/instagram/i/c/a;)V
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
invoke-virtual {v0, p1}, Lcom/instagram/user/follow/a;->a(Ljava/lang/Iterable;)V
return-void
.end method
.method private d()V
.registers 5
iget-object v0, p0, Lcom/instagram/i/c/a;->aa:Lcom/instagram/common/a/a/i;
new-instance v1, Lcom/instagram/user/e/a;
invoke-direct {v1}, Lcom/instagram/user/e/a;-><init>()V
new-instance v2, Lcom/instagram/i/c/d;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/instagram/i/c/d;-><init>(Lcom/instagram/i/c/a;B)V
invoke-virtual {v1, v2}, Lcom/instagram/user/e/a;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/i;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method
.method public final G()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/c;->G()V
invoke-virtual {p0}, Lcom/instagram/i/c/a;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/i/c/a;->ad:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->layout_listview:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(I)V
.registers 6
invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/i/c/a;->p()Landroid/support/v4/app/s;
move-result-object v2
iget-object v0, p0, Lcom/instagram/i/c/a;->i:Lcom/instagram/i/a/c;
invoke-virtual {v0, p1}, Lcom/instagram/i/a/c;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
const/4 v3, 0x0
invoke-interface {v1, v2, v0, v3}, Lcom/instagram/n/f/e;->a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/common/a/a/i;
invoke-virtual {p0}, Lcom/instagram/i/c/a;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/i/c/a;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V
iput-object v0, p0, Lcom/instagram/i/c/a;->aa:Lcom/instagram/common/a/a/i;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
iput-object v0, p0, Lcom/instagram/i/c/a;->ab:Landroid/content/IntentFilter;
iget-object v0, p0, Lcom/instagram/i/c/a;->ab:Landroid/content/IntentFilter;
const-string v1, "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/i/c/a;->ab:Landroid/content/IntentFilter;
const-string v1, "ActionBarService.action_bar_back_click"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/instagram/i/c/a;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/i/c/a;->ad:Landroid/content/BroadcastReceiver;
iget-object v2, p0, Lcom/instagram/i/c/a;->ab:Landroid/content/IntentFilter;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
sget-object v0, Lcom/instagram/l/c;->d:Lcom/instagram/l/a;
invoke-virtual {v0}, Lcom/instagram/l/a;->b()Z
move-result v0
if-eqz v0, :cond_4d
sget-object v0, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;
:goto_40
iput-object v0, p0, Lcom/instagram/i/c/a;->ac:Lcom/instagram/user/follow/h;
invoke-direct {p0}, Lcom/instagram/i/c/a;->V()Lcom/instagram/i/a/c;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/i/c/a;->a(Landroid/widget/ListAdapter;)V
invoke-direct {p0}, Lcom/instagram/i/c/a;->d()V
return-void
:cond_4d
sget-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;
goto :goto_40
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 3
sget v0, Lcom/facebook/az;->follow_requests_title:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
const/4 v0, 0x1
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
return-void
.end method
.method public final f(I)V
.registers 3
sget v0, Lcom/instagram/user/c/g;->d:I
invoke-direct {p0, p1, v0}, Lcom/instagram/i/c/a;->a(II)V
return-void
.end method
.method public final g(I)V
.registers 3
sget v0, Lcom/instagram/user/c/g;->e:I
invoke-direct {p0, p1, v0}, Lcom/instagram/i/c/a;->a(II)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "follow_requests"
return-object v0
.end method