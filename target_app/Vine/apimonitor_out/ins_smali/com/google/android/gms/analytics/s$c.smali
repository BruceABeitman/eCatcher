.class  Lcom/google/android/gms/analytics/s$c;
.super Ljava/util/TimerTask;
.field final synthetic ut:Lcom/google/android/gms/analytics/s;
.method private constructor <init>(Lcom/google/android/gms/analytics/s;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/s$c;->ut:Lcom/google/android/gms/analytics/s;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/analytics/s;Lcom/google/android/gms/analytics/s$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/s$c;-><init>(Lcom/google/android/gms/analytics/s;)V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/analytics/s$c;->ut:Lcom/google/android/gms/analytics/s;
invoke-static {v0}, Lcom/google/android/gms/analytics/s;->b(Lcom/google/android/gms/analytics/s;)Lcom/google/android/gms/analytics/s$a;
move-result-object v0
sget-object v1, Lcom/google/android/gms/analytics/s$a;->uv:Lcom/google/android/gms/analytics/s$a;
if-ne v0, v1, :cond_f
iget-object v0, p0, Lcom/google/android/gms/analytics/s$c;->ut:Lcom/google/android/gms/analytics/s;
invoke-static {v0}, Lcom/google/android/gms/analytics/s;->c(Lcom/google/android/gms/analytics/s;)V
:cond_f
return-void
.end method