.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/a/k;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;
.source "SourceFile"
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;)V
.registers 4
const-class v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->al:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {p0, p1, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
return-void
.end method
.method public final synthetic a(ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/k;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic a()Ljava/lang/Class;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->a()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public final b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/k;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p2}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic b()Ljava/lang/Class;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->b()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method protected final synthetic e()Lcom/google/common/base/Optional;
.registers 2
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
return-object v0
.end method