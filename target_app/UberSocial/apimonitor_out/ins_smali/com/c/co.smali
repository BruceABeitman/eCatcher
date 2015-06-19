.class public abstract Lcom/c/co;
.super Ljava/lang/Object;
.implements Lcom/c/df;
.field public static g:I
.field private a:Lcom/c/db;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/c/co;->a:Lcom/c/db;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/c/co;->a:Lcom/c/db;
invoke-interface {v0, p0}, Lcom/c/db;->a(Lcom/c/df;)V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
:cond_a
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lcom/c/db;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/c/co;->a:Lcom/c/db;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method