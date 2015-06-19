.class  Lcom/google/android/gms/analytics/bg;
.super Ljava/util/TimerTask;
.field final synthetic a:Lcom/google/android/gms/analytics/be;
.method private constructor <init>(Lcom/google/android/gms/analytics/be;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/analytics/be;Lcom/google/android/gms/analytics/be$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bg;-><init>(Lcom/google/android/gms/analytics/be;)V
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-static {v0}, Lcom/google/android/gms/analytics/be;->b(Lcom/google/android/gms/analytics/be;)Lcom/google/android/gms/analytics/bf;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/bf;->b:Lcom/google/android/gms/analytics/bf;
if-ne v0, v1, :cond_3c
iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-static {v0}, Lcom/google/android/gms/analytics/be;->e(Lcom/google/android/gms/analytics/be;)Ljava/util/Queue;
move-result-object v0
invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-static {v0}, Lcom/google/android/gms/analytics/be;->f(Lcom/google/android/gms/analytics/be;)J
move-result-wide v0
iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-static {v2}, Lcom/google/android/gms/analytics/be;->g(Lcom/google/android/gms/analytics/be;)J
move-result-wide v2
add-long/2addr v0, v2
iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-static {v2}, Lcom/google/android/gms/analytics/be;->h(Lcom/google/android/gms/analytics/be;)Lcom/google/android/gms/analytics/at;
move-result-object v2
invoke-interface {v2}, Lcom/google/android/gms/analytics/at;->a()J
move-result-wide v2
cmp-long v0, v0, v2
if-gez v0, :cond_3c
const-string v0, "Disconnecting due to inactivity"
invoke-static {v0}, Lcom/google/android/gms/analytics/w;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-static {v0}, Lcom/google/android/gms/analytics/be;->i(Lcom/google/android/gms/analytics/be;)V
:goto_3b
return-void
:cond_3c
iget-object v0, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-static {v0}, Lcom/google/android/gms/analytics/be;->j(Lcom/google/android/gms/analytics/be;)Ljava/util/Timer;
move-result-object v0
new-instance v1, Lcom/google/android/gms/analytics/bg;
iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/bg;-><init>(Lcom/google/android/gms/analytics/be;)V
iget-object v2, p0, Lcom/google/android/gms/analytics/bg;->a:Lcom/google/android/gms/analytics/be;
invoke-static {v2}, Lcom/google/android/gms/analytics/be;->g(Lcom/google/android/gms/analytics/be;)J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
goto :goto_3b
.end method