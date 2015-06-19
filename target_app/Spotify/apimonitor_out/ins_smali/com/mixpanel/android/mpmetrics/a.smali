.class final Lcom/mixpanel/android/mpmetrics/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static e:I
.field private static f:I
.field private static g:I
.field private static h:I
.field private static i:I
.field private static j:I
.field private static k:I
.field private static final l:Ljava/util/Map;
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final b:Lcom/mixpanel/android/mpmetrics/d;
.field private final c:Landroid/content/Context;
.field private final d:Lcom/mixpanel/android/mpmetrics/j;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput v0, Lcom/mixpanel/android/mpmetrics/a;->e:I
const/4 v0, 0x1
sput v0, Lcom/mixpanel/android/mpmetrics/a;->f:I
const/4 v0, 0x2
sput v0, Lcom/mixpanel/android/mpmetrics/a;->g:I
const/4 v0, 0x5
sput v0, Lcom/mixpanel/android/mpmetrics/a;->h:I
const/16 v0, 0xb
sput v0, Lcom/mixpanel/android/mpmetrics/a;->i:I
const/4 v0, 0x4
sput v0, Lcom/mixpanel/android/mpmetrics/a;->j:I
const/16 v0, 0xa
sput v0, Lcom/mixpanel/android/mpmetrics/a;->k:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/mixpanel/android/mpmetrics/a;->l:Ljava/util/Map;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->c:Landroid/content/Context;
invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/j;->a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->d:Lcom/mixpanel/android/mpmetrics/j;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Lcom/mixpanel/android/mpmetrics/d;
invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/d;-><init>(Lcom/mixpanel/android/mpmetrics/a;)V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/a;
.registers 5
sget-object v1, Lcom/mixpanel/android/mpmetrics/a;->l:Ljava/util/Map;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
sget-object v0, Lcom/mixpanel/android/mpmetrics/a;->l:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
new-instance v0, Lcom/mixpanel/android/mpmetrics/a;
invoke-direct {v0, v2}, Lcom/mixpanel/android/mpmetrics/a;-><init>(Landroid/content/Context;)V
sget-object v3, Lcom/mixpanel/android/mpmetrics/a;->l:Ljava/util/Map;
invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_19
monitor-exit v1
return-object v0
:cond_1b
sget-object v0, Lcom/mixpanel/android/mpmetrics/a;->l:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/a;
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_24
goto :goto_19
:catchall_24
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->d:Lcom/mixpanel/android/mpmetrics/j;
return-object v0
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
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
.method static synthetic b(Lcom/mixpanel/android/mpmetrics/a;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->c:Landroid/content/Context;
return-object v0
.end method
.method protected static b(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
.registers 2
new-instance v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method protected static b()Lcom/mixpanel/android/mpmetrics/ServerMessage;
.registers 1
new-instance v0, Lcom/mixpanel/android/mpmetrics/ServerMessage;
invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/ServerMessage;-><init>()V
return-object v0
.end method
.method static synthetic c()I
.registers 1
sget v0, Lcom/mixpanel/android/mpmetrics/a;->j:I
return v0
.end method
.method static synthetic d()I
.registers 1
sget v0, Lcom/mixpanel/android/mpmetrics/a;->g:I
return v0
.end method
.method static synthetic e()I
.registers 1
sget v0, Lcom/mixpanel/android/mpmetrics/a;->k:I
return v0
.end method
.method static synthetic f()I
.registers 1
sget v0, Lcom/mixpanel/android/mpmetrics/a;->e:I
return v0
.end method
.method static synthetic g()I
.registers 1
sget v0, Lcom/mixpanel/android/mpmetrics/a;->f:I
return v0
.end method
.method static synthetic h()I
.registers 1
sget v0, Lcom/mixpanel/android/mpmetrics/a;->i:I
return v0
.end method
.method static synthetic i()I
.registers 1
sget v0, Lcom/mixpanel/android/mpmetrics/a;->h:I
return v0
.end method
.method public final a()V
.registers 3
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v0
sget v1, Lcom/mixpanel/android/mpmetrics/a;->g:I
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;
invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Landroid/os/Message;)V
return-void
.end method
.method public final a(Lcom/mixpanel/android/mpmetrics/b;)V
.registers 4
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v0
sget v1, Lcom/mixpanel/android/mpmetrics/a;->f:I
iput v1, v0, Landroid/os/Message;->what:I
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;
invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Landroid/os/Message;)V
return-void
.end method
.method public final a(Lcom/mixpanel/android/mpmetrics/c;)V
.registers 4
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v0
sget v1, Lcom/mixpanel/android/mpmetrics/a;->i:I
iput v1, v0, Landroid/os/Message;->what:I
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;
invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Landroid/os/Message;)V
return-void
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 4
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v0
sget v1, Lcom/mixpanel/android/mpmetrics/a;->e:I
iput v1, v0, Landroid/os/Message;->what:I
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;
invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Landroid/os/Message;)V
return-void
.end method