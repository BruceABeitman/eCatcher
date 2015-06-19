.class public final Lcom/mato/sdk/b/e;
.super Ljava/lang/Object;
.field private static final a:Ljava/lang/String; = "JobManager"
.field private static c:Lcom/mato/sdk/b/e;
.field private static d:Z
.field private static e:I
.field private b:Ljava/util/concurrent/ExecutorService;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/mato/sdk/b/e;->b:Ljava/util/concurrent/ExecutorService;
const/4 v0, 0x1
sput-boolean v0, Lcom/mato/sdk/b/e;->d:Z
const/4 v0, 0x0
sput v0, Lcom/mato/sdk/b/e;->e:I
return-void
.end method
.method public static declared-synchronized a()Lcom/mato/sdk/b/e;
.registers 2
const-class v1, Lcom/mato/sdk/b/e;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/mato/sdk/b/e;->c:Lcom/mato/sdk/b/e;
if-nez v0, :cond_e
new-instance v0, Lcom/mato/sdk/b/e;
invoke-direct {v0}, Lcom/mato/sdk/b/e;-><init>()V
sput-object v0, Lcom/mato/sdk/b/e;->c:Lcom/mato/sdk/b/e;
:cond_e
sget-object v0, Lcom/mato/sdk/b/e;->c:Lcom/mato/sdk/b/e;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(I)V
.registers 1
sput p0, Lcom/mato/sdk/b/e;->e:I
return-void
.end method
.method private a(Lcom/mato/sdk/b/c;)V
.registers 3
iget-object v0, p0, Lcom/mato/sdk/b/e;->b:Ljava/util/concurrent/ExecutorService;
invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method private static a(Lcom/mato/sdk/b/d;[BZ)V
.registers 5
const/4 v0, 0x1
invoke-static {v0}, Lcom/mato/sdk/a/b$e;->b(Z)V
new-instance v0, Lcom/mato/sdk/b/g;
invoke-direct {v0, p0, p1, p2}, Lcom/mato/sdk/b/g;-><init>(Lcom/mato/sdk/b/d;[BZ)V
invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;
move-result-object v1
invoke-direct {v1, v0}, Lcom/mato/sdk/b/e;->a(Lcom/mato/sdk/b/c;)V
return-void
.end method
.method static synthetic a(Lcom/mato/sdk/b/e;)V
.registers 2
const/4 v0, 0x0
sput-object v0, Lcom/mato/sdk/b/e;->c:Lcom/mato/sdk/b/e;
return-void
.end method
.method static synthetic a(Lcom/mato/sdk/b/e;Lcom/mato/sdk/b/d;[BZ)V
.registers 6
const/4 v0, 0x1
invoke-static {v0}, Lcom/mato/sdk/a/b$e;->b(Z)V
new-instance v0, Lcom/mato/sdk/b/g;
invoke-direct {v0, p1, p2, p3}, Lcom/mato/sdk/b/g;-><init>(Lcom/mato/sdk/b/d;[BZ)V
invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;
move-result-object v1
invoke-direct {v1, v0}, Lcom/mato/sdk/b/e;->a(Lcom/mato/sdk/b/c;)V
return-void
.end method
.method static synthetic a(Z)V
.registers 2
const/4 v0, 0x0
sput-boolean v0, Lcom/mato/sdk/b/e;->d:Z
return-void
.end method
.method public static b(Lcom/mato/sdk/b/d;)V
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/mato/sdk/utils/g;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/crash.log"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mato/sdk/utils/c;->a(Ljava/lang/String;)[B
move-result-object v0
if-eqz v0, :cond_2a
new-instance v1, Lcom/mato/sdk/b/a;
invoke-direct {v1, p0, v0}, Lcom/mato/sdk/b/a;-><init>(Lcom/mato/sdk/b/d;[B)V
invoke-static {}, Lcom/mato/sdk/b/e;->a()Lcom/mato/sdk/b/e;
move-result-object v0
invoke-direct {v0, v1}, Lcom/mato/sdk/b/e;->a(Lcom/mato/sdk/b/c;)V
:cond_2a
return-void
.end method
.method public static c()V
.registers 0
invoke-static {}, Lcom/mato/sdk/b/e$a;->a()V
return-void
.end method
.method public static c(Lcom/mato/sdk/b/d;)V
.registers 1
invoke-static {p0}, Lcom/mato/sdk/b/e$a;->a(Lcom/mato/sdk/b/d;)V
return-void
.end method
.method static synthetic d()I
.registers 1
sget v0, Lcom/mato/sdk/b/e;->e:I
return v0
.end method
.method static synthetic e()Z
.registers 1
sget-boolean v0, Lcom/mato/sdk/b/e;->d:Z
return v0
.end method
.method public final a(Lcom/mato/sdk/b/d;)V
.registers 3
new-instance v0, Lcom/mato/sdk/b/b;
invoke-direct {v0}, Lcom/mato/sdk/b/b;-><init>()V
invoke-virtual {v0, p1}, Lcom/mato/sdk/b/b;->a(Lcom/mato/sdk/b/d;)V
invoke-direct {p0, v0}, Lcom/mato/sdk/b/e;->a(Lcom/mato/sdk/b/c;)V
return-void
.end method
.method public final b()V
.registers 3
invoke-static {}, Lcom/mato/sdk/utils/c;->f()Z
move-result v0
if-eqz v0, :cond_1c
invoke-static {}, Lcom/mato/sdk/utils/c;->g()Z
move-result v0
if-eqz v0, :cond_1c
invoke-static {}, Lcom/mato/sdk/utils/c;->f()Z
move-result v0
if-eqz v0, :cond_1b
const-string/jumbo v0, "JobManager"
const-string/jumbo v1, "patch exists"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_1b
:goto_1b
return-void
:cond_1c
invoke-static {}, Lcom/mato/sdk/a/b;->i()I
move-result v0
if-nez v0, :cond_29
invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/HttpHandler;->c()I
move-result v0
invoke-static {v0}, Lcom/mato/sdk/a/b;->c(I)V
:cond_29
new-instance v0, Lcom/mato/sdk/b/i;
invoke-direct {v0}, Lcom/mato/sdk/b/i;-><init>()V
invoke-direct {p0, v0}, Lcom/mato/sdk/b/e;->a(Lcom/mato/sdk/b/c;)V
goto :goto_1b
.end method