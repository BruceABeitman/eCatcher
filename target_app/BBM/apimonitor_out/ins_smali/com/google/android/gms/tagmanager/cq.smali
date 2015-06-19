.class  Lcom/google/android/gms/tagmanager/cq;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/o$f;
.field private final TM:Ljava/lang/String;
.field private Wi:Lcom/google/android/gms/tagmanager/bg;
.field private final Wp:Ljava/util/concurrent/ExecutorService;
.field private final mContext:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/cq;->TM:Ljava/lang/String;
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wp:Ljava/util/concurrent/ExecutorService;
return-void
.end method
.method private a(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/tagmanager/cr$c;
.registers 4
const/4 v0, 0x0
:try_start_1
const-string v1, "UTF-8"
invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/ba;->br(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cr$c;
:try_end_a
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_a} :catch_c
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_13
move-result-object v0
:goto_b
return-object v0
:catch_c
move-exception v1
const-string v1, "Tried to convert binary resource to string for JSON parsing; not UTF-8 format"
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->s(Ljava/lang/String;)V
goto :goto_b
:catch_13
move-exception v1
const-string v1, "Resource is a UTF-8 encoded string but doesn\'t contain a JSON container"
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_b
.end method
.method private k([B)Lcom/google/android/gms/tagmanager/cr$c;
.registers 4
const/4 v0, 0x0
:try_start_1
invoke-static {p1}, Lcom/google/android/gms/internal/c$f;->a([B)Lcom/google/android/gms/internal/c$f;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/tagmanager/cr;->b(Lcom/google/android/gms/internal/c$f;)Lcom/google/android/gms/tagmanager/cr$c;
:try_end_8
.catch Lcom/google/android/gms/internal/kd; {:try_start_1 .. :try_end_8} :catch_a
.catch Lcom/google/android/gms/tagmanager/cr$g; {:try_start_1 .. :try_end_8} :catch_11
move-result-object v0
:goto_9
return-object v0
:catch_a
move-exception v1
const-string v1, "Resource doesn\'t contain a binary container"
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_9
:catch_11
move-exception v1
const-string v1, "Resource doesn\'t contain a binary container"
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_9
.end method
.method public a(Lcom/google/android/gms/tagmanager/bg;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq;->Wi:Lcom/google/android/gms/tagmanager/bg;
return-void
.end method
.method public b(Lcom/google/android/gms/internal/jd$a;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wp:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/google/android/gms/tagmanager/cq$2;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/cq$2;-><init>(Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/internal/jd$a;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public bP(I)Lcom/google/android/gms/tagmanager/cr$c;
.registers 5
const/4 v1, 0x0
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Atttempting to load container from resource ID "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V
:try_start_13
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v0
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {v0, v2}, Lcom/google/android/gms/tagmanager/cr;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/cq;->a(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/tagmanager/cr$c;
move-result-object v0
if-eqz v0, :cond_2c
:goto_2b
return-object v0
:cond_2c
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/cq;->k([B)Lcom/google/android/gms/tagmanager/cr$c;
:try_end_33
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_33} :catch_35
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_33} :catch_4a
move-result-object v0
goto :goto_2b
:catch_35
move-exception v0
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Error reading default container resource with ID "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
move-object v0, v1
goto :goto_2b
:catch_4a
move-exception v0
const-string v0, "No default container resource found."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
move-object v0, v1
goto :goto_2b
.end method
.method  c(Lcom/google/android/gms/internal/jd$a;)Z
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cq;->jD()Ljava/io/File;
move-result-object v1
:try_start_5
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_a
.catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_16
:try_start_a
invoke-static {p1}, Lcom/google/android/gms/internal/ke;->d(Lcom/google/android/gms/internal/ke;)[B
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
:try_start_11
:try_end_11
.catchall {:try_start_a .. :try_end_11} :catchall_38
.catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_24
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_14
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1d
:goto_14
const/4 v0, 0x1
:goto_15
return v0
:catch_16
move-exception v1
const-string v1, "Error opening resource file for writing"
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
goto :goto_15
:catch_1d
move-exception v0
const-string v0, "error closing stream for writing resource to disk"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_14
:catch_24
move-exception v3
:try_start_25
const-string v3, "Error writing resource to disk. Removing resource from disk."
invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:try_end_2d
.catchall {:try_start_25 .. :try_end_2d} :catchall_38
:try_start_2d
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_30
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31
goto :goto_15
:catch_31
move-exception v1
const-string v1, "error closing stream for writing resource to disk"
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_15
:catchall_38
move-exception v0
:try_start_39
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_3c
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d
:goto_3c
throw v0
:catch_3d
move-exception v1
const-string v1, "error closing stream for writing resource to disk"
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_3c
.end method
.method public iN()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wp:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/google/android/gms/tagmanager/cq$1;
invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/cq$1;-><init>(Lcom/google/android/gms/tagmanager/cq;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method  jC()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wi:Lcom/google/android/gms/tagmanager/bg;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "callback must be set before execute"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wi:Lcom/google/android/gms/tagmanager/bg;
invoke-interface {v0}, Lcom/google/android/gms/tagmanager/bg;->iM()V
const-string v0, "Start loading resource from disk ..."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/ce;->ju()Lcom/google/android/gms/tagmanager/ce;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ce;->jv()Lcom/google/android/gms/tagmanager/ce$a;
move-result-object v0
sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VX:Lcom/google/android/gms/tagmanager/ce$a;
if-eq v0, v1, :cond_2e
invoke-static {}, Lcom/google/android/gms/tagmanager/ce;->ju()Lcom/google/android/gms/tagmanager/ce;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ce;->jv()Lcom/google/android/gms/tagmanager/ce$a;
move-result-object v0
sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VY:Lcom/google/android/gms/tagmanager/ce$a;
if-ne v0, v1, :cond_46
:cond_2e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->TM:Ljava/lang/String;
invoke-static {}, Lcom/google/android/gms/tagmanager/ce;->ju()Lcom/google/android/gms/tagmanager/ce;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/ce;->getContainerId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wi:Lcom/google/android/gms/tagmanager/bg;
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->VA:Lcom/google/android/gms/tagmanager/bg$a;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
:goto_45
return-void
:cond_46
:try_start_46
new-instance v1, Ljava/io/FileInputStream;
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cq;->jD()Ljava/io/File;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_4f
:try_end_4f
.catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_4f} :catch_6d
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/cr;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
iget-object v2, p0, Lcom/google/android/gms/tagmanager/cq;->Wi:Lcom/google/android/gms/tagmanager/bg;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/jd$a;->l([B)Lcom/google/android/gms/internal/jd$a;
move-result-object v0
invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/bg;->i(Ljava/lang/Object;)V
:try_end_64
.catchall {:try_start_4f .. :try_end_64} :catchall_9a
.catch Ljava/io/IOException; {:try_start_4f .. :try_end_64} :catch_82
:try_start_64
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_67
.catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_7b
:goto_67
const-string v0, "Load resource from disk finished."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V
goto :goto_45
:catch_6d
move-exception v0
const-string v0, "resource not on disk"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->s(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wi:Lcom/google/android/gms/tagmanager/bg;
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->VA:Lcom/google/android/gms/tagmanager/bg$a;
invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
goto :goto_45
:catch_7b
move-exception v0
const-string v0, "error closing stream for reading resource from disk"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_67
:catch_82
move-exception v0
:try_start_83
const-string v0, "error reading resource from disk"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wi:Lcom/google/android/gms/tagmanager/bg;
sget-object v2, Lcom/google/android/gms/tagmanager/bg$a;->VB:Lcom/google/android/gms/tagmanager/bg$a;
invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
:try_start_8f
:try_end_8f
.catchall {:try_start_83 .. :try_end_8f} :catchall_9a
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:try_end_92
.catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93
goto :goto_67
:catch_93
move-exception v0
const-string v0, "error closing stream for reading resource from disk"
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_67
:catchall_9a
move-exception v0
:try_start_9b
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:goto_9e
:try_end_9e
.catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f
throw v0
:catch_9f
move-exception v1
const-string v1, "error closing stream for reading resource from disk"
invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
goto :goto_9e
.end method
.method  jD()Ljava/io/File;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "resource_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cq;->TM:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/cq;->mContext:Landroid/content/Context;
const-string v2, "google_tagmanager"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v1
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v2
.end method
.method public declared-synchronized release()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq;->Wp:Ljava/util/concurrent/ExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method