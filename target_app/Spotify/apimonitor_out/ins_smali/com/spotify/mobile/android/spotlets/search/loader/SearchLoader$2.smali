.class final Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/common/b/a/e;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Z
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Lcom/spotify/mobile/android/spotlets/common/b/a/d;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader;->a(Lcom/spotify/mobile/android/spotlets/search/loader/e;)V
:cond_14
const/4 v0, 0x0
return v0
.end method