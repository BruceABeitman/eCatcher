.class public Lcom/google/android/gms/internal/do;
.super Ljava/lang/Object;
.field private final a:Ljava/lang/Object;
.field private b:I
.field private c:I
.field private final d:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/do;->a:Ljava/lang/Object;
iput-object p1, p0, Lcom/google/android/gms/internal/do;->d:Ljava/lang/String;
return-void
.end method
.method public a()Landroid/os/Bundle;
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/do;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "pmnli"
iget v3, p0, Lcom/google/android/gms/internal/do;->b:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "pmnll"
iget v3, p0, Lcom/google/android/gms/internal/do;->c:I
invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
monitor-exit v1
return-object v0
:catchall_18
move-exception v0
monitor-exit v1
:try_end_1a
.catchall {:try_start_3 .. :try_end_1a} :catchall_18
throw v0
.end method
.method public a(II)V
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/do;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput p1, p0, Lcom/google/android/gms/internal/do;->b:I
iput p2, p0, Lcom/google/android/gms/internal/do;->c:I
iget-object v0, p0, Lcom/google/android/gms/internal/do;->d:Ljava/lang/String;
invoke-static {v0, p0}, Lcom/google/android/gms/internal/dm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/do;)V
monitor-exit v1
return-void
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method