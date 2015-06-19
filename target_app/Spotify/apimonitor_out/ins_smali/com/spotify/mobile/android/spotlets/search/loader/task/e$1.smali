.class final Lcom/spotify/mobile/android/spotlets/search/loader/task/e$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$1;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$1;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$1;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->a(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)J
move-result-wide v1
new-instance v3, Lcom/spotify/mobile/android/spotlets/search/loader/task/d;
invoke-direct {v3, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/task/d;-><init>(J)V
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->d(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$1;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->b(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d()V
return-void
.end method