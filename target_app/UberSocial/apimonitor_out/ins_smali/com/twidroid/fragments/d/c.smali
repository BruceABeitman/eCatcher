.class public Lcom/twidroid/fragments/d/c;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"
.field public static final d:Ljava/lang/String;
.field private static final f:I
.field public e:I
.field private g:Lcom/twidroid/model/twitter/User;
.field private h:Lcom/twidroid/ui/a/am;
.method static constructor <clinit>()V
.registers 1
sget v0, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I
sput v0, Lcom/twidroid/fragments/d/c;->f:I
const-class v0, Lcom/twidroid/fragments/d/c;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/fragments/d/c;->d:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/fragments/d/c;->e:I
return-void
.end method
.method public static a(Lcom/twidroid/model/twitter/User;)Landroid/support/v4/app/Fragment;
.registers 4
new-instance v0, Lcom/twidroid/fragments/d/c;
invoke-direct {v0}, Lcom/twidroid/fragments/d/c;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "user"
invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/c;->setArguments(Landroid/os/Bundle;)V
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/ui/a/am;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->h:Lcom/twidroid/ui/a/am;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method public S()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_9
const-string v0, ""
:goto_8
return-object v0
:cond_9
const v0, 0x7f0c01b0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/c;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method protected b()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/c;->b(Z)V
return-void
.end method
.method public b(Z)V
.registers 9
const/4 v6, 0x0
const/4 v5, 0x1
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V
if-eqz p1, :cond_31
new-instance v0, Lcom/twidroid/fragments/d/e;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/d/e;-><init>(Lcom/twidroid/fragments/d/c;)V
iget-object v1, p0, Lcom/twidroid/fragments/d/c;->h:Lcom/twidroid/ui/a/am;
invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v1
if-lez v1, :cond_1d
iget-object v1, p0, Lcom/twidroid/fragments/d/c;->h:Lcom/twidroid/ui/a/am;
invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->d()Ljava/lang/Long;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
:cond_1d
iget-object v1, p0, Lcom/twidroid/fragments/d/c;->g:Lcom/twidroid/model/twitter/User;
iget-object v1, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
new-instance v2, Lcom/twidroid/fragments/d/f;
iget v3, p0, Lcom/twidroid/fragments/d/c;->e:I
int-to-long v3, v3
invoke-direct {v2, v3, v4, v1}, Lcom/twidroid/fragments/d/f;-><init>(JLjava/lang/String;)V
new-array v1, v5, [Lcom/twidroid/fragments/d/f;
aput-object v2, v1, v6
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/e;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:goto_30
return-void
:cond_31
iput v5, p0, Lcom/twidroid/fragments/d/c;->e:I
new-instance v0, Lcom/twidroid/fragments/d/d;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/d/d;-><init>(Lcom/twidroid/fragments/d/c;)V
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
iget-object v2, p0, Lcom/twidroid/fragments/d/c;->g:Lcom/twidroid/model/twitter/User;
iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
aput-object v2, v1, v6
iget v2, p0, Lcom/twidroid/fragments/d/c;->e:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v5
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/d/d;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_30
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/c;->b(Z)V
return-void
.end method
.method protected e()V
.registers 6
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->g:Lcom/twidroid/model/twitter/User;
if-nez v0, :cond_8
invoke-virtual {p0}, Lcom/twidroid/fragments/d/c;->P()V
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->h:Lcom/twidroid/ui/a/am;
if-nez v0, :cond_35
new-instance v0, Lcom/twidroid/ui/a/o;
invoke-virtual {p0}, Lcom/twidroid/fragments/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/d/c;->g:Lcom/twidroid/model/twitter/User;
iget-object v2, v2, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
new-instance v3, Ljava/util/ArrayList;
const/16 v4, 0xa
invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
const/4 v4, 0x0
invoke-direct {v0, v1, v2, v3, v4}, Lcom/twidroid/ui/a/o;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Z)V
iget-object v1, p0, Lcom/twidroid/fragments/d/c;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/o;->a(Lcom/twidroid/net/b/f;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/c;->setListAdapter(Landroid/widget/ListAdapter;)V
:goto_29
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
const v0, 0x7f0c0207
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/c;->b(I)V
goto :goto_7
:cond_35
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->h:Lcom/twidroid/ui/a/am;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/c;->setListAdapter(Landroid/widget/ListAdapter;)V
goto :goto_29
.end method
.method protected g()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/d/c; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/d/c;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "user"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iput-object v0, p0, Lcom/twidroid/fragments/d/c;->g:Lcom/twidroid/model/twitter/User;
const-string v1, " - Lcom/twidroid/fragments/d/c; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/d/c; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->h:Lcom/twidroid/ui/a/am;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/twidroid/fragments/d/c;->h:Lcom/twidroid/ui/a/am;
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v0
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/twidroid/fragments/d/c;->b()V
:cond_12
const-string v1, " - Lcom/twidroid/fragments/d/c; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v0, 0x7f0c0207
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/d/c;->b(I)V
return-void
.end method
.method public setListAdapter(Landroid/widget/ListAdapter;)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->setListAdapter(Landroid/widget/ListAdapter;)V
check-cast p1, Lcom/twidroid/ui/a/am;
iput-object p1, p0, Lcom/twidroid/fragments/d/c;->h:Lcom/twidroid/ui/a/am;
return-void
.end method
.method protected t()Z
.registers 2
const/4 v0, 0x0
return v0
.end method