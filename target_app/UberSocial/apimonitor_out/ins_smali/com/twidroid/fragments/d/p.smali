.class public Lcom/twidroid/fragments/d/p;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"
.field public static final d:Ljava/lang/String;
.field private static final f:I
.field public e:I
.field private g:Lcom/twidroid/model/twitter/User;
.field private h:Lcom/twidroid/ui/a/am;
.field private i:Lcom/twidroid/fragments/d/r;
.field private j:Lcom/twidroid/fragments/d/q;
.field private k:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/twidroid/fragments/d/p;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/fragments/d/p;->d:Ljava/lang/String;
sget v0, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I
sput v0, Lcom/twidroid/fragments/d/p;->f:I
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/fragments/d/p;->e:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/d/p;->k:Z
return-void
.end method
.method public static a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
.registers 4
new-instance v0, Lcom/twidroid/fragments/d/p;
invoke-direct {v0}, Lcom/twidroid/fragments/d/p;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "user"
invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/p;->setArguments(Landroid/os/Bundle;)V
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/d/p;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/fragments/d/p;->k:Z
return v0
.end method
.method static synthetic b(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/ui/a/am;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->h:Lcom/twidroid/ui/a/am;
return-object v0
.end method
.method static synthetic f(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic g(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic h(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method public S()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_9
const-string v0, ""
:goto_8
return-object v0
:cond_9
const v0, 0x7f0c01d0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method protected b()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->b(Z)V
return-void
.end method
.method public b(Z)V
.registers 8
const/4 v5, 0x0
const/4 v4, 0x1
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->g:Lcom/twidroid/model/twitter/User;
if-eqz v0, :cond_38
if-eqz p1, :cond_39
new-instance v0, Lcom/twidroid/fragments/d/r;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/d/r;-><init>(Lcom/twidroid/fragments/d/p;)V
iput-object v0, p0, Lcom/twidroid/fragments/d/p;->i:Lcom/twidroid/fragments/d/r;
new-instance v1, Lcom/twidroid/fragments/d/s;
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->h:Lcom/twidroid/ui/a/am;
iget-object v2, p0, Lcom/twidroid/fragments/d/p;->h:Lcom/twidroid/ui/a/am;
invoke-virtual {v2}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v0, v2}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->m()J
move-result-wide v2
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->g:Lcom/twidroid/model/twitter/User;
iget-object v0, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-direct {v1, v2, v3, v0}, Lcom/twidroid/fragments/d/s;-><init>(JLjava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->i:Lcom/twidroid/fragments/d/r;
new-array v2, v4, [Lcom/twidroid/fragments/d/s;
aput-object v1, v2, v5
invoke-virtual {v0, v2}, Lcom/twidroid/fragments/d/r;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:goto_38
:cond_38
return-void
:cond_39
iput v4, p0, Lcom/twidroid/fragments/d/p;->e:I
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->j:Lcom/twidroid/fragments/d/q;
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->j:Lcom/twidroid/fragments/d/q;
invoke-virtual {v0}, Lcom/twidroid/fragments/d/q;->g()Lcom/ubermedia/a/e;
move-result-object v0
sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-eq v0, v1, :cond_4e
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->j:Lcom/twidroid/fragments/d/q;
invoke-virtual {v0, v4}, Lcom/twidroid/fragments/d/q;->b(Z)Z
:cond_4e
new-instance v0, Lcom/twidroid/fragments/d/q;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/d/q;-><init>(Lcom/twidroid/fragments/d/p;)V
iput-object v0, p0, Lcom/twidroid/fragments/d/p;->j:Lcom/twidroid/fragments/d/q;
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->j:Lcom/twidroid/fragments/d/q;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
iget-object v2, p0, Lcom/twidroid/fragments/d/p;->g:Lcom/twidroid/model/twitter/User;
iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
aput-object v2, v1, v5
iget v2, p0, Lcom/twidroid/fragments/d/p;->e:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v4
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/q;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_38
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->b(Z)V
return-void
.end method
.method protected e()V
.registers 6
iget-boolean v0, p0, Lcom/twidroid/fragments/d/p;->k:Z
if-nez v0, :cond_19
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0c0307
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->d(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->P()V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->R()V
:goto_18
return-void
:cond_19
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->h:Lcom/twidroid/ui/a/am;
if-nez v0, :cond_46
new-instance v0, Lcom/twidroid/ui/a/o;
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/d/p;->g:Lcom/twidroid/model/twitter/User;
iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
new-instance v3, Ljava/util/ArrayList;
const/16 v4, 0xa
invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
const/4 v4, 0x0
invoke-direct {v0, v1, v2, v3, v4}, Lcom/twidroid/ui/a/o;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Z)V
iget-object v1, p0, Lcom/twidroid/fragments/d/p;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/o;->a(Lcom/twidroid/net/b/f;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->setListAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
const v0, 0x7f0c0207
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->b(I)V
goto :goto_18
:cond_46
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->h:Lcom/twidroid/ui/a/am;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->setListAdapter(Landroid/widget/ListAdapter;)V
goto :goto_18
.end method
.method protected g()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onAttach(Landroid/app/Activity;)V
instance-of v0, p1, Lcom/twidroid/UberSocialProfile;
if-eqz v0, :cond_f
check-cast p1, Lcom/twidroid/UberSocialProfile;
invoke-virtual {p1}, Lcom/twidroid/UberSocialProfile;->k()Z
move-result v0
iput-boolean v0, p0, Lcom/twidroid/fragments/d/p;->k:Z
:cond_f
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/d/p; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iput-object v0, p0, Lcom/twidroid/fragments/d/p;->g:Lcom/twidroid/model/twitter/User;
new-instance v0, Lcom/twidroid/fragments/d/r;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/d/r;-><init>(Lcom/twidroid/fragments/d/p;)V
iput-object v0, p0, Lcom/twidroid/fragments/d/p;->i:Lcom/twidroid/fragments/d/r;
const-string v1, " - Lcom/twidroid/fragments/d/p; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/d/p; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->h:Lcom/twidroid/ui/a/am;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/twidroid/fragments/d/p;->h:Lcom/twidroid/ui/a/am;
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v0
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->b()V
:cond_12
const-string v1, " - Lcom/twidroid/fragments/d/p; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
iget-boolean v0, p0, Lcom/twidroid/fragments/d/p;->k:Z
if-nez v0, :cond_23
const v0, 0x7f0c0307
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->b(I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->P()V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->R()V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullDownEnabled(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/p;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullUpEnabled(Z)V
:goto_22
return-void
:cond_23
const v0, 0x7f0c0205
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/p;->b(I)V
goto :goto_22
.end method
.method public setListAdapter(Landroid/widget/ListAdapter;)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->setListAdapter(Landroid/widget/ListAdapter;)V
check-cast p1, Lcom/twidroid/ui/a/am;
iput-object p1, p0, Lcom/twidroid/fragments/d/p;->h:Lcom/twidroid/ui/a/am;
return-void
.end method
.method protected t()Z
.registers 2
const/4 v0, 0x0
return v0
.end method