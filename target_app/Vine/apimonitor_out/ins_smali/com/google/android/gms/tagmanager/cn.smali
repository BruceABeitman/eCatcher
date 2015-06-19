.class  Lcom/google/android/gms/tagmanager/cn;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private volatile aeM:Ljava/lang/String;
.field private final aeq:Ljava/lang/String;
.field private final agI:Lcom/google/android/gms/tagmanager/bm;
.field private final agJ:Ljava/lang/String;
.field private agK:Lcom/google/android/gms/tagmanager/bg;
.field private volatile agL:Lcom/google/android/gms/tagmanager/r;
.field private volatile agM:Ljava/lang/String;
.field private final mContext:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/bm;Lcom/google/android/gms/tagmanager/r;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->mContext:Landroid/content/Context;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/cn;->agI:Lcom/google/android/gms/tagmanager/bm;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/cn;->aeq:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/tagmanager/cn;->agL:Lcom/google/android/gms/tagmanager/r;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "/r?id="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agJ:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agJ:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->aeM:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agM:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V
.registers 5
new-instance v0, Lcom/google/android/gms/tagmanager/bm;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bm;-><init>()V
invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/tagmanager/cn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/bm;Lcom/google/android/gms/tagmanager/r;)V
return-void
.end method
.method private mb()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->mContext:Landroid/content/Context;
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
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_1c
return v0
:cond_1d
const/4 v0, 0x1
goto :goto_1c
.end method
.method private mc()V
.registers 6
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cn;->mb()Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agK:Lcom/google/android/gms/tagmanager/bg;
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agd:Lcom/google/android/gms/tagmanager/bg$a;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
:goto_d
return-void
:cond_e
const-string v0, "Start loading resource from network ..."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cn;->md()Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agI:Lcom/google/android/gms/tagmanager/bm;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bm;->lM()Lcom/google/android/gms/tagmanager/bl;
move-result-object v2
:try_start_1d
invoke-interface {v2, v1}, Lcom/google/android/gms/tagmanager/bl;->bV(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_10d
.catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_20} :catch_76
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_ab
move-result-object v0
:try_start_21
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {v0, v3}, Lcom/google/android/gms/tagmanager/cq;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/c$j;->b([B)Lcom/google/android/gms/internal/c$j;
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
invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
iget-object v3, v0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;
if-nez v3, :cond_68
iget-object v3, v0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;
array-length v3, v3
if-nez v3, :cond_68
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "No change for container: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/google/android/gms/tagmanager/cn;->aeq:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
:cond_68
iget-object v3, p0, Lcom/google/android/gms/tagmanager/cn;->agK:Lcom/google/android/gms/tagmanager/bg;
invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/bg;->i(Ljava/lang/Object;)V
:try_end_6d
.catchall {:try_start_21 .. :try_end_6d} :catchall_10d
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_6d} :catch_dc
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V
const-string v0, "Load resource from network finished."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
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
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->aeq:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " is correct."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agK:Lcom/google/android/gms/tagmanager/bg;
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agf:Lcom/google/android/gms/tagmanager/bg$a;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
:try_end_a6
.catchall {:try_start_77 .. :try_end_a6} :catchall_10d
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V
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
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/bh;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agK:Lcom/google/android/gms/tagmanager/bg;
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->age:Lcom/google/android/gms/tagmanager/bg$a;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
:try_end_d7
.catchall {:try_start_ac .. :try_end_d7} :catchall_10d
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V
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
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/bh;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agK:Lcom/google/android/gms/tagmanager/bg;
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agf:Lcom/google/android/gms/tagmanager/bg$a;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
:try_end_108
.catchall {:try_start_dd .. :try_end_108} :catchall_10d
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V
goto/16 :goto_d
:catchall_10d
move-exception v0
invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V
throw v0
.end method
.method  a(Lcom/google/android/gms/tagmanager/bg;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->agK:Lcom/google/android/gms/tagmanager/bg;
return-void
.end method
.method  bM(Ljava/lang/String;)V
.registers 4
if-nez p1, :cond_7
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agJ:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->aeM:Ljava/lang/String;
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
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->aeM:Ljava/lang/String;
goto :goto_6
.end method
.method  cb(Ljava/lang/String;)V
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
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->agM:Ljava/lang/String;
return-void
.end method
.method  md()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->agL:Lcom/google/android/gms/tagmanager/r;
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/r;->ls()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->aeM:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "&v=a65833898"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->agM:Ljava/lang/String;
if-eqz v1, :cond_4a
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->agM:Ljava/lang/String;
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
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->agM:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_4a
invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->lY()Lcom/google/android/gms/tagmanager/cd;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->lZ()Lcom/google/android/gms/tagmanager/cd$a;
move-result-object v1
sget-object v2, Lcom/google/android/gms/tagmanager/cd$a;->agA:Lcom/google/android/gms/tagmanager/cd$a;
invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/cd$a;->equals(Ljava/lang/Object;)Z
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
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agK:Lcom/google/android/gms/tagmanager/bg;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "callback must be set before execute"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agK:Lcom/google/android/gms/tagmanager/bg;
invoke-interface {v0}, Lcom/google/android/gms/tagmanager/bg;->lq()V
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cn;->mc()V
return-void
.end method