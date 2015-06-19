.class final Lcom/spotify/mobile/android/spotlets/search/loader/task/h;
.super Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/loader/task/b;
.field protected final a:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
.field protected final b:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
.field protected final c:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/a;Lcom/spotify/mobile/android/spotlets/search/loader/task/f;Lcom/spotify/mobile/android/spotlets/search/loader/task/f;)V
.registers 5
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;-><init>()V
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->c:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
invoke-virtual {p1, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a(Lcom/spotify/mobile/android/spotlets/search/loader/task/b;)V
return-void
.end method
.method protected final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d()V
return-void
.end method
.method public final a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->c:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->d(Ljava/lang/Object;)V
return-void
.end method
.method public final b(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->c(Ljava/lang/Object;)V
return-void
.end method