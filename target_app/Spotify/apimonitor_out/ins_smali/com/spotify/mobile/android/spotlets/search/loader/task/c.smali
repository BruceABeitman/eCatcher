.class final Lcom/spotify/mobile/android/spotlets/search/loader/task/c;
.super Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;
.source "SourceFile"
.method constructor <init>(Ljava/lang/Object;J)V
.registers 10
sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
const/4 v5, 0x0
move-object v0, p0
move-wide v3, p2
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/TimeoutOrError$What;Ljava/lang/Object;JB)V
return-void
.end method