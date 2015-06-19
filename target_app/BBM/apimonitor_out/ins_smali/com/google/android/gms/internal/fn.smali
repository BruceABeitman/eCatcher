.class public final Lcom/google/android/gms/internal/fn;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/fl;
.field private static CN:Lcom/google/android/gms/internal/fn;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized eI()Lcom/google/android/gms/internal/fl;
.registers 2
const-class v1, Lcom/google/android/gms/internal/fn;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/internal/fn;->CN:Lcom/google/android/gms/internal/fn;
if-nez v0, :cond_e
new-instance v0, Lcom/google/android/gms/internal/fn;
invoke-direct {v0}, Lcom/google/android/gms/internal/fn;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/fn;->CN:Lcom/google/android/gms/internal/fn;
:cond_e
sget-object v0, Lcom/google/android/gms/internal/fn;->CN:Lcom/google/android/gms/internal/fn;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final currentTimeMillis()J
.registers 3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
return-wide v0
.end method