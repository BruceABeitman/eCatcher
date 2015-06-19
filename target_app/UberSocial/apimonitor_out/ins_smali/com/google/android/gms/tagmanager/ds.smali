.class  Lcom/google/android/gms/tagmanager/ds;
.super Ljava/lang/Object;
.field private a:Lcom/google/android/gms/analytics/c;
.field private b:Landroid/content/Context;
.field private c:Lcom/google/android/gms/analytics/r;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ds;->b:Landroid/content/Context;
return-void
.end method
.method private declared-synchronized b(Ljava/lang/String;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ds;->a:Lcom/google/android/gms/analytics/c;
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ds;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ds;->a:Lcom/google/android/gms/analytics/c;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ds;->a:Lcom/google/android/gms/analytics/c;
new-instance v1, Lcom/google/android/gms/tagmanager/dt;
invoke-direct {v1}, Lcom/google/android/gms/tagmanager/dt;-><init>()V
invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/o;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ds;->a:Lcom/google/android/gms/analytics/c;
invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/c;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/r;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ds;->c:Lcom/google/android/gms/analytics/r;
:try_end_1f
.catchall {:try_start_1 .. :try_end_1f} :catchall_21
:cond_1f
monitor-exit p0
return-void
:catchall_21
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/r;
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/ds;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ds;->c:Lcom/google/android/gms/analytics/r;
return-object v0
.end method