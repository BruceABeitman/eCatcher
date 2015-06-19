.class public final Lcom/spotify/mobile/android/spotlets/artist/g;
.super Lcom/spotify/mobile/android/spotlets/artist/a;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ad;
.field private Y:Lcom/spotify/mobile/android/ui/view/j;
.field private b:Landroid/widget/ListView;
.field private c:Ljava/lang/String;
.field private d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.field private e:Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
.field private f:Lcom/spotify/mobile/android/ui/adapter/o;
.field private g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;
.field private h:Lcom/spotify/mobile/android/spotlets/artist/view/e;
.field private i:Landroid/view/View$OnClickListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/g$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/g$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/g;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->i:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/g$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/g$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/g;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->Y:Lcom/spotify/mobile/android/ui/view/j;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/g;)Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
return-object v0
.end method
.method protected final E()Landroid/view/View;
.registers 8
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03008b
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v6
const v0, 0x102000a
invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->b:Landroid/widget/ListView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->b:Landroid/widget/ListView;
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const-string v1, ""
sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists;->a:Ljava/util/List;
sget-object v3, Lcom/spotify/mobile/android/spotlets/artist/util/Playlists;->b:Lcom/spotify/mobile/android/util/cw;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->Y:Lcom/spotify/mobile/android/ui/view/j;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->b:Landroid/widget/ListView;
invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->k()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090012
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
const v1, 0x7f0f022e
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->b:Landroid/widget/ListView;
invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
return-object v6
.end method
.method protected final F()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->d:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
return-void
.end method
.method public final H()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a()V
return-void
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->c:Ljava/lang/String;
if-nez v0, :cond_c
const v0, 0x7f0f005e
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->c:Ljava/lang/String;
goto :goto_b
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/a;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "artist_name"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->c:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->c()Lcom/spotify/mobile/android/spotlets/artist/b/b;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/b;->f()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;
return-void
.end method
.method protected final b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
.registers 7
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->i:Landroid/view/View$OnClickListener;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/e;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->h:Lcom/spotify/mobile/android/spotlets/artist/view/e;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->h:Lcom/spotify/mobile/android/spotlets/artist/view/e;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/e;)V
invoke-virtual {v0, p1, v4}, Lcom/spotify/mobile/android/spotlets/artist/adapters/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;Z)Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->f:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->f:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->e:Lcom/spotify/mobile/android/spotlets/artist/adapters/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f0f0068
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->f:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->b:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->f:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/artist/g; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;
check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
iget-object v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;
invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Landroid/view/ContextMenu;Landroid/view/View;)V
:goto_d
const-string v1, " - Lcom/spotify/mobile/android/spotlets/artist/g; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->g:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Landroid/view/ContextMenu;Landroid/view/View;)V
goto :goto_d
.end method
.method public final x()V
.registers 3
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->x()V
const-class v0, Lcom/spotify/mobile/android/util/ac;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ac;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/ac;->a(Lcom/spotify/mobile/android/util/ad;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->c:Ljava/lang/String;
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/g;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/g;->c:Ljava/lang/String;
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
:cond_1d
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/artist/a;->y()V
const-class v0, Lcom/spotify/mobile/android/util/ac;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ac;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ac;->a()V
return-void
.end method