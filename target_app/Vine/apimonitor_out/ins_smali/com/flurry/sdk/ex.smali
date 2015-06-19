.class public Lcom/flurry/sdk/ex;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:J
.field private static b:Lcom/flurry/sdk/ex;
.field private final c:Lcom/flurry/sdk/ey;
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, 0x3e8
sput-wide v0, Lcom/flurry/sdk/ex;->a:J
const/4 v0, 0x0
sput-object v0, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/flurry/sdk/ey;
invoke-direct {v0}, Lcom/flurry/sdk/ey;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
sget-wide v1, Lcom/flurry/sdk/ex;->a:J
invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ey;->a(J)V
iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/flurry/sdk/ey;->a(Z)V
return-void
.end method
.method public static declared-synchronized a()Lcom/flurry/sdk/ex;
.registers 2
const-class v1, Lcom/flurry/sdk/ex;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;
if-nez v0, :cond_e
new-instance v0, Lcom/flurry/sdk/ex;
invoke-direct {v0}, Lcom/flurry/sdk/ex;-><init>()V
sput-object v0, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;
:cond_e
sget-object v0, Lcom/flurry/sdk/ex;->b:Lcom/flurry/sdk/ex;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public declared-synchronized a(Lcom/flurry/sdk/ey$a;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
invoke-virtual {v0, p1}, Lcom/flurry/sdk/ey;->a(Lcom/flurry/sdk/ey$a;)V
iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
invoke-virtual {v0}, Lcom/flurry/sdk/ey;->c()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
invoke-virtual {v0}, Lcom/flurry/sdk/ey;->d()I
move-result v0
if-lez v0, :cond_1b
iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
invoke-virtual {v0}, Lcom/flurry/sdk/ey;->a()V
:cond_1b
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized b(Lcom/flurry/sdk/ey$a;)Z
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
invoke-virtual {v0, p1}, Lcom/flurry/sdk/ey;->b(Lcom/flurry/sdk/ey$a;)Z
move-result v0
iget-object v1, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
invoke-virtual {v1}, Lcom/flurry/sdk/ey;->d()I
move-result v1
if-nez v1, :cond_14
iget-object v1, p0, Lcom/flurry/sdk/ex;->c:Lcom/flurry/sdk/ey;
invoke-virtual {v1}, Lcom/flurry/sdk/ey;->b()V
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_16
:cond_14
monitor-exit p0
return v0
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method