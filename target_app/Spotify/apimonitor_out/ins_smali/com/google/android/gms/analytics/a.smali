.class public Lcom/google/android/gms/analytics/a;
.super Lcom/google/android/gms/analytics/c;
.field private static b:Lcom/google/android/gms/analytics/a;
.field private a:Lcom/google/android/gms/analytics/b;
.method static a()Lcom/google/android/gms/analytics/a;
.registers 2
const-class v1, Lcom/google/android/gms/analytics/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/analytics/a;->b:Lcom/google/android/gms/analytics/a;
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()Lcom/google/android/gms/analytics/b;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/a;->a:Lcom/google/android/gms/analytics/b;
return-object v0
.end method