.class final Lcom/c/a/a/a;
.super Ljava/lang/Object;
.source "AnalyticsMessages.java"
.field static b:I
.field static c:I
.field static d:I
.field private static g:I
.field private static h:I
.field private static i:I
.field private static j:I
.field private static final k:Ljava/util/Map;
.field final a:Lcom/c/a/a/b;
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final f:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput v0, Lcom/c/a/a/a;->g:I
const/4 v0, 0x1
sput v0, Lcom/c/a/a/a;->b:I
const/4 v0, 0x2
sput v0, Lcom/c/a/a/a;->c:I
const/4 v0, 0x4
sput v0, Lcom/c/a/a/a;->h:I
const/4 v0, 0x5
sput v0, Lcom/c/a/a/a;->i:I
const/4 v0, 0x6
sput v0, Lcom/c/a/a/a;->j:I
const/4 v0, 0x7
sput v0, Lcom/c/a/a/a;->d:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/c/a/a/a;->k:Ljava/util/Map;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/c/a/a/a;->f:Landroid/content/Context;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/c/a/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Lcom/c/a/a/b;
invoke-direct {v0, p0}, Lcom/c/a/a/b;-><init>(Lcom/c/a/a/a;)V
iput-object v0, p0, Lcom/c/a/a/a;->a:Lcom/c/a/a/b;
return-void
.end method
.method static synthetic a()I
.registers 1
sget v0, Lcom/c/a/a/a;->h:I
return v0
.end method
.method static synthetic a(Lcom/c/a/a/a;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/c/a/a/a;->f:Landroid/content/Context;
return-object v0
.end method
.method public static a(Landroid/content/Context;)Lcom/c/a/a/a;
.registers 5
sget-object v1, Lcom/c/a/a/a;->k:Ljava/util/Map;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
sget-object v0, Lcom/c/a/a/a;->k:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
new-instance v0, Lcom/c/a/a/a;
invoke-direct {v0, v2}, Lcom/c/a/a/a;-><init>(Landroid/content/Context;)V
sget-object v3, Lcom/c/a/a/a;->k:Ljava/util/Map;
invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_19
monitor-exit v1
return-object v0
:cond_1b
sget-object v0, Lcom/c/a/a/a;->k:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/a/a;
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_24
goto :goto_19
:catchall_24
move-exception v0
monitor-exit v1
throw v0
.end method
.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/a/e;
.registers 3
new-instance v0, Lcom/c/a/a/e;
invoke-direct {v0, p0, p1}, Lcom/c/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method static synthetic a(Lcom/c/a/a/a;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/c/a/a/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_32
const-string v0, "MixpanelAPI"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " (Thread "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getId()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_32
return-void
.end method
.method static synthetic b()I
.registers 1
sget v0, Lcom/c/a/a/a;->c:I
return v0
.end method
.method protected static b(Landroid/content/Context;)Lcom/c/a/a/g;
.registers 2
new-instance v0, Lcom/c/a/a/g;
invoke-direct {v0, p0}, Lcom/c/a/a/g;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method static synthetic c()I
.registers 1
sget v0, Lcom/c/a/a/a;->j:I
return v0
.end method
.method static synthetic d()I
.registers 1
sget v0, Lcom/c/a/a/a;->d:I
return v0
.end method
.method static synthetic e()I
.registers 1
sget v0, Lcom/c/a/a/a;->g:I
return v0
.end method
.method static synthetic f()I
.registers 1
sget v0, Lcom/c/a/a/a;->b:I
return v0
.end method
.method static synthetic g()I
.registers 1
sget v0, Lcom/c/a/a/a;->i:I
return v0
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v0
sget v1, Lcom/c/a/a/a;->g:I
iput v1, v0, Landroid/os/Message;->what:I
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v1, p0, Lcom/c/a/a/a;->a:Lcom/c/a/a/b;
invoke-virtual {v1, v0}, Lcom/c/a/a/b;->a(Landroid/os/Message;)V
return-void
.end method