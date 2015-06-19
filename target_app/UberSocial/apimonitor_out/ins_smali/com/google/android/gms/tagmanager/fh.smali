.class  Lcom/google/android/gms/tagmanager/fh;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/ag;
.field private static a:Lcom/google/android/gms/tagmanager/fh;
.field private static final b:Ljava/lang/Object;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Lcom/google/android/gms/tagmanager/cf;
.field private f:Lcom/google/android/gms/tagmanager/ah;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/tagmanager/fh;->b:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/tagmanager/ai;->a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/ai;
move-result-object v0
new-instance v1, Lcom/google/android/gms/tagmanager/dh;
invoke-direct {v1}, Lcom/google/android/gms/tagmanager/dh;-><init>()V
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/fh;-><init>(Lcom/google/android/gms/tagmanager/ah;Lcom/google/android/gms/tagmanager/cf;)V
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/tagmanager/ah;Lcom/google/android/gms/tagmanager/cf;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/fh;->f:Lcom/google/android/gms/tagmanager/ah;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/fh;->e:Lcom/google/android/gms/tagmanager/cf;
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/ag;
.registers 3
sget-object v1, Lcom/google/android/gms/tagmanager/fh;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/tagmanager/fh;->a:Lcom/google/android/gms/tagmanager/fh;
if-nez v0, :cond_e
new-instance v0, Lcom/google/android/gms/tagmanager/fh;
invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/fh;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/tagmanager/fh;->a:Lcom/google/android/gms/tagmanager/fh;
:cond_e
sget-object v0, Lcom/google/android/gms/tagmanager/fh;->a:Lcom/google/android/gms/tagmanager/fh;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method public a(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/fh;->e:Lcom/google/android/gms/tagmanager/cf;
invoke-interface {v1}, Lcom/google/android/gms/tagmanager/cf;->a()Z
move-result v1
if-nez v1, :cond_f
const-string v1, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."
invoke-static {v1}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V
:goto_e
return v0
:cond_f
iget-object v1, p0, Lcom/google/android/gms/tagmanager/fh;->c:Ljava/lang/String;
if-eqz v1, :cond_58
iget-object v1, p0, Lcom/google/android/gms/tagmanager/fh;->d:Ljava/lang/String;
if-eqz v1, :cond_58
:try_start_17
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/google/android/gms/tagmanager/fh;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/google/android/gms/tagmanager/fh;->d:Ljava/lang/String;
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
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Sending wrapped url hit: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
:cond_58
:try_end_58
.catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_58} :catch_5f
iget-object v0, p0, Lcom/google/android/gms/tagmanager/fh;->f:Lcom/google/android/gms/tagmanager/ah;
invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/ah;->a(Ljava/lang/String;)V
const/4 v0, 0x1
goto :goto_e
:catch_5f
move-exception v1
const-string v2, "Error wrapping URL for testing."
invoke-static {v2, v1}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_e
.end method