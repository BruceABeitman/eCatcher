.class public Lcom/flurry/sdk/ey;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private final b:Lcom/flurry/sdk/dq;
.field private c:J
.field private d:Z
.field private e:Z
.field private f:Lcom/flurry/sdk/fc;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/ey;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/ey;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/flurry/sdk/dq;
invoke-direct {v0}, Lcom/flurry/sdk/dq;-><init>()V
iput-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dq;
const-wide/16 v0, 0x3e8
iput-wide v0, p0, Lcom/flurry/sdk/ey;->c:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/ey;->d:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
new-instance v0, Lcom/flurry/sdk/ey$1;
invoke-direct {v0, p0}, Lcom/flurry/sdk/ey$1;-><init>(Lcom/flurry/sdk/ey;)V
iput-object v0, p0, Lcom/flurry/sdk/ey;->f:Lcom/flurry/sdk/fc;
return-void
.end method
.method static synthetic a(Lcom/flurry/sdk/ey;)Ljava/util/List;
.registers 2
invoke-direct {p0}, Lcom/flurry/sdk/ey;->f()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static synthetic b(Lcom/flurry/sdk/ey;)Z
.registers 2
iget-boolean v0, p0, Lcom/flurry/sdk/ey;->d:Z
return v0
.end method
.method static synthetic c(Lcom/flurry/sdk/ey;)Z
.registers 2
iget-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
return v0
.end method
.method static synthetic d(Lcom/flurry/sdk/ey;)Lcom/flurry/sdk/fc;
.registers 2
iget-object v0, p0, Lcom/flurry/sdk/ey;->f:Lcom/flurry/sdk/fc;
return-object v0
.end method
.method static synthetic e(Lcom/flurry/sdk/ey;)J
.registers 3
iget-wide v0, p0, Lcom/flurry/sdk/ey;->c:J
return-wide v0
.end method
.method static synthetic e()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/flurry/sdk/ey;->a:Ljava/lang/String;
return-object v0
.end method
.method private declared-synchronized f()Ljava/util/List;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dq;
invoke-virtual {v0}, Lcom/flurry/sdk/dq;->a()Ljava/util/List;
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result-object v0
monitor-exit p0
return-object v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a()V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_16
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
iget-object v1, p0, Lcom/flurry/sdk/ey;->f:Lcom/flurry/sdk/fc;
iget-wide v2, p0, Lcom/flurry/sdk/ey;->c:J
invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/dl;->a(Ljava/lang/Runnable;J)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
:try_end_15
.catchall {:try_start_7 .. :try_end_15} :catchall_16
goto :goto_5
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/flurry/sdk/ey;->c:J
return-void
.end method
.method public declared-synchronized a(Lcom/flurry/sdk/ey$a;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dq;
invoke-virtual {v0, p1}, Lcom/flurry/sdk/dq;->a(Ljava/lang/Object;)V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/flurry/sdk/ey;->d:Z
return-void
.end method
.method public declared-synchronized b()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_14
if-nez v0, :cond_7
:goto_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
iget-object v1, p0, Lcom/flurry/sdk/ey;->f:Lcom/flurry/sdk/fc;
invoke-virtual {v0, v1}, Lcom/flurry/sdk/dl;->b(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_14
goto :goto_5
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized b(Lcom/flurry/sdk/ey$a;)Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dq;
invoke-virtual {v0, p1}, Lcom/flurry/sdk/dq;->b(Ljava/lang/Object;)Z
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized c()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/flurry/sdk/ey;->e:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized d()I
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Lcom/flurry/sdk/dq;
invoke-virtual {v0}, Lcom/flurry/sdk/dq;->b()I
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method