.class public abstract Lcom/a/a/a/af;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected abstract a()V
.end method
.method protected abstract b()Ljava/lang/Object;
.end method
.method public call()Ljava/lang/Object;
.registers 4
const/4 v1, 0x1
const/4 v2, 0x0
:try_start_2
invoke-virtual {p0}, Lcom/a/a/a/af;->b()Ljava/lang/Object;
:try_end_5
.catchall {:try_start_2 .. :try_end_5} :catchall_28
.catch Lcom/a/a/a/ae; {:try_start_2 .. :try_end_5} :catch_11
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_18
move-result-object v0
:try_start_6
invoke-virtual {p0}, Lcom/a/a/a/af;->a()V
:try_end_9
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a
return-object v0
:catch_a
move-exception v0
new-instance v1, Lcom/a/a/a/ae;
invoke-direct {v1, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V
throw v1
:catch_11
move-exception v0
:try_start_12
throw v0
:try_end_13
.catchall {:try_start_12 .. :try_end_13} :catchall_13
:catchall_13
move-exception v0
:try_start_14
:goto_14
invoke-virtual {p0}, Lcom/a/a/a/af;->a()V
:cond_17
:try_end_17
.catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_1f
throw v0
:catch_18
move-exception v0
:try_start_19
new-instance v2, Lcom/a/a/a/ae;
invoke-direct {v2, v0}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V
throw v2
:try_end_1f
.catchall {:try_start_19 .. :try_end_1f} :catchall_13
:catch_1f
move-exception v2
if-nez v1, :cond_17
new-instance v0, Lcom/a/a/a/ae;
invoke-direct {v0, v2}, Lcom/a/a/a/ae;-><init>(Ljava/io/IOException;)V
throw v0
:catchall_28
move-exception v0
move v1, v2
goto :goto_14
.end method