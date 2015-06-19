.class public Lcom/twidroid/fragments/e/aq;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.field private static final d:Ljava/lang/String;
.field private static final e:Ljava/lang/String;
.field private f:I
.field private g:I
.field private final h:Ljava/util/List;
.field private i:Lcom/twidroid/ui/a/am;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-class v1, Lcom/twidroid/fragments/e/aq;
invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".channelId"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/fragments/e/aq;->d:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-class v1, Lcom/twidroid/fragments/e/aq;
invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".page"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/fragments/e/aq;->e:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/fragments/e/aq;->g:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;I)V
.registers 4
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/fragments/e/aq;->g:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
iput-object p1, p0, Lcom/twidroid/fragments/e/aq;->a:Lcom/twidroid/model/twitter/c;
iput p2, p0, Lcom/twidroid/fragments/e/aq;->f:I
return-void
.end method
.method private a(Ljava/util/List;)V
.registers 6
if-eqz p1, :cond_8
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:goto_16
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->i:Lcom/twidroid/ui/a/am;
iget-object v1, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V
goto :goto_8
:cond_23
new-instance v1, Ljava/util/ArrayList;
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_31
:cond_31
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I
move-result v3
if-gez v3, :cond_31
iget-object v3, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_31
iget-object v3, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_31
:cond_51
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_16
.end method
.method public a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/fragments/e/aq;->M()V
invoke-direct {p0, p2}, Lcom/twidroid/fragments/e/aq;->a(Ljava/util/List;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/aq;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
iget v0, p0, Lcom/twidroid/fragments/e/aq;->g:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/twidroid/fragments/e/aq;->g:I
return-void
.end method
.method protected b()V
.registers 1
return-void
.end method
.method public b(Z)V
.registers 5
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V
new-instance v1, Landroid/os/Bundle;
const/4 v0, 0x2
invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V
sget-object v0, Lcom/twidroid/fragments/e/aq;->d:Ljava/lang/String;
iget v2, p0, Lcom/twidroid/fragments/e/aq;->f:I
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
sget-object v2, Lcom/twidroid/fragments/e/aq;->e:Ljava/lang/String;
if-eqz p1, :cond_2f
iget v0, p0, Lcom/twidroid/fragments/e/aq;->g:I
:goto_16
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/aq;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
move-result-object v0
iget v2, p0, Lcom/twidroid/fragments/e/aq;->f:I
invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;
move-result-object v2
if-nez v2, :cond_31
iget v2, p0, Lcom/twidroid/fragments/e/aq;->f:I
invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
:goto_2e
return-void
:cond_2f
const/4 v0, -0x1
goto :goto_16
:cond_31
iget v2, p0, Lcom/twidroid/fragments/e/aq;->f:I
invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
goto :goto_2e
.end method
.method public d()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/aq;->b(Z)V
return-void
.end method
.method protected e()V
.registers 5
new-instance v0, Lcom/twidroid/ui/a/am;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/aq;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
iput-object v0, p0, Lcom/twidroid/fragments/e/aq;->i:Lcom/twidroid/ui/a/am;
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->i:Lcom/twidroid/ui/a/am;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/aq;->setListAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/aq;->N()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/aq;->b(Z)V
return-void
.end method
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
.registers 7
new-instance v0, Lcom/twidroid/fragments/e/ar;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/aq;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/twidroid/fragments/e/aq;->d:Ljava/lang/String;
invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v2
sget-object v3, Lcom/twidroid/fragments/e/aq;->e:Ljava/lang/String;
invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/fragments/e/ar;-><init>(Landroid/content/Context;II)V
return-object v0
.end method
.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/List;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/aq;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
return-void
.end method
.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/aq;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
const/4 v0, 0x1
iput v0, p0, Lcom/twidroid/fragments/e/aq;->g:I
return-void
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/e/aq; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V
const-string v0, "uberchannel"
const-string v1, "view"
iget v2, p0, Lcom/twidroid/fragments/e/aq;->f:I
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/fragments/e/aq; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public x()I
.registers 2
iget v0, p0, Lcom/twidroid/fragments/e/aq;->f:I
return v0
.end method