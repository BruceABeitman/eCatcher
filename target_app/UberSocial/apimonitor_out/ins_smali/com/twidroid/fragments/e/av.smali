.class public Lcom/twidroid/fragments/e/av;
.super Lcom/twidroid/fragments/base/o;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/handmark/pulltorefresh/library/k;
.field private static final a:Ljava/lang/String; = "VideoStreamFragment"
.field private b:Lcom/twidroid/UberSocialApplication;
.field private c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
.field private d:Lcom/twidroid/ui/a/ax;
.field private e:Z
.field private f:Lcom/twidroid/fragments/e/ay;
.field private g:Z
.field private h:Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/twidroid/fragments/base/o;-><init>()V
iput-boolean v0, p0, Lcom/twidroid/fragments/e/av;->e:Z
iput-boolean v0, p0, Lcom/twidroid/fragments/e/av;->g:Z
new-instance v0, Lcom/twidroid/fragments/e/av$2;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/av$2;-><init>(Lcom/twidroid/fragments/e/av;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/av;->h:Landroid/content/BroadcastReceiver;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/av;->setRetainInstance(Z)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/av;Lcom/twidroid/fragments/e/ay;)Lcom/twidroid/fragments/e/ay;
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
return-object p1
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
return-object v0
.end method
.method private a(Z)V
.registers 9
const/4 v6, 0x0
const-wide/16 v2, -0x1
iput-boolean p1, p0, Lcom/twidroid/fragments/e/av;->e:Z
new-instance v4, Lcom/twidroid/fragments/e/ax;
invoke-direct {v4, p0, v6}, Lcom/twidroid/fragments/e/ax;-><init>(Lcom/twidroid/fragments/e/av;Lcom/twidroid/fragments/e/av$1;)V
iput-boolean p1, v4, Lcom/twidroid/fragments/e/ax;->a:Z
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0}, Lcom/twidroid/ui/a/ax;->b()Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v1}, Lcom/twidroid/ui/a/ax;->j()Lcom/twidroid/model/twitter/Tweet;
move-result-object v5
if-eqz v0, :cond_3b
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->m()J
move-result-wide v0
:goto_22
iput-wide v0, v4, Lcom/twidroid/fragments/e/ax;->b:J
if-eqz v5, :cond_2a
invoke-virtual {v5}, Lcom/twidroid/model/twitter/Tweet;->m()J
move-result-wide v2
:cond_2a
iput-wide v2, v4, Lcom/twidroid/fragments/e/ax;->c:J
:goto_2c
new-instance v0, Lcom/twidroid/fragments/e/aw;
invoke-direct {v0, p0, v6}, Lcom/twidroid/fragments/e/aw;-><init>(Lcom/twidroid/fragments/e/av;Lcom/twidroid/fragments/e/av$1;)V
const/4 v1, 0x1
new-array v1, v1, [Lcom/twidroid/fragments/e/ax;
const/4 v2, 0x0
aput-object v4, v1, v2
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/aw;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
:cond_3b
move-wide v0, v2
goto :goto_22
:cond_3d
iput-wide v2, v4, Lcom/twidroid/fragments/e/ax;->b:J
iput-wide v2, v4, Lcom/twidroid/fragments/e/ax;->c:J
goto :goto_2c
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/av;Lcom/twidroid/ui/StringUrlSpan;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/av;->a(Lcom/twidroid/ui/StringUrlSpan;)Z
move-result v0
return v0
.end method
.method private a(Lcom/twidroid/ui/StringUrlSpan;)Z
.registers 8
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v2
array-length v3, v2
move v1, v0
:goto_7
if-ge v1, v3, :cond_1a
aget-object v4, v2, v1
instance-of v5, v4, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v5, :cond_1b
invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/twidroid/d/m;->c(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_1b
const/4 v0, 0x1
:cond_1a
return v0
:cond_1b
add-int/lit8 v1, v1, 0x1
goto :goto_7
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/a/ax;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->b:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/fragments/e/ay;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
return-object v0
.end method
.method private e()Z
.registers 3
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
const/4 v1, 0x2
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->y()Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method protected F()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/av;->a(Z)V
return-void
.end method
.method protected b()V
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/twidroid/fragments/e/av;->g:Z
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
iput-boolean v2, p0, Lcom/twidroid/fragments/e/av;->g:Z
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
if-nez v0, :cond_35
new-instance v0, Lcom/twidroid/ui/a/ax;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const/4 v4, 0x0
invoke-direct {v0, v3, v4, v2}, Lcom/twidroid/ui/a/ax;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
iput-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
iget-object v3, p0, Lcom/twidroid/fragments/e/av;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v3}, Lcom/twidroid/ui/a/ax;->a(Lcom/twidroid/net/b/f;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-direct {p0}, Lcom/twidroid/fragments/e/av;->e()Z
move-result v3
invoke-virtual {v0, v3}, Lcom/twidroid/ui/a/ax;->a(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
iget-object v3, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0, v3}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
invoke-virtual {v0, p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
:cond_35
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
iget-object v0, v0, Lcom/twidroid/fragments/e/ay;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_53
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
iget-object v0, v0, Lcom/twidroid/fragments/e/ay;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_53
:cond_4d
invoke-direct {p0, v1}, Lcom/twidroid/fragments/e/av;->a(Z)V
iput-boolean v1, p0, Lcom/twidroid/fragments/e/av;->g:Z
goto :goto_6
:cond_53
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0}, Lcom/twidroid/ui/a/ax;->getCount()I
move-result v0
if-nez v0, :cond_84
const/4 v0, -0x1
:goto_5c
iget-object v3, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
iget-object v4, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
iget-object v4, v4, Lcom/twidroid/fragments/e/ay;->b:Ljava/util/List;
iget-boolean v5, p0, Lcom/twidroid/fragments/e/av;->e:Z
if-nez v5, :cond_93
:goto_66
invoke-virtual {v3, v4, v1, v2}, Lcom/twidroid/ui/a/ax;->a(Ljava/util/List;ZZ)V
iget-object v2, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
iget-object v3, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
iget-object v3, v3, Lcom/twidroid/fragments/e/ay;->a:Ljava/util/List;
invoke-virtual {v2, v3}, Lcom/twidroid/ui/a/ax;->e(Ljava/util/List;)V
iget-object v2, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v2}, Lcom/twidroid/ui/a/ax;->notifyDataSetChanged()V
iget-object v2, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
new-instance v3, Lcom/twidroid/fragments/e/av$1;
invoke-direct {v3, p0, v0}, Lcom/twidroid/fragments/e/av$1;-><init>(Lcom/twidroid/fragments/e/av;I)V
invoke-virtual {v2, v3}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->post(Ljava/lang/Runnable;)Z
iput-boolean v1, p0, Lcom/twidroid/fragments/e/av;->g:Z
goto :goto_6
:cond_84
iget-boolean v0, p0, Lcom/twidroid/fragments/e/av;->e:Z
if-eqz v0, :cond_91
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->getFirstVisiblePosition()I
move-result v0
add-int/lit8 v0, v0, 0x2
goto :goto_5c
:cond_91
move v0, v1
goto :goto_5c
:cond_93
move v2, v1
goto :goto_66
.end method
.method public b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/av;->a(Z)V
return-void
.end method
.method protected c()Ljava/lang/String;
.registers 2
const-string v0, "VideoStreamFragment"
return-object v0
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/av;->a(Z)V
return-void
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/o;->onAttach(Landroid/app/Activity;)V
invoke-static {p1}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/av;->b:Lcom/twidroid/UberSocialApplication;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/twidroid/fragments/e/av; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/o;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->F:Lcom/twidroid/net/b/f;
if-nez v0, :cond_24
new-instance v0, Lcom/twidroid/net/b/f;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/16 v2, 0x3e8
invoke-direct {v0, v1, v2}, Lcom/twidroid/net/b/f;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/twidroid/fragments/e/av;->F:Lcom/twidroid/net/b/f;
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->F:Lcom/twidroid/net/b/f;
iget-object v1, p0, Lcom/twidroid/fragments/e/av;->b:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V
:goto_1f
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/av;->setHasOptionsMenu(Z)V
const-string v1, " - Lcom/twidroid/fragments/e/av; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_24
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->F:Lcom/twidroid/net/b/f;
iget-object v1, p0, Lcom/twidroid/fragments/e/av;->b:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V
goto :goto_1f
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/av; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v2, 0x7f0c01b4
const/4 v0, 0x0
const/4 v1, 0x7
invoke-interface {p1, v0, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f020116
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/o;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
const-string v1, " - Lcom/twidroid/fragments/e/av; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
const/4 v1, 0x0
const/4 v5, 0x1
const v0, 0x7f03003b
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v0, 0x7f0900c0
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
iput-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
invoke-virtual {v0, p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V
new-instance v3, Lcom/twidroid/ui/a/ax;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
if-nez v0, :cond_5e
move-object v0, v1
:goto_24
invoke-direct {v3, v4, v0, v5}, Lcom/twidroid/ui/a/ax;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
iput-object v3, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
iget-object v1, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
iget-object v1, v1, Lcom/twidroid/fragments/e/ay;->a:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/ax;->e(Ljava/util/List;)V
:cond_36
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
iget-object v1, p0, Lcom/twidroid/fragments/e/av;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/ax;->a(Lcom/twidroid/net/b/f;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-direct {p0}, Lcom/twidroid/fragments/e/av;->e()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/ax;->a(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
iget-object v1, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
invoke-virtual {v0, p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-direct {p0}, Lcom/twidroid/fragments/e/av;->e()Z
move-result v0
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
invoke-virtual {v0, v5}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setNumColumns(I)V
:goto_5d
return-object v2
:cond_5e
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
iget-object v0, v0, Lcom/twidroid/fragments/e/ay;->b:Ljava/util/List;
goto :goto_24
:cond_63
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setNumColumns(I)V
goto :goto_5d
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/av; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/ax;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_b
:goto_a
const-string v1, " - Lcom/twidroid/fragments/e/av; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_b
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/ax;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, v1, v2, v3}, Lcom/twidroid/d/a;->a(Lcom/twidroid/model/twitter/Tweet;Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Z)V
const-string v0, "video/view_video"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
goto :goto_a
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/e/av; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
const v1, 0x7f0c01b4
if-ne v0, v1, :cond_1d
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
if-nez v0, :cond_f
const/4 v0, 0x0
:goto_e
move v2, v0
const-string v1, " - Lcom/twidroid/fragments/e/av; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_f
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->c:Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
iget-object v1, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0}, Lcom/twidroid/ui/a/ax;->notifyDataSetChanged()V
const/4 v0, 0x1
goto :goto_e
:cond_1d
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/o;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
goto :goto_e
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/e/av; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/o;->onPause()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/av;->h:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const-string v1, " - Lcom/twidroid/fragments/e/av; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
.registers 4
const v1, 0x7f0c01b4
invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
if-eqz v0, :cond_11
invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
:cond_11
return-void
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/e/av; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/o;->onResume()V
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "timelines.jumptotop"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/av;->h:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
const-string v0, "video/view_stream"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
const-string v1, " - Lcom/twidroid/fragments/e/av; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/e/av; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/o;->onStart()V
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->f:Lcom/twidroid/fragments/e/ay;
iget-object v0, v0, Lcom/twidroid/fragments/e/ay;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_15
:cond_11
invoke-virtual {p0}, Lcom/twidroid/fragments/e/av;->b()V
:goto_14
const-string v1, " - Lcom/twidroid/fragments/e/av; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_15
iget-object v0, p0, Lcom/twidroid/fragments/e/av;->d:Lcom/twidroid/ui/a/ax;
invoke-virtual {v0}, Lcom/twidroid/ui/a/ax;->notifyDataSetChanged()V
goto :goto_14
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/e/av; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/o;->onStop()V
const-string v1, " - Lcom/twidroid/fragments/e/av; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method