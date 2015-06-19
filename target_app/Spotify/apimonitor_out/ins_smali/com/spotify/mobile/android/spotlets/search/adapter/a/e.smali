.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;
.source "SourceFile"
.field private final b:Lcom/spotify/mobile/android/ui/contextmenu/f;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
.registers 4
const-class v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;
return-void
.end method
.method protected final synthetic a(Lcom/spotify/mobile/android/spotlets/search/model/entity/e;)Lcom/spotify/mobile/android/util/dg;
.registers 4
check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;
invoke-super {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/e;)Lcom/spotify/mobile/android/util/dg;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;->isVerified()Z
move-result v1
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/dg;)Lcom/spotify/mobile/android/util/dg;
move-result-object v0
:cond_16
return-object v0
.end method
.method public final bridge synthetic a()Ljava/lang/Class;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;->a()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Ljava/lang/String;
.registers 4
check-cast p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;
iget-boolean v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;->following:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v0
const v1, 0x7f0f0325
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public final bridge synthetic b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
.registers 4
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic b()Ljava/lang/Class;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;->b()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method protected final synthetic e()Lcom/google/common/base/Optional;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
return-object v0
.end method