.class public final Lcom/spotify/mobile/android/spotlets/browse/d;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.implements Lcom/spotify/mobile/android/util/cd;
.field private Y:Landroid/view/View;
.field private Z:Landroid/view/View;
.field private aa:Landroid/view/ViewGroup;
.field private ab:Ljava/lang/String;
.field private ac:Lcom/spotify/mobile/android/util/cc;
.field private ad:Lcom/spotify/mobile/android/util/z;
.field private ae:Lcom/spotify/mobile/android/util/dw;
.field private af:Z
.field private ag:Z
.field private ah:Lcom/spotify/mobile/android/util/tracking/n;
.field private ai:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/f;
.field private i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->af:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ag:Z
return-void
.end method
.method private E()V
.registers 4
const/16 v2, 0xa
monitor-enter p0
:try_start_3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/g;->a()I
move-result v0
if-lez v0, :cond_f
if-ge v0, v2, :cond_f
monitor-exit p0
:goto_e
return-void
:cond_f
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->af:Z
if-eqz v0, :cond_18
monitor-exit p0
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_15
goto :goto_e
:catchall_15
move-exception v0
monitor-exit p0
throw v0
:cond_18
const/4 v0, 0x1
:try_start_19
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->af:Z
monitor-exit p0
:try_end_1c
.catchall {:try_start_19 .. :try_end_1c} :catchall_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->Z:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ai:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/a/g;->a()I
move-result v1
div-int/lit8 v1, v1, 0xa
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/f;->b(II)V
goto :goto_e
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/d;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "title"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "country"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/d;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/browse/d;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/browse/d;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final F()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ac:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cc;->a()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ac:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cc;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f030061
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->aa:Landroid/view/ViewGroup;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ab:Ljava/lang/String;
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->aa:Landroid/view/ViewGroup;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ab:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ab:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
const v0, 0x7f0f00ec
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "title"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ab:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ad:Lcom/spotify/mobile/android/util/z;
new-instance v0, Lcom/spotify/mobile/android/util/cc;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cc;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cd;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ac:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "spotify:app:browse:trending_artists"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ah:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ah:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ah:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->l:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ae:Lcom/spotify/mobile/android/util/dw;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0d0008
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ac:Lcom/spotify/mobile/android/util/cc;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a/g;-><init>(ILcom/spotify/mobile/android/a/b;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "country"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/f;
invoke-direct {v1, p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/f;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ai:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/f;
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 9
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03005e
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->Z:Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->aa:Landroid/view/ViewGroup;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/util/a;->a(Landroid/view/View;)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->Y:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->Z:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
if-eqz p2, :cond_74
const-string v0, "trending_artists"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v4, 0x0
sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->f:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/d;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
const-string v0, "list"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_4b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->a()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_4b
:cond_4b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ab:Ljava/lang/String;
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a015a
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ac:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0159
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ad:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/d;->a(Landroid/widget/ListAdapter;)V
return-void
:cond_74
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->E()V
goto :goto_4b
.end method
.method public final a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
.registers 8
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->af:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->o()Z
move-result v0
if-nez v0, :cond_a
:cond_9
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/g;->a()I
move-result v0
if-lt p3, v0, :cond_9
iput-boolean p4, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ag:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ah:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ah:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V
:cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->Z:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
if-eqz p1, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/g;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/g;->notifyDataSetChanged()V
goto :goto_9
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_9
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/a/g;->a()I
move-result v2
if-ge v0, v2, :cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->i:Lcom/spotify/mobile/android/spotlets/browse/a/g;
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/g;->a(I)Lcom/spotify/mobile/android/spotlets/browse/model/Artist;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_1d
const-string v0, "trending_artists"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v0, "list"
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->a()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ah:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final d(Z)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
if-eqz p1, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->Y:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->E()V
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->Y:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V
goto :goto_14
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/d; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
add-int v0, p2, p3
add-int/lit8 v1, p4, -0x5
add-int/lit8 v1, v1, 0x1
if-lt v0, v1, :cond_13
const/4 v0, 0x1
:goto_9
if-eqz v0, :cond_12
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ag:Z
if-nez v0, :cond_12
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/d;->E()V
:cond_12
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/d; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_9
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/d; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/d; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->s_()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ah:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
return-void
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ae:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/d;->ae:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method