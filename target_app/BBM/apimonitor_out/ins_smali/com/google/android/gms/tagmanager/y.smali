.class  Lcom/google/android/gms/tagmanager/y;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/aq;
.field private static UO:Lcom/google/android/gms/tagmanager/y;
.field private static final qI:Ljava/lang/Object;
.field private UP:Ljava/lang/String;
.field private UQ:Ljava/lang/String;
.field private UR:Lcom/google/android/gms/tagmanager/ar;
.field private Uc:Lcom/google/android/gms/tagmanager/cg;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/tagmanager/y;->qI:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/tagmanager/as;->H(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/as;
move-result-object v0
new-instance v1, Lcom/google/android/gms/tagmanager/cw;
invoke-direct {v1}, Lcom/google/android/gms/tagmanager/cw;-><init>()V
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/y;-><init>(Lcom/google/android/gms/tagmanager/ar;Lcom/google/android/gms/tagmanager/cg;)V
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/tagmanager/ar;Lcom/google/android/gms/tagmanager/cg;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/y;->UR:Lcom/google/android/gms/tagmanager/ar;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/y;->Uc:Lcom/google/android/gms/tagmanager/cg;
return-void
.end method
.method public static F(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/aq;
.registers 3
sget-object v1, Lcom/google/android/gms/tagmanager/y;->qI:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/tagmanager/y;->UO:Lcom/google/android/gms/tagmanager/y;
if-nez v0, :cond_e
new-instance v0, Lcom/google/android/gms/tagmanager/y;
invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/y;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/tagmanager/y;->UO:Lcom/google/android/gms/tagmanager/y;
:cond_e
sget-object v0, Lcom/google/android/gms/tagmanager/y;->UO:Lcom/google/android/gms/tagmanager/y;
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_12
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public bk(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/y;->Uc:Lcom/google/android/gms/tagmanager/cg;
invoke-interface {v1}, Lcom/google/android/gms/tagmanager/cg;->cl()Z
move-result v1
if-nez v1, :cond_f
const-string v1, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
:goto_e
return v0
:cond_f
iget-object v1, p0, Lcom/google/android/gms/tagmanager/y;->UP:Ljava/lang/String;
if-eqz v1, :cond_54
iget-object v1, p0, Lcom/google/android/gms/tagmanager/y;->UQ:Ljava/lang/String;
if-eqz v1, :cond_54
:try_start_17
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/tagmanager/y;->UP:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/tagmanager/y;->UQ:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "UTF-8"
invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Sending wrapped url hit: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V
:try_end_54
.catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_54} :catch_5b
:cond_54
iget-object v0, p0, Lcom/google/android/gms/tagmanager/y;->UR:Lcom/google/android/gms/tagmanager/ar;
invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/ar;->bn(Ljava/lang/String;)V
const/4 v0, 0x1
goto :goto_e
:catch_5b
move-exception v1
const-string v2, "Error wrapping URL for testing."
invoke-static {v2, v1}, Lcom/google/android/gms/tagmanager/bh;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_e
.end method