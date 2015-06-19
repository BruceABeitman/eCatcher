.class public final Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/ui/menus/f;
.field private b:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;
.field private c:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
.field private d:Landroid/net/Uri;
.field private e:Lcom/spotify/mobile/android/ui/menus/d;
.method public constructor <init>(Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;Lcom/spotify/mobile/android/ui/menus/f;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;-><init>(Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;Lcom/spotify/mobile/android/ui/menus/f;B)V
return-void
.end method
.method private constructor <init>(Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;Lcom/spotify/mobile/android/ui/menus/f;B)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/menus/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->d:Landroid/net/Uri;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->b:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/menus/f;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
return-void
.end method
.method private a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-object v0
.end method
.method public final a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/j;)V
.registers 16
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->a()Landroid/content/Context;
move-result-object v2
invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->u()Z
move-result v0
if-eqz v0, :cond_246
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_246
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->n()Z
move-result v0
if-nez v0, :cond_56
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v0
if-nez v0, :cond_56
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v6
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->l()Z
move-result v5
if-eqz v5, :cond_247
const v0, 0x7f0f018c
:goto_3e
const v7, 0x7f0a013b
invoke-static {p1, v7, v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v7
if-eqz v5, :cond_24c
const v0, 0x7f02019c
:goto_4a
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v7
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$16;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$16;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZLjava/lang/String;)V
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:cond_56
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->b:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;->a:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanDownload;
if-ne v0, v1, :cond_251
const/4 v0, 0x1
:goto_5d
if-eqz v0, :cond_254
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->q()Z
move-result v0
if-eqz v0, :cond_254
const/4 v0, 0x1
:goto_66
if-eqz v0, :cond_95
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v4
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v5
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v7
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->g()I
move-result v8
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->h()I
move-result v9
move-object v3, p1
invoke-virtual/range {v1 .. v9}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
:cond_95
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v0
if-nez v0, :cond_b5
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v4
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v5
invoke-interface {p2, v2}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
const-string v7, ""
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v8
move-object v3, p1
invoke-virtual/range {v1 .. v8}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_b5
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->r()Z
move-result v0
if-eqz v0, :cond_e7
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->p()Z
move-result v0
if-nez v0, :cond_e7
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->o()Z
move-result v0
if-eqz v0, :cond_cd
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->n()Z
move-result v0
if-eqz v0, :cond_e7
:cond_cd
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v0
if-nez v0, :cond_e7
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v4
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v5
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v6
move-object v3, p1
invoke-virtual/range {v1 .. v6}, Lcom/spotify/mobile/android/ui/menus/d;->b(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
:cond_e7
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->n()Z
move-result v0
if-eqz v0, :cond_130
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->p()Z
move-result v0
if-nez v0, :cond_130
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->o()Z
move-result v0
if-nez v0, :cond_130
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v0
if-nez v0, :cond_130
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v6
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->s()Z
move-result v5
if-eqz v5, :cond_257
const v0, 0x7f0f0189
:goto_118
const v7, 0x7f0a013d
invoke-static {p1, v7, v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v7
if-eqz v5, :cond_25c
const v0, 0x7f02019f
:goto_124
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v7
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$12;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$12;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZLjava/lang/String;)V
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:cond_130
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->n()Z
move-result v0
if-eqz v0, :cond_171
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->p()Z
move-result v0
if-nez v0, :cond_171
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->o()Z
move-result v0
if-nez v0, :cond_171
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v0
if-nez v0, :cond_171
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v5
const v0, 0x7f0a0138
const v6, 0x7f0f0185
invoke-static {p1, v0, v6}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v6, 0x7f0201a3
invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v6
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$20;
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/d$20;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:cond_171
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->n()Z
move-result v0
if-eqz v0, :cond_1ba
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->p()Z
move-result v0
if-nez v0, :cond_1ba
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->s()Z
move-result v0
if-nez v0, :cond_1ba
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v0
if-nez v0, :cond_1ba
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v6
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->t()Z
move-result v5
if-eqz v5, :cond_261
const v0, 0x7f0f018b
:goto_1a2
const v7, 0x7f0a013e
invoke-static {p1, v7, v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v7
if-eqz v5, :cond_266
const v0, 0x7f0201a7
:goto_1ae
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v7
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$13;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/d$13;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZLjava/lang/String;)V
invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:cond_1ba
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->c:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
sget-object v1, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;->a:Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate$CanRemovePlaylist;
if-ne v0, v1, :cond_26b
const/4 v0, 0x1
:goto_1c1
if-eqz v0, :cond_246
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->n()Z
move-result v0
if-eqz v0, :cond_246
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->p()Z
move-result v0
if-nez v0, :cond_246
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->o()Z
move-result v0
if-nez v0, :cond_246
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->m()Z
move-result v0
if-nez v0, :cond_246
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->d:Landroid/net/Uri;
const-string v1, "Playlists or folders can be removed from this content, but no content uri specified. You need to call the PlaylistMenuDelegate(Uri contentUri) constructor."
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a:Lcom/spotify/mobile/android/ui/menus/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/menus/f;->b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v3
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->a()Lcom/spotify/mobile/android/util/ViewUri$SubView;
move-result-object v4
invoke-interface {p2, v2}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/spotify/mobile/android/ui/menus/PlaylistMenuDelegate;->d:Landroid/net/Uri;
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->j()J
move-result-wide v7
invoke-interface {p2}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v9
new-instance v10, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v10, v9}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
const/4 v0, -0x1
sget-object v11, Lcom/spotify/mobile/android/ui/menus/d$14;->a:[I
invoke-virtual {v10}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v12
invoke-virtual {v12}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v12
aget v11, v11, v12
packed-switch v11, :pswitch_data_27a
new-instance v11, Ljava/lang/StringBuilder;
const-string v12, "Trying to add \'Remove Playlist or Folder\' for other link type: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v10
invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
move v10, v0
:goto_228
if-ltz v10, :cond_278
const/4 v0, 0x1
:goto_22b
const-string v11, "Unsupported uri type."
invoke-static {v0, v11}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
const v0, 0x7f0a012e
invoke-static {p1, v0, v10}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;II)Landroid/view/MenuItem;
move-result-object v0
const v10, 0x7f02019c
invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v10
new-instance v0, Lcom/spotify/mobile/android/ui/menus/d$21;
invoke-direct/range {v0 .. v9}, Lcom/spotify/mobile/android/ui/menus/d$21;-><init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Landroid/net/Uri;JLjava/lang/String;)V
invoke-interface {v10, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:cond_246
return-void
:cond_247
const v0, 0x7f0f0188
goto/16 :goto_3e
:cond_24c
const v0, 0x7f020199
goto/16 :goto_4a
:cond_251
const/4 v0, 0x0
goto/16 :goto_5d
:cond_254
const/4 v0, 0x0
goto/16 :goto_66
:cond_257
const v0, 0x7f0f0172
goto/16 :goto_118
:cond_25c
const v0, 0x7f02019e
goto/16 :goto_124
:cond_261
const v0, 0x7f0f017f
goto/16 :goto_1a2
:cond_266
const v0, 0x7f0201a0
goto/16 :goto_1ae
:cond_26b
const/4 v0, 0x0
goto/16 :goto_1c1
:pswitch_26e
const v0, 0x7f0f0174
move v10, v0
goto :goto_228
:pswitch_273
const v0, 0x7f0f0175
move v10, v0
goto :goto_228
:cond_278
const/4 v0, 0x0
goto :goto_22b
:pswitch_data_27a
.packed-switch 0x1
:pswitch_26e
:pswitch_273
:pswitch_273
.end packed-switch
.end method