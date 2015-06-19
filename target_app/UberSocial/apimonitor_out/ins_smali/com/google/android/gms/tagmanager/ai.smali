.class  Lcom/google/android/gms/tagmanager/ai;
.super Ljava/lang/Thread;
.implements Lcom/google/android/gms/tagmanager/ah;
.field private static d:Lcom/google/android/gms/tagmanager/ai;
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
.field private volatile b:Z
.field private volatile c:Z
.field private volatile e:Lcom/google/android/gms/tagmanager/aj;
.field private final f:Landroid/content/Context;
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const-string v0, "GAThread"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->a:Ljava/util/concurrent/LinkedBlockingQueue;
iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/ai;->b:Z
iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/ai;->c:Z
if-eqz p1, :cond_1d
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->f:Landroid/content/Context;
:goto_19
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ai;->start()V
return-void
:cond_1d
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ai;->f:Landroid/content/Context;
goto :goto_19
.end method
.method static a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/ai;
.registers 2
sget-object v0, Lcom/google/android/gms/tagmanager/ai;->d:Lcom/google/android/gms/tagmanager/ai;
if-nez v0, :cond_b
new-instance v0, Lcom/google/android/gms/tagmanager/ai;
invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/ai;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/tagmanager/ai;->d:Lcom/google/android/gms/tagmanager/ai;
:cond_b
sget-object v0, Lcom/google/android/gms/tagmanager/ai;->d:Lcom/google/android/gms/tagmanager/ai;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/ai;)Lcom/google/android/gms/tagmanager/aj;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->e:Lcom/google/android/gms/tagmanager/aj;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/tagmanager/ai;Lcom/google/android/gms/tagmanager/aj;)Lcom/google/android/gms/tagmanager/aj;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/ai;->e:Lcom/google/android/gms/tagmanager/aj;
return-object p1
.end method
.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v1, Ljava/io/PrintStream;
invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
new-instance v1, Ljava/lang/String;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
return-object v1
.end method
.method static synthetic b(Lcom/google/android/gms/tagmanager/ai;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->f:Landroid/content/Context;
return-object v0
.end method
.method public a(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->a:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/lang/String;J)V
return-void
.end method
.method  a(Ljava/lang/String;J)V
.registers 10
new-instance v0, Lcom/google/android/gms/tagmanager/ai$1;
move-object v1, p0
move-object v2, p0
move-wide v3, p2
move-object v5, p1
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/ai$1;-><init>(Lcom/google/android/gms/tagmanager/ai;Lcom/google/android/gms/tagmanager/ah;JLjava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public run()V
.registers 4
:goto_0
:cond_0
iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/ai;->c:Z
if-nez v0, :cond_41
:try_start_4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/ai;->a:Ljava/util/concurrent/LinkedBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Runnable;
iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/ai;->b:Z
if-nez v1, :cond_0
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:try_end_13
.catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_13} :catch_14
.catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_13} :catch_1d
goto :goto_0
:catch_14
move-exception v0
:try_start_15
invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->c(Ljava/lang/String;)V
:try_end_1c
.catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_1d
goto :goto_0
:catch_1d
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Error on GAThread: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ai;->a(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V
const-string v0, "Google Analytics is shutting down."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/ai;->b:Z
goto :goto_0
:cond_41
return-void
.end method