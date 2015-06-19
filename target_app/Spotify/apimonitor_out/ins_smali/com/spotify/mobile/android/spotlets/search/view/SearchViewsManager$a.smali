.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;
.super Lcom/spotify/mobile/android/spotlets/common/adapter/e;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>()V
return-void
.end method
.method public final isEnabled(I)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/view/f;->L()Z
move-result v0
return v0
.end method