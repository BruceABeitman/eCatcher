.class public final Lcom/instagram/common/q/j;
.super Ljava/lang/Object;
.source "NotificationExecutorProvider.java"
.field private static a:Ljava/util/concurrent/Executor;
.method public static declared-synchronized a()Ljava/util/concurrent/Executor;
.registers 3
const-class v1, Lcom/instagram/common/q/j;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/common/q/j;->a:Ljava/util/concurrent/Executor;
if-nez v0, :cond_1b
invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;
move-result-object v0
const-string v2, "notifications"
invoke-virtual {v0, v2}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->b()Lcom/instagram/common/u/c/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;
move-result-object v0
sput-object v0, Lcom/instagram/common/q/j;->a:Ljava/util/concurrent/Executor;
:cond_1b
sget-object v0, Lcom/instagram/common/q/j;->a:Ljava/util/concurrent/Executor;
:try_end_1d
.catchall {:try_start_3 .. :try_end_1d} :catchall_1f
monitor-exit v1
return-object v0
:catchall_1f
move-exception v0
monitor-exit v1
throw v0
.end method