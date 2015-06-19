.class  Lcom/umeng/common/net/DownloadingService$b;
.super Ljava/lang/Thread;
.source "DownloadingService.java"
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;
.field private b:Landroid/content/Context;
.field private c:Ljava/lang/String;
.field private d:I
.field private e:J
.field private f:J
.field private g:I
.field private h:I
.field private i:Lcom/umeng/common/net/DownloadingService$a;
.field private j:Lcom/umeng/common/net/a$a;
.method public constructor <init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V
.registers 12
const-wide/16 v3, -0x1
const/4 v2, 0x1
const/4 v0, 0x0
iput-object p1, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput v0, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
iput-wide v3, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
iput-wide v3, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
const/4 v0, -0x1
iput v0, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I
:try_start_12
iput-object p2, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
iput-object p3, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iput p5, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_45
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/common/net/DownloadingService$d;
iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J
if-eqz v0, :cond_45
array-length v1, v0
if-le v1, v2, :cond_45
const/4 v1, 0x0
aget-wide v1, v0, v1
iput-wide v1, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
const/4 v1, 0x1
aget-wide v0, v0, v1
iput-wide v0, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
:cond_45
iput-object p6, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
iput p4, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {}, Lcom/umeng/common/b;->b()Z
move-result v0
if-eqz v0, :cond_86
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:goto_63
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "/download/.um/apk"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:goto_85
return-void
:cond_86
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
:try_end_92
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_92} :catch_93
goto :goto_63
:catch_93
move-exception v0
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-interface {v1, v2, v0}, Lcom/umeng/common/net/DownloadingService$a;->a(ILjava/lang/Exception;)V
goto :goto_85
.end method
.method static synthetic a(Lcom/umeng/common/net/DownloadingService$b;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
return-object v0
.end method
.method private a(Ljava/lang/Exception;)V
.registers 10
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "can not install. "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-interface {v0, v1, p1}, Lcom/umeng/common/net/DownloadingService$a;->a(ILjava/lang/Exception;)V
:cond_26
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-wide v2, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
iget-wide v4, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
iget v6, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
int-to-long v6, v6
invoke-static/range {v0 .. v7}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;JJJ)V
return-void
.end method
.method private a(Z)V
.registers 15
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_2
new-instance v0, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v3, v3, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;
invoke-static {v3}, Lcom/umeng/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, ".apk.tmp"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v3, v3, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;
const-string/jumbo v4, "delta_update"
invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_6ef
const-string/jumbo v3, "apk"
const-string/jumbo v4, "patch"
invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
move-object v3, v0
:goto_36
invoke-static {}, Lcom/umeng/common/b;->b()Z
move-result v0
if-eqz v0, :cond_182
new-instance v0, Ljava/io/File;
iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v8, Ljava/io/FileOutputStream;
const/4 v3, 0x1
invoke-direct {v8, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
:try_end_49
.catchall {:try_start_2 .. :try_end_49} :catchall_6bb
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_49} :catch_6da
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_49} :catch_6cc
move-object v4, v0
:try_start_4a
:goto_4a
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "saveAPK: url = %1$15s\t|\tfilename = %2$15s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v6, v6, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;
aput-object v6, v3, v5
const/4 v5, 0x1
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
aput-object v6, v3, v5
invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/net/URL;
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v1, v1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const-string/jumbo v1, "GET"
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const-string/jumbo v1, "Accept-Encoding"
const-string/jumbo v3, "identity"
invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "Connection"
const-string/jumbo v3, "keep-alive"
invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x1388
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const/16 v1, 0x2710
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_cb
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v5
const-wide/16 v9, 0x0
cmp-long v1, v5, v9
if-lez v1, :cond_cb
const-string/jumbo v1, "Range"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v5, "bytes="
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v5
invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v5, "-"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:cond_cb
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_d1
.catchall {:try_start_4a .. :try_end_d1} :catchall_6c5
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_d1} :catch_6e6
.catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_d1} :catch_6d6
move-result-object v9
if-nez p1, :cond_f9
const-wide/16 v1, 0x0
:try_start_d6
iput-wide v1, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
move-result v0
int-to-long v0, v0
iput-wide v0, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "getContentLength: %1$15s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-wide v5, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_f9
const/16 v0, 0x1000
new-array v5, v0, [B
const/4 v0, 0x0
const/16 v6, 0x32
const/4 v1, 0x1
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v7, v7, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "saveAPK getContentLength "
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-wide v10, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-static {v2}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;
move-result-object v2
iget-object v3, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v3, v3, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;
iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v7, v7, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;
invoke-virtual {v2, v3, v7}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;)Z
:goto_13b
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I
if-gez v2, :cond_145
invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I
move-result v2
if-gtz v2, :cond_1a1
:cond_145
move v0, v1
:goto_146
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I
const/4 v2, 0x1
if-ne v1, v2, :cond_2bd
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/common/net/DownloadingService$d;
iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J
const/4 v2, 0x0
iget-wide v3, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
aput-wide v3, v1, v2
iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J
const/4 v2, 0x1
iget-wide v3, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
aput-wide v3, v1, v2
iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J
const/4 v1, 0x2
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
int-to-long v2, v2
aput-wide v2, v0, v1
:try_end_177
.catchall {:try_start_d6 .. :try_end_177} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_d6 .. :try_end_177} :catch_231
.catch Landroid/os/RemoteException; {:try_start_d6 .. :try_end_177} :catch_460
if-eqz v9, :cond_17c
:try_start_179
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
:try_end_17c
.catchall {:try_start_179 .. :try_end_17c} :catchall_2ab
.catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_29a
:cond_17c
if-eqz v8, :cond_181
:try_start_17e
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:cond_181
:goto_181
:try_end_181
.catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_2b7
return-void
:cond_182
:try_start_182
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
const v4, 0x8003
invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
:try_end_196
.catchall {:try_start_182 .. :try_end_196} :catchall_6bb
.catch Ljava/io/IOException; {:try_start_182 .. :try_end_196} :catch_6da
.catch Landroid/os/RemoteException; {:try_start_182 .. :try_end_196} :catch_6cc
move-result-object v1
:try_start_197
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-virtual {v0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
:try_end_19c
.catchall {:try_start_197 .. :try_end_19c} :catchall_6c0
.catch Ljava/io/IOException; {:try_start_197 .. :try_end_19c} :catch_6e0
.catch Landroid/os/RemoteException; {:try_start_197 .. :try_end_19c} :catch_6d1
move-result-object v0
move-object v4, v0
move-object v8, v1
goto/16 :goto_4a
:cond_1a1
const/4 v3, 0x0
:try_start_1a2
invoke-virtual {v8, v5, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
iget-wide v10, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
int-to-long v2, v2
add-long/2addr v2, v10
iput-wide v2, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
add-int/lit8 v3, v0, 0x1
rem-int/2addr v0, v6
if-nez v0, :cond_20a
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_1ba
const/4 v0, 0x0
goto :goto_146
:cond_1ba
iget-wide v10, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
long-to-float v0, v10
const/high16 v2, 0x42c8
mul-float/2addr v0, v2
iget-wide v10, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
long-to-float v2, v10
div-float/2addr v0, v2
float-to-int v0, v0
const/16 v2, 0x64
if-le v0, v2, :cond_6ec
const/16 v0, 0x63
move v2, v0
:goto_1cc
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
if-eqz v0, :cond_1d7
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
iget v7, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-interface {v0, v7, v2}, Lcom/umeng/common/net/DownloadingService$a;->a(II)V
:try_end_1d7
.catchall {:try_start_1a2 .. :try_end_1d7} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1d7} :catch_231
.catch Landroid/os/RemoteException; {:try_start_1a2 .. :try_end_1d7} :catch_460
:cond_1d7
:try_start_1d7
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1f9
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Messenger;
const/4 v7, 0x0
const/4 v10, 0x3
const/4 v11, 0x0
invoke-static {v7, v10, v2, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;
move-result-object v7
invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:cond_1f9
:try_start_1f9
:try_end_1f9
.catchall {:try_start_1d7 .. :try_end_1f9} :catchall_6c9
.catch Landroid/os/DeadObjectException; {:try_start_1d7 .. :try_end_1f9} :catch_20d
.catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1f9} :catch_231
.catch Landroid/os/RemoteException; {:try_start_1d7 .. :try_end_1f9} :catch_460
:goto_1f9
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;
move-result-object v0
iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v7, v7, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;
iget-object v10, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v10, v10, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;
invoke-virtual {v0, v7, v10, v2}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;I)V
:cond_20a
move v0, v3
goto/16 :goto_13b
:catch_20d
move-exception v0
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v7, "Service Client for downloading %1$15s is dead. Removing messenger from the service"
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/Object;
const/4 v11, 0x0
iget-object v12, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v12, v12, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;
aput-object v12, v10, v11
invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-static {v0, v7}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
const/4 v10, 0x0
invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_230
.catchall {:try_start_1f9 .. :try_end_230} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_230} :catch_231
.catch Landroid/os/RemoteException; {:try_start_1f9 .. :try_end_230} :catch_460
goto :goto_1f9
:catch_231
move-exception v0
move-object v1, v0
move-object v2, v8
move-object v3, v9
:try_start_235
:goto_235
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
iget v0, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
const/4 v4, 0x3
if-le v0, v4, :cond_59a
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-boolean v0, v0, Lcom/umeng/common/net/a$a;->g:Z
:try_end_24d
.catchall {:try_start_235 .. :try_end_24d} :catchall_572
if-nez v0, :cond_59a
:try_start_24f
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v4, "Download Fail out of max repeat count"
invoke-static {v0, v4}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Messenger;
const/4 v4, 0x0
const/4 v5, 0x5
const/4 v6, 0x0
const/4 v7, 0x0
invoke-static {v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:try_start_270
:try_end_270
.catchall {:try_start_24f .. :try_end_270} :catchall_580
.catch Landroid/os/RemoteException; {:try_start_24f .. :try_end_270} :catch_554
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v4, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v0, v4}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
invoke-direct {p0, v1}, Lcom/umeng/common/net/DownloadingService$b;->a(Ljava/lang/Exception;)V
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/umeng/common/net/j;
invoke-direct {v1, p0}, Lcom/umeng/common/net/j;-><init>(Lcom/umeng/common/net/DownloadingService$b;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_288
:try_end_288
.catchall {:try_start_270 .. :try_end_288} :catchall_572
if-eqz v3, :cond_28d
:try_start_28a
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
:cond_28d
:try_end_28d
.catchall {:try_start_28a .. :try_end_28d} :catchall_652
.catch Ljava/io/IOException; {:try_start_28a .. :try_end_28d} :catch_641
if-eqz v2, :cond_181
:try_start_28f
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_292
.catch Ljava/io/IOException; {:try_start_28f .. :try_end_292} :catch_294
goto/16 :goto_181
:catch_294
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catch_29a
move-exception v0
:try_start_29b
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_29e
.catchall {:try_start_29b .. :try_end_29e} :catchall_2ab
if-eqz v8, :cond_181
:try_start_2a0
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_2a3
.catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2a3} :catch_2a5
goto/16 :goto_181
:catch_2a5
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catchall_2ab
move-exception v0
if-eqz v8, :cond_2b1
:try_start_2ae
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:goto_2b1
:try_end_2b1
.catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2b1} :catch_2b2
:cond_2b1
throw v0
:catch_2b2
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2b1
:catch_2b7
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:try_start_2bd
:cond_2bd
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I
const/4 v2, 0x2
if-ne v1, v2, :cond_30a
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-wide v2, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
iget-wide v4, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
iget v6, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
int-to-long v6, v6
invoke-static/range {v0 .. v7}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;JJJ)V
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
move-result-object v0
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
:try_end_2db
.catchall {:try_start_2bd .. :try_end_2db} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_2bd .. :try_end_2db} :catch_231
.catch Landroid/os/RemoteException; {:try_start_2bd .. :try_end_2db} :catch_460
if-eqz v9, :cond_2e0
:try_start_2dd
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
:try_end_2e0
.catchall {:try_start_2dd .. :try_end_2e0} :catchall_2fe
.catch Ljava/io/IOException; {:try_start_2dd .. :try_end_2e0} :catch_2ed
:cond_2e0
if-eqz v8, :cond_181
:try_start_2e2
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_2e5
.catch Ljava/io/IOException; {:try_start_2e2 .. :try_end_2e5} :catch_2e7
goto/16 :goto_181
:catch_2e7
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catch_2ed
move-exception v0
:try_start_2ee
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_2f1
.catchall {:try_start_2ee .. :try_end_2f1} :catchall_2fe
if-eqz v8, :cond_181
:try_start_2f3
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_2f6
.catch Ljava/io/IOException; {:try_start_2f3 .. :try_end_2f6} :catch_2f8
goto/16 :goto_181
:catch_2f8
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catchall_2fe
move-exception v0
if-eqz v8, :cond_304
:try_start_301
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_304
.catch Ljava/io/IOException; {:try_start_301 .. :try_end_304} :catch_305
:cond_304
:goto_304
throw v0
:catch_305
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_304
:cond_30a
if-nez v0, :cond_37e
:try_start_30c
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Download Fail repeat count="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Messenger;
const/4 v1, 0x0
const/4 v2, 0x5
const/4 v3, 0x0
const/4 v4, 0x0
invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
if-eqz v0, :cond_34f
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Lcom/umeng/common/net/DownloadingService$a;->a(ILjava/lang/Exception;)V
:cond_34f
:try_end_34f
.catchall {:try_start_30c .. :try_end_34f} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_30c .. :try_end_34f} :catch_231
.catch Landroid/os/RemoteException; {:try_start_30c .. :try_end_34f} :catch_460
if-eqz v9, :cond_354
:try_start_351
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
:cond_354
:try_end_354
.catchall {:try_start_351 .. :try_end_354} :catchall_372
.catch Ljava/io/IOException; {:try_start_351 .. :try_end_354} :catch_361
if-eqz v8, :cond_181
:try_start_356
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_359
.catch Ljava/io/IOException; {:try_start_356 .. :try_end_359} :catch_35b
goto/16 :goto_181
:catch_35b
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catch_361
move-exception v0
:try_start_362
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_365
.catchall {:try_start_362 .. :try_end_365} :catchall_372
if-eqz v8, :cond_181
:try_start_367
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_36a
.catch Ljava/io/IOException; {:try_start_367 .. :try_end_36a} :catch_36c
goto/16 :goto_181
:catch_36c
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catchall_372
move-exception v0
if-eqz v8, :cond_378
:try_start_375
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_378
.catch Ljava/io/IOException; {:try_start_375 .. :try_end_378} :catch_379
:cond_378
:goto_378
throw v0
:catch_379
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_378
:try_start_37e
:cond_37e
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v0, v0, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;
if-eqz v0, :cond_3bd
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v1, "dsize"
iget-wide v2, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, " "
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
aget-object v1, v1, v2
const-string/jumbo v2, "dtime"
invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "ptimes"
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v1, 0x1
iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v2, v2, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/umeng/common/net/DownloadingService;->a(Ljava/util/Map;Z[Ljava/lang/String;)V
:cond_3bd
new-instance v0, Ljava/io/File;
invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, ".tmp"
const-string/jumbo v5, ""
invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v2, v2, Lcom/umeng/common/net/a$a;->d:Ljava/lang/String;
if-eqz v2, :cond_537
iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v2, v2, Lcom/umeng/common/net/a$a;->d:Ljava/lang/String;
invoke-static {v0}, Lcom/umeng/common/util/g;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_537
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v0, v0, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;
const-string/jumbo v2, "delta_update"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_49a
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
move-result-object v0
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v2, "filename"
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v1
const/4 v2, 0x5
iput v2, v1, Landroid/os/Message;->what:I
const/4 v2, 0x3
iput v2, v1, Landroid/os/Message;->arg1:I
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
iput v2, v1, Landroid/os/Message;->arg2:I
invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
:try_end_423
.catchall {:try_start_37e .. :try_end_423} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_37e .. :try_end_423} :catch_231
.catch Landroid/os/RemoteException; {:try_start_37e .. :try_end_423} :catch_460
:try_start_423
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_43e
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Messenger;
invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:cond_43e
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
:try_end_445
.catchall {:try_start_423 .. :try_end_445} :catchall_6c9
.catch Landroid/os/RemoteException; {:try_start_423 .. :try_end_445} :catch_457
.catch Ljava/io/IOException; {:try_start_423 .. :try_end_445} :catch_231
:goto_445
if-eqz v9, :cond_44a
:try_start_447
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
:cond_44a
:try_end_44a
.catchall {:try_start_447 .. :try_end_44a} :catchall_48e
.catch Ljava/io/IOException; {:try_start_447 .. :try_end_44a} :catch_47d
if-eqz v8, :cond_181
:try_start_44c
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_44f
.catch Ljava/io/IOException; {:try_start_44c .. :try_end_44f} :catch_451
goto/16 :goto_181
:catch_451
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catch_457
move-exception v0
:try_start_458
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
:try_end_45f
.catchall {:try_start_458 .. :try_end_45f} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_458 .. :try_end_45f} :catch_231
.catch Landroid/os/RemoteException; {:try_start_458 .. :try_end_45f} :catch_460
goto :goto_445
:catch_460
move-exception v0
:goto_461
:try_start_461
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v1, v2}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
:try_end_46b
.catchall {:try_start_461 .. :try_end_46b} :catchall_6c9
if-eqz v9, :cond_470
:try_start_46d
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
:cond_470
:try_end_470
.catchall {:try_start_46d .. :try_end_470} :catchall_66f
.catch Ljava/io/IOException; {:try_start_46d .. :try_end_470} :catch_65e
if-eqz v8, :cond_181
:try_start_472
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_475
.catch Ljava/io/IOException; {:try_start_472 .. :try_end_475} :catch_477
goto/16 :goto_181
:catch_477
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catch_47d
move-exception v0
:try_start_47e
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_481
.catchall {:try_start_47e .. :try_end_481} :catchall_48e
if-eqz v8, :cond_181
:try_start_483
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_486
.catch Ljava/io/IOException; {:try_start_483 .. :try_end_486} :catch_488
goto/16 :goto_181
:catch_488
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catchall_48e
move-exception v0
if-eqz v8, :cond_494
:try_start_491
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_494
.catch Ljava/io/IOException; {:try_start_491 .. :try_end_494} :catch_495
:goto_494
:cond_494
throw v0
:catch_495
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_494
:cond_49a
:try_start_49a
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Messenger;
const/4 v1, 0x0
const/4 v2, 0x5
const/4 v3, 0x0
const/4 v4, 0x0
invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
new-instance v0, Landroid/app/Notification;
const v1, 0x1080082
const-string/jumbo v2, " \u4e0b\u8f7d\u5931\u8d25\u3002"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
const/4 v2, 0x0
new-instance v3, Landroid/content/Intent;
invoke-direct {v3}, Landroid/content/Intent;-><init>()V
const/4 v4, 0x0
invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v1
iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
iget-object v3, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-static {v3}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-object v5, v5, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, " \u4e0b\u8f7d\u5931\u8d25\u3002"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
iget v1, v0, Landroid/app/Notification;->flags:I
or-int/lit8 v1, v1, 0x10
iput v1, v0, Landroid/app/Notification;->flags:I
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
move-result-object v1
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:try_end_508
.catchall {:try_start_49a .. :try_end_508} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_49a .. :try_end_508} :catch_231
.catch Landroid/os/RemoteException; {:try_start_49a .. :try_end_508} :catch_460
if-eqz v9, :cond_50d
:try_start_50a
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
:cond_50d
:try_end_50d
.catchall {:try_start_50a .. :try_end_50d} :catchall_52b
.catch Ljava/io/IOException; {:try_start_50a .. :try_end_50d} :catch_51a
if-eqz v8, :cond_181
:try_start_50f
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_512
.catch Ljava/io/IOException; {:try_start_50f .. :try_end_512} :catch_514
goto/16 :goto_181
:catch_514
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catch_51a
move-exception v0
:try_start_51b
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_51e
.catchall {:try_start_51b .. :try_end_51e} :catchall_52b
if-eqz v8, :cond_181
:try_start_520
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_523
.catch Ljava/io/IOException; {:try_start_520 .. :try_end_523} :catch_525
goto/16 :goto_181
:catch_525
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catchall_52b
move-exception v0
if-eqz v8, :cond_531
:try_start_52e
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_531
.catch Ljava/io/IOException; {:try_start_52e .. :try_end_531} :catch_532
:goto_531
:cond_531
throw v0
:catch_532
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_531
:cond_537
:try_start_537
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
if-eqz v0, :cond_542
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-interface {v0, v2, v1}, Lcom/umeng/common/net/DownloadingService$a;->a(ILjava/lang/String;)V
:try_end_542
.catchall {:try_start_537 .. :try_end_542} :catchall_6c9
.catch Ljava/io/IOException; {:try_start_537 .. :try_end_542} :catch_231
.catch Landroid/os/RemoteException; {:try_start_537 .. :try_end_542} :catch_460
:cond_542
if-eqz v9, :cond_547
:try_start_544
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
:try_end_547
.catchall {:try_start_544 .. :try_end_547} :catchall_6af
.catch Ljava/io/IOException; {:try_start_544 .. :try_end_547} :catch_69e
:cond_547
if-eqz v8, :cond_181
:try_start_549
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_54c
.catch Ljava/io/IOException; {:try_start_549 .. :try_end_54c} :catch_54e
goto/16 :goto_181
:catch_54e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catch_554
move-exception v0
:try_start_555
invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
:try_end_558
.catchall {:try_start_555 .. :try_end_558} :catchall_580
:try_start_558
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v4, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v0, v4}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
invoke-direct {p0, v1}, Lcom/umeng/common/net/DownloadingService$b;->a(Ljava/lang/Exception;)V
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/umeng/common/net/j;
invoke-direct {v1, p0}, Lcom/umeng/common/net/j;-><init>(Lcom/umeng/common/net/DownloadingService$b;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_570
.catchall {:try_start_558 .. :try_end_570} :catchall_572
goto/16 :goto_288
:catchall_572
move-exception v0
move-object v8, v2
move-object v9, v3
:goto_575
if-eqz v9, :cond_57a
:try_start_577
invoke-virtual {v9}, Ljava/io/InputStream;->close()V
:cond_57a
:try_end_57a
.catchall {:try_start_577 .. :try_end_57a} :catchall_68c
.catch Ljava/io/IOException; {:try_start_577 .. :try_end_57a} :catch_67b
if-eqz v8, :cond_57f
:try_start_57c
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:goto_57f
:cond_57f
:try_end_57f
.catch Ljava/io/IOException; {:try_start_57c .. :try_end_57f} :catch_698
throw v0
:catchall_580
move-exception v0
:try_start_581
iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v5, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v4, v5}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
invoke-direct {p0, v1}, Lcom/umeng/common/net/DownloadingService$b;->a(Ljava/lang/Exception;)V
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
move-result-object v1
new-instance v4, Lcom/umeng/common/net/j;
invoke-direct {v4, p0}, Lcom/umeng/common/net/j;-><init>(Lcom/umeng/common/net/DownloadingService$b;)V
invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
throw v0
:cond_59a
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v4, "wait for repeating Test network repeat count="
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_start_5b3
:try_end_5b3
.catchall {:try_start_581 .. :try_end_5b3} :catchall_572
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;
iget-boolean v0, v0, Lcom/umeng/common/net/a$a;->g:Z
if-nez v0, :cond_5df
const-wide/16 v0, 0x1f40
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
iget-wide v0, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
const-wide/16 v4, 0x1
cmp-long v0, v0, v4
if-gez v0, :cond_5d9
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/umeng/common/net/DownloadingService$b;->a(Z)V
:try_end_5ca
.catchall {:try_start_5b3 .. :try_end_5ca} :catchall_572
.catch Ljava/lang/InterruptedException; {:try_start_5b3 .. :try_end_5ca} :catch_5cc
goto/16 :goto_288
:catch_5cc
move-exception v0
:try_start_5cd
invoke-direct {p0, v0}, Lcom/umeng/common/net/DownloadingService$b;->a(Ljava/lang/Exception;)V
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
:try_end_5d7
.catchall {:try_start_5cd .. :try_end_5d7} :catchall_572
goto/16 :goto_288
:cond_5d9
const/4 v0, 0x1
:try_start_5da
invoke-direct {p0, v0}, Lcom/umeng/common/net/DownloadingService$b;->a(Z)V
goto/16 :goto_288
:cond_5df
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;
move-result-object v0
iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/umeng/common/net/DownloadingService$d;
iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J
const/4 v4, 0x0
iget-wide v5, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
aput-wide v5, v1, v4
iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J
const/4 v4, 0x1
iget-wide v5, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J
aput-wide v5, v1, v4
iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J
const/4 v1, 0x2
iget v4, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
int-to-long v4, v4
aput-wide v4, v0, v1
iget v0, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
const-string/jumbo v1, "continue"
invoke-static {v0, v1}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/content/Intent;
iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
const-class v5, Lcom/umeng/common/net/DownloadingService;
invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v4, "com.umeng.broadcast.download.msg"
invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-static {v0, v4, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;
invoke-static {v4}, Lcom/umeng/common/a/c;->c(Landroid/content/Context;)I
move-result v4
invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "changed play state button on op-notification."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_63f
.catchall {:try_start_5da .. :try_end_63f} :catchall_572
.catch Ljava/lang/InterruptedException; {:try_start_5da .. :try_end_63f} :catch_5cc
goto/16 :goto_288
:catch_641
move-exception v0
:try_start_642
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_645
.catchall {:try_start_642 .. :try_end_645} :catchall_652
if-eqz v2, :cond_181
:try_start_647
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_64a
.catch Ljava/io/IOException; {:try_start_647 .. :try_end_64a} :catch_64c
goto/16 :goto_181
:catch_64c
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catchall_652
move-exception v0
if-eqz v2, :cond_658
:try_start_655
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_658
.catch Ljava/io/IOException; {:try_start_655 .. :try_end_658} :catch_659
:goto_658
:cond_658
throw v0
:catch_659
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_658
:catch_65e
move-exception v0
:try_start_65f
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_662
.catchall {:try_start_65f .. :try_end_662} :catchall_66f
if-eqz v8, :cond_181
:try_start_664
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_667
.catch Ljava/io/IOException; {:try_start_664 .. :try_end_667} :catch_669
goto/16 :goto_181
:catch_669
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catchall_66f
move-exception v0
if-eqz v8, :cond_675
:try_start_672
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:goto_675
:try_end_675
.catch Ljava/io/IOException; {:try_start_672 .. :try_end_675} :catch_676
:cond_675
throw v0
:catch_676
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_675
:catch_67b
move-exception v1
:try_start_67c
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
:try_end_67f
.catchall {:try_start_67c .. :try_end_67f} :catchall_68c
if-eqz v8, :cond_57f
:try_start_681
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_684
.catch Ljava/io/IOException; {:try_start_681 .. :try_end_684} :catch_686
goto/16 :goto_57f
:catch_686
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_57f
:catchall_68c
move-exception v0
if-eqz v8, :cond_692
:try_start_68f
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:cond_692
:try_end_692
.catch Ljava/io/IOException; {:try_start_68f .. :try_end_692} :catch_693
:goto_692
throw v0
:catch_693
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_692
:catch_698
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_57f
:catch_69e
move-exception v0
:try_start_69f
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_6a2
.catchall {:try_start_69f .. :try_end_6a2} :catchall_6af
if-eqz v8, :cond_181
:try_start_6a4
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_6a7
.catch Ljava/io/IOException; {:try_start_6a4 .. :try_end_6a7} :catch_6a9
goto/16 :goto_181
:catch_6a9
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_181
:catchall_6af
move-exception v0
if-eqz v8, :cond_6b5
:try_start_6b2
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:goto_6b5
:cond_6b5
:try_end_6b5
.catch Ljava/io/IOException; {:try_start_6b2 .. :try_end_6b5} :catch_6b6
throw v0
:catch_6b6
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_6b5
:catchall_6bb
move-exception v0
move-object v8, v1
move-object v9, v2
goto/16 :goto_575
:catchall_6c0
move-exception v0
move-object v8, v1
move-object v9, v2
goto/16 :goto_575
:catchall_6c5
move-exception v0
move-object v9, v2
goto/16 :goto_575
:catchall_6c9
move-exception v0
goto/16 :goto_575
:catch_6cc
move-exception v0
move-object v8, v1
move-object v9, v2
goto/16 :goto_461
:catch_6d1
move-exception v0
move-object v8, v1
move-object v9, v2
goto/16 :goto_461
:catch_6d6
move-exception v0
move-object v9, v2
goto/16 :goto_461
:catch_6da
move-exception v0
move-object v3, v2
move-object v2, v1
move-object v1, v0
goto/16 :goto_235
:catch_6e0
move-exception v0
move-object v3, v2
move-object v2, v1
move-object v1, v0
goto/16 :goto_235
:catch_6e6
move-exception v0
move-object v1, v0
move-object v3, v2
move-object v2, v8
goto/16 :goto_235
:cond_6ec
move v2, v0
goto/16 :goto_1cc
:cond_6ef
move-object v3, v0
goto/16 :goto_36
.end method
.method static synthetic b(Lcom/umeng/common/net/DownloadingService$b;)Lcom/umeng/common/net/DownloadingService;
.registers 2
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
return-object v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I
return-void
.end method
.method public run()V
.registers 6
const/4 v0, 0x0
iput v0, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I
:try_start_3
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;
iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I
invoke-interface {v1, v2}, Lcom/umeng/common/net/DownloadingService$a;->a(I)V
:cond_e
iget-wide v1, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-lez v1, :cond_17
const/4 v0, 0x1
:cond_17
invoke-direct {p0, v0}, Lcom/umeng/common/net/DownloadingService$b;->a(Z)V
invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-gtz v0, :cond_29
iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;
invoke-virtual {v0}, Lcom/umeng/common/net/DownloadingService;->stopSelf()V
:cond_29
:goto_29
:try_end_29
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a
return-void
:catch_2a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_29
.end method