.class public Lcom/twidroid/fragments/d/k;
.super Lcom/twidroid/fragments/base/b;
.source "SourceFile"
.field public static final a:Ljava/lang/String;
.field protected b:Lcom/twidroid/model/twitter/User;
.field private c:I
.field private d:Lcom/twidroid/ui/a/p;
.field private e:Lcom/twidroid/net/a/c/i;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/twidroid/fragments/d/k;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/fragments/d/k;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/fragments/d/k;->c:I
return-void
.end method
.method public static a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
.registers 4
new-instance v0, Lcom/twidroid/fragments/d/k;
invoke-direct {v0}, Lcom/twidroid/fragments/d/k;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "user"
invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/k;->setArguments(Landroid/os/Bundle;)V
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/d/k;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/d/k;Lcom/twidroid/net/a/c/i;)Lcom/twidroid/net/a/c/i;
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/d/k;->e:Lcom/twidroid/net/a/c/i;
return-object p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/d/k;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method private b(Lcom/twidroid/model/twitter/User;)V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-static {v1, p1, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/User;I)V
return-void
.end method
.method static synthetic c(Lcom/twidroid/fragments/d/k;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/d/k;)I
.registers 3
iget v0, p0, Lcom/twidroid/fragments/d/k;->c:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/twidroid/fragments/d/k;->c:I
return v0
.end method
.method public S()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_9
const-string v0, ""
:goto_8
return-object v0
:cond_9
const v0, 0x7f0c01b3
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/k;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method protected a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/model/twitter/User;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/d/k;->b(Lcom/twidroid/model/twitter/User;)V
return-void
.end method
.method protected b()V
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->e()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/k;->b(Z)V
return-void
.end method
.method protected b(Ljava/lang/Object;)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->b(Ljava/lang/Object;)V
check-cast p1, Lcom/twidroid/model/twitter/User;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/d/k;->b(Lcom/twidroid/model/twitter/User;)V
return-void
.end method
.method public b(Z)V
.registers 8
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->b(Z)V
if-nez p1, :cond_8
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/fragments/d/k;->c:I
:cond_8
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->b:Lcom/twidroid/model/twitter/User;
if-nez v0, :cond_13
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->M()V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->P()V
:goto_12
return-void
:cond_13
new-instance v0, Lcom/twidroid/fragments/d/n;
iget v1, p0, Lcom/twidroid/fragments/d/k;->c:I
int-to-long v1, v1
iget-object v3, p0, Lcom/twidroid/fragments/d/k;->b:Lcom/twidroid/model/twitter/User;
iget-object v3, v3, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iget-object v4, p0, Lcom/twidroid/fragments/d/k;->e:Lcom/twidroid/net/a/c/i;
move v5, p1
invoke-direct/range {v0 .. v5}, Lcom/twidroid/fragments/d/n;-><init>(JLjava/lang/String;Lcom/twidroid/net/a/c/i;Z)V
new-instance v1, Lcom/twidroid/fragments/d/m;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/d/m;-><init>(Lcom/twidroid/fragments/d/k;)V
const/4 v2, 0x1
new-array v2, v2, [Lcom/twidroid/fragments/d/n;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/twidroid/fragments/d/m;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_12
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/k;->b(Z)V
return-void
.end method
.method protected e()V
.registers 4
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->b:Lcom/twidroid/model/twitter/User;
if-nez v0, :cond_b
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->P()V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->M()V
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->e:Lcom/twidroid/net/a/c/i;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->e:Lcom/twidroid/net/a/c/i;
invoke-virtual {v0}, Lcom/twidroid/net/a/c/i;->c()V
:cond_14
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->d:Lcom/twidroid/ui/a/p;
if-nez v0, :cond_29
new-instance v0, Lcom/twidroid/fragments/d/k$1;
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/d/k;->b:Lcom/twidroid/model/twitter/User;
iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/fragments/d/k$1;-><init>(Lcom/twidroid/fragments/d/k;Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/k;->setListAdapter(Landroid/widget/ListAdapter;)V
goto :goto_a
:cond_29
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->d:Lcom/twidroid/ui/a/p;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/k;->setListAdapter(Landroid/widget/ListAdapter;)V
goto :goto_a
.end method
.method protected g()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/d/k; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_10
const-string v0, "user"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iput-object v0, p0, Lcom/twidroid/fragments/d/k;->b:Lcom/twidroid/model/twitter/User;
:goto_f
const-string v1, " - Lcom/twidroid/fragments/d/k; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_10
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iput-object v0, p0, Lcom/twidroid/fragments/d/k;->b:Lcom/twidroid/model/twitter/User;
goto :goto_f
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/d/k; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onResume()V
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->d:Lcom/twidroid/ui/a/p;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/twidroid/fragments/d/k;->d:Lcom/twidroid/ui/a/p;
invoke-virtual {v0}, Lcom/twidroid/ui/a/p;->getCount()I
move-result v0
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->b()V
:cond_12
const-string v1, " - Lcom/twidroid/fragments/d/k; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/d/k; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "user"
iget-object v1, p0, Lcom/twidroid/fragments/d/k;->b:Lcom/twidroid/model/twitter/User;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, " - Lcom/twidroid/fragments/d/k; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v0, 0x7f0c01ff
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/k;->b(I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/k;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
const v1, 0x7f0c0217
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/d/k;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/handmark/pulltorefresh/library/g;->g:Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V
return-void
.end method
.method public setListAdapter(Landroid/widget/ListAdapter;)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->setListAdapter(Landroid/widget/ListAdapter;)V
check-cast p1, Lcom/twidroid/ui/a/p;
iput-object p1, p0, Lcom/twidroid/fragments/d/k;->d:Lcom/twidroid/ui/a/p;
return-void
.end method