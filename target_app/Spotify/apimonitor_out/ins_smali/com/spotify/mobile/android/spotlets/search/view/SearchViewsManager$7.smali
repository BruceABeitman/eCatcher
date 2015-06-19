.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$7;
.super Lcom/spotify/mobile/android/spotlets/common/adapter/e;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$7;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>()V
return-void
.end method
.method public final isEnabled(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$7;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;
return v0
.end method