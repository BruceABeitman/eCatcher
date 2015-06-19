.class  Lcom/google/android/gms/tagmanager/cn;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private final a:Landroid/content/Context;
.field private final b:Lcom/google/android/gms/tagmanager/bf;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private e:Lcom/google/android/gms/tagmanager/ay;
.field private volatile f:Lcom/google/android/gms/tagmanager/ex;
.field private volatile g:Ljava/lang/String;
.field private volatile h:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/bf;Lcom/google/android/gms/tagmanager/ex;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/cn;->b:Lcom/google/android/gms/tagmanager/bf;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/cn;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/tagmanager/cn;->f:Lcom/google/android/gms/tagmanager/ex;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "/r?id="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->g:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->h:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/ex;)V
.registers 5
new-instance v0, Lcom/google/android/gms/tagmanager/bf;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bf;-><init>()V
invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/tagmanager/cn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/bf;Lcom/google/android/gms/tagmanager/ex;)V
return-void
.end method
.method private b()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->a:Landroid/content/Context;
const-string v1, "connectivity"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-nez v0, :cond_1d
:cond_16
const-string v0, "...no network connectivity"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_1c
return v0
:cond_1d
const/4 v0, 0x1
goto :goto_1c
.end method
.method private c()V
.registers 6
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cn;->b()Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->e:Lcom/google/android/gms/tagmanager/ay;
sget-object v1, Lcom/google/android/gms/tagmanager/az;->a:Lcom/google/android/gms/tagmanager/az;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ay;->a(Lcom/google/android/gms/tagmanager/az;)V
:goto_d
return-void
:cond_e
const-string v0, "Start loading resource from network ..."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cn;->a()Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->b:Lcom/google/android/gms/tagmanager/bf;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bf;->a()Lcom/google/android/gms/tagmanager/be;
move-result-object v2
:try_start_1d
invoke-interface {v2, v1}, Lcom/google/android/gms/tagmanager/be;->a(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_10d
.catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_20} :catch_76
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_ab
move-result-object v0
:try_start_21
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {v0, v3}, Lcom/google/android/gms/tagmanager/cs;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/cp;->a([B)Lcom/google/android/gms/internal/cp;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Successfully loaded supplemented resource: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
iget-object v3, v0, Lcom/google/android/gms/internal/cp;->b:Lcom/google/android/gms/internal/cl;
if-nez v3, :cond_68
iget-object v3, v0, Lcom/google/android/gms/internal/cp;->a:[Lcom/google/android/gms/internal/co;
array-length v3, v3
if-nez v3, :cond_68
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "No change for container: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/tagmanager/cn;->c:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
:cond_68
iget-object v3, p0, Lcom/google/android/gms/tagmanager/cn;->e:Lcom/google/android/gms/tagmanager/ay;
invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/ay;->a(Ljava/lang/Object;)V
:try_end_6d
.catchall {:try_start_21 .. :try_end_6d} :catchall_10d
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_6d} :catch_dc
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/be;->a()V
const-string v0, "Load resource from network finished."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
goto :goto_d
:catch_76
move-exception v0
:try_start_77
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "No data is retrieved from the given url: "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ". Make sure container_id: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " is correct."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->e:Lcom/google/android/gms/tagmanager/ay;
sget-object v1, Lcom/google/android/gms/tagmanager/az;->c:Lcom/google/android/gms/tagmanager/az;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ay;->a(Lcom/google/android/gms/tagmanager/az;)V
:try_end_a6
.catchall {:try_start_77 .. :try_end_a6} :catchall_10d
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/be;->a()V
goto/16 :goto_d
:catch_ab
move-exception v0
:try_start_ac
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Error when loading resources from url: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->e:Lcom/google/android/gms/tagmanager/ay;
sget-object v1, Lcom/google/android/gms/tagmanager/az;->b:Lcom/google/android/gms/tagmanager/az;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ay;->a(Lcom/google/android/gms/tagmanager/az;)V
:try_end_d7
.catchall {:try_start_ac .. :try_end_d7} :catchall_10d
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/be;->a()V
goto/16 :goto_d
:catch_dc
move-exception v0
:try_start_dd
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Error when parsing downloaded resources from url: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->e:Lcom/google/android/gms/tagmanager/ay;
sget-object v1, Lcom/google/android/gms/tagmanager/az;->c:Lcom/google/android/gms/tagmanager/az;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ay;->a(Lcom/google/android/gms/tagmanager/az;)V
:try_end_108
.catchall {:try_start_dd .. :try_end_108} :catchall_10d
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/be;->a()V
goto/16 :goto_d
:catchall_10d
move-exception v0
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/be;->a()V
throw v0
.end method
.method  a()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->f:Lcom/google/android/gms/tagmanager/ex;
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/ex;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&v=a59512756"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->h:Ljava/lang/String;
if-eqz v1, :cond_4a
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->h:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&pv="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_4a
invoke-static {}, Lcom/google/android/gms/tagmanager/cc;->a()Lcom/google/android/gms/tagmanager/cc;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cc;->b()Lcom/google/android/gms/tagmanager/cd;
move-result-object v1
sget-object v2, Lcom/google/android/gms/tagmanager/cd;->c:Lcom/google/android/gms/tagmanager/cd;
invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/cd;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&gtm_debug=x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_6d
return-object v0
.end method
.method  a(Lcom/google/android/gms/tagmanager/ay;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->e:Lcom/google/android/gms/tagmanager/ay;
return-void
.end method
.method  a(Ljava/lang/String;)V
.registers 4
if-nez p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->g:Ljava/lang/String;
:goto_6
return-void
:cond_7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Setting CTFE URL path: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->d(Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->g:Ljava/lang/String;
goto :goto_6
.end method
.method  b(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Setting previous container version: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->d(Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->h:Ljava/lang/String;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->e:Lcom/google/android/gms/tagmanager/ay;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "callback must be set before execute"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->e:Lcom/google/android/gms/tagmanager/ay;
invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ay;->a()V
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cn;->c()V
return-void
.end method