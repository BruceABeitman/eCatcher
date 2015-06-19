.class public Lcom/twidroid/fragments/e/n;
.super Lcom/twidroid/fragments/base/e;
.source "SourceFile"
.field private static final I:Ljava/lang/String; = "ListsFragment"
.field private static final J:I = 0x14
.field  G:Lcom/twidroid/ui/a/ap;
.field  H:Lcom/twidroid/model/twitter/d;
.field private K:Lcom/twidroid/fragments/e/p;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/fragments/e/n;->H:Lcom/twidroid/model/twitter/d;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
.registers 3
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/fragments/e/n;->H:Lcom/twidroid/model/twitter/d;
iput-object p1, p0, Lcom/twidroid/fragments/e/n;->a:Lcom/twidroid/model/twitter/c;
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/n;Lcom/twidroid/UberSocialApplication;)Lcom/twidroid/UberSocialApplication;
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/n;->c:Lcom/twidroid/UberSocialApplication;
return-object p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method public S()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/ui/a/ap;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->u:Lcom/twidroid/net/c/a/f;
const v1, 0x7f0c01b5
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_15
return-object v0
:cond_16
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->H:Lcom/twidroid/model/twitter/d;
if-nez v0, :cond_1d
const-string v0, "Twitter List"
goto :goto_15
:cond_1d
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->H:Lcom/twidroid/model/twitter/d;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->d()Ljava/lang/String;
move-result-object v0
goto :goto_15
.end method
.method public Z()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->H:Lcom/twidroid/model/twitter/d;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/n;->b(Z)V
return-void
.end method
.method protected b(Lcom/twidroid/model/twitter/c;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V
iput-object p1, p0, Lcom/twidroid/fragments/e/n;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->e()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->d()V
:cond_11
return-void
.end method
.method public b(Z)V
.registers 6
const/4 v3, 0x1
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->K:Lcom/twidroid/fragments/e/p;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->K:Lcom/twidroid/fragments/e/p;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/p;->g()Lcom/ubermedia/a/e;
move-result-object v0
sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-eq v0, v1, :cond_17
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->K:Lcom/twidroid/fragments/e/p;
invoke-virtual {v0, v3}, Lcom/twidroid/fragments/e/p;->b(Z)Z
:cond_17
new-instance v0, Lcom/twidroid/fragments/e/q;
iget-object v1, p0, Lcom/twidroid/fragments/e/n;->a:Lcom/twidroid/model/twitter/c;
iget-object v2, p0, Lcom/twidroid/fragments/e/n;->c:Lcom/twidroid/UberSocialApplication;
invoke-direct {v0, p0, v1, p1, v2}, Lcom/twidroid/fragments/e/q;-><init>(Lcom/twidroid/fragments/e/n;Lcom/twidroid/model/twitter/c;ZLcom/twidroid/UberSocialApplication;)V
new-instance v1, Lcom/twidroid/fragments/e/p;
invoke-direct {v1, p0, p0}, Lcom/twidroid/fragments/e/p;-><init>(Lcom/twidroid/fragments/e/n;Lcom/twidroid/fragments/e/n;)V
new-array v2, v3, [Lcom/twidroid/fragments/e/q;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/twidroid/fragments/e/p;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/p;
iput-object v0, p0, Lcom/twidroid/fragments/e/n;->K:Lcom/twidroid/fragments/e/p;
return-void
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/n;->b(Z)V
return-void
.end method
.method protected e()V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Lcom/twidroid/ui/a/ap;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Lcom/twidroid/ui/a/ap;-><init>(Landroid/app/Activity;Z)V
iput-object v0, p0, Lcom/twidroid/fragments/e/n;->G:Lcom/twidroid/ui/a/ap;
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->G:Lcom/twidroid/ui/a/ap;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/n;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->getListView()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V
goto :goto_6
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/e/n;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/n;->a:Lcom/twidroid/model/twitter/c;
invoke-super {p0, p1, p2, p3}, Lcom/twidroid/fragments/base/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v0, 0x7f0c010d
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/n;->b(I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullUpEnabled(Z)V
return-void
.end method
.method protected u()Z
.registers 3
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v1
if-nez v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-virtual {p0}, Lcom/twidroid/fragments/e/n;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v1
instance-of v1, v1, Lcom/twidroid/ui/a/ap;
if-nez v1, :cond_7
const/4 v0, 0x1
goto :goto_7
.end method