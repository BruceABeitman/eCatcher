.class public final Lcom/google/android/gms/internal/ee;
.super Ljava/lang/Object;
.field private final a:Ljava/lang/Object;
.field private b:I
.field private c:I
.field private final d:Lcom/google/android/gms/internal/eb;
.field private final e:Ljava/lang/String;
.method private constructor <init>(Lcom/google/android/gms/internal/eb;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ee;->a:Ljava/lang/Object;
iput-object p1, p0, Lcom/google/android/gms/internal/ee;->d:Lcom/google/android/gms/internal/eb;
iput-object p2, p0, Lcom/google/android/gms/internal/ee;->e:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/google/android/gms/internal/eb;->a()Lcom/google/android/gms/internal/eb;
move-result-object v0
invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ee;-><init>(Lcom/google/android/gms/internal/eb;Ljava/lang/String;)V
return-void
.end method
.method public final a()Landroid/os/Bundle;
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/ee;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "pmnli"
iget v3, p0, Lcom/google/android/gms/internal/ee;->b:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "pmnll"
iget v3, p0, Lcom/google/android/gms/internal/ee;->c:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
monitor-exit v1
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_18
return-object v0
:catchall_18
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a(II)V
.registers 6
iget-object v1, p0, Lcom/google/android/gms/internal/ee;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput p1, p0, Lcom/google/android/gms/internal/ee;->b:I
iput p2, p0, Lcom/google/android/gms/internal/ee;->c:I
iget-object v0, p0, Lcom/google/android/gms/internal/ee;->d:Lcom/google/android/gms/internal/eb;
iget-object v2, p0, Lcom/google/android/gms/internal/ee;->e:Ljava/lang/String;
invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/eb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ee;)V
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_10
return-void
:catchall_10
move-exception v0
monitor-exit v1
throw v0
.end method