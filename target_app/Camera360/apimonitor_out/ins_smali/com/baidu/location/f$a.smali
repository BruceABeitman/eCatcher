.class public Lcom/baidu/location/f$a;
.super Ljava/lang/Object;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field final synthetic a:Lcom/baidu/location/f;
.field private if:Landroid/content/Context;
.method constructor <init>(Lcom/baidu/location/f;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/baidu/location/f$a;->if:Landroid/content/Context;
invoke-virtual {p0}, Lcom/baidu/location/f$a;->a()V
return-void
.end method
.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a()V
.registers 8
const/4 v0, 0x0
const/16 v6, 0x800
:try_start_3
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/traces"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/error_fs.dat"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_e3
new-instance v3, Ljava/io/RandomAccessFile;
const-string/jumbo v1, "rw"
invoke-direct {v3, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v1, 0x118
invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
const/16 v1, 0x52e
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I
move-result v2
if-ne v1, v2, :cond_e0
const-wide/16 v1, 0x134
invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I
move-result v2
if-lez v2, :cond_e6
if-ge v2, v6, :cond_e6
const-string/jumbo v1, "baidu_location_service"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "A"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
new-array v4, v2, [B
const/4 v1, 0x0
invoke-virtual {v3, v4, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I
new-instance v1, Ljava/lang/String;
const/4 v5, 0x0
invoke-direct {v1, v4, v5, v2}, Ljava/lang/String;-><init>([BII)V
:goto_86
const-wide/16 v4, 0x258
invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I
move-result v2
if-lez v2, :cond_b9
if-ge v2, v6, :cond_b9
const-string/jumbo v0, "baidu_location_service"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "A"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
new-array v4, v2, [B
const/4 v0, 0x0
invoke-virtual {v3, v4, v0, v2}, Ljava/io/RandomAccessFile;->read([BII)I
new-instance v0, Ljava/lang/String;
const/4 v5, 0x0
invoke-direct {v0, v4, v5, v2}, Ljava/lang/String;-><init>([BII)V
:cond_b9
const-string/jumbo v2, "baidu_location_service"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v1, v0}, Lcom/baidu/location/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e0
const-wide/16 v0, 0x118
invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
const/16 v0, 0x303a
invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
:cond_e0
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
:try_end_e3
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e3} :catch_e4
:goto_e3
:cond_e3
return-void
:catch_e4
move-exception v0
goto :goto_e3
:cond_e6
move-object v1, v0
goto :goto_86
.end method
.method public a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
:try_start_0
new-instance v0, Ljava/io/RandomAccessFile;
const-string/jumbo v1, "rw"
invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v1, 0x118
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
const/16 v1, 0x303a
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
const-wide/16 v1, 0x12c
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V
invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B
move-result-object v1
array-length v2, v1
invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
const/4 v2, 0x0
array-length v3, v1
invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
const-wide/16 v1, 0x258
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B
move-result-object v1
array-length v2, v1
invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
const/4 v2, 0x0
array-length v3, v1
invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
invoke-virtual {p0, p2, p3}, Lcom/baidu/location/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4d
const-wide/16 v1, 0x118
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
const/16 v1, 0x52e
invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V
:cond_4d
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:goto_50
:try_end_50
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51
return-void
:catch_51
move-exception v0
goto :goto_50
.end method
.method  a(Ljava/lang/String;Ljava/lang/String;)Z
.registers 10
const/4 v0, 0x0
iget-object v1, p0, Lcom/baidu/location/f$a;->if:Landroid/content/Context;
invoke-static {v1}, Lcom/baidu/location/g;->a(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_a
:goto_9
:cond_9
return v0
:cond_a
const/16 v1, 0x2ee0
:try_start_c
new-instance v2, Lorg/apache/http/client/methods/HttpPost;
sget-object v3, Lcom/baidu/location/j;->N:Ljava/lang/String;
invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v5, "e0"
invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v5, "e1"
invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string/jumbo v5, "utf-8"
invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v4
const-string/jumbo v5, "http.connection.timeout"
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-interface {v4, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v4
const-string/jumbo v5, "http.socket.timeout"
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v4, v5, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
const-string/jumbo v1, "baidu_location_service"
const-string/jumbo v4, "send begin ..."
invoke-static {v1, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v1
const/16 v2, 0xc8
if-ne v1, v2, :cond_9
const-string/jumbo v1, "baidu_location_service"
const-string/jumbo v2, "send ok...."
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_end_7c
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_7c} :catch_7e
const/4 v0, 0x1
goto :goto_9
:catch_7e
move-exception v1
goto :goto_9
.end method
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 11
const/4 v1, 0x0
sget-boolean v0, Lcom/baidu/location/j;->x:Z
if-nez v0, :cond_d
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v0
invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
:goto_c
return-void
:try_start_d
:cond_d
invoke-direct {p0, p2}, Lcom/baidu/location/f$a;->a(Ljava/lang/Throwable;)Ljava/lang/String;
:try_end_10
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_a6
move-result-object v2
:try_start_11
const-string/jumbo v0, "baidu_location_service"
invoke-static {v0, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;
invoke-static {v0}, Lcom/baidu/location/f;->long(Lcom/baidu/location/f;)Lcom/baidu/location/c;
const/4 v0, 0x0
invoke-static {v0}, Lcom/baidu/location/c;->a(Z)Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;
invoke-static {v3}, Lcom/baidu/location/f;->new(Lcom/baidu/location/f;)Lcom/baidu/location/a;
move-result-object v3
if-eqz v3, :cond_44
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v3, p0, Lcom/baidu/location/f$a;->a:Lcom/baidu/location/f;
invoke-static {v3}, Lcom/baidu/location/f;->new(Lcom/baidu/location/f;)Lcom/baidu/location/a;
move-result-object v3
invoke-virtual {v3}, Lcom/baidu/location/a;->byte()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_44
if-eqz v0, :cond_d4
invoke-static {v0}, Lcom/baidu/location/Jni;->if(Ljava/lang/String;)Ljava/lang/String;
:try_end_49
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_49} :catch_cf
move-result-object v0
:goto_4a
move-object v3, v0
:goto_4b
:try_start_4b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v4, "/traces"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v5, "/error_fs.dat"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
new-instance v0, Ljava/io/File;
invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_ab
new-instance v5, Ljava/io/File;
invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v4
if-nez v4, :cond_94
invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
:cond_94
invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
move-result v4
if-nez v4, :cond_d2
:goto_9a
invoke-virtual {p0, v1, v3, v2}, Lcom/baidu/location/f$a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
:goto_9d
:try_end_9d
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_9d} :catch_cd
:cond_9d
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v0
invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
goto/16 :goto_c
:catch_a6
move-exception v0
move-object v0, v1
:goto_a8
move-object v2, v0
move-object v3, v1
goto :goto_4b
:cond_ab
:try_start_ab
new-instance v1, Ljava/io/RandomAccessFile;
const-string/jumbo v4, "rw"
invoke-direct {v1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-wide/16 v4, 0x12c
invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J
move-result-wide v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long v4, v6, v4
const-wide/32 v6, 0x240c8400
cmp-long v1, v4, v6
if-lez v1, :cond_9d
invoke-virtual {p0, v0, v3, v2}, Lcom/baidu/location/f$a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
:try_end_cc
.catch Ljava/lang/Exception; {:try_start_ab .. :try_end_cc} :catch_cd
goto :goto_9d
:catch_cd
move-exception v0
goto :goto_9d
:catch_cf
move-exception v0
move-object v0, v2
goto :goto_a8
:cond_d2
move-object v1, v0
goto :goto_9a
:cond_d4
move-object v0, v1
goto/16 :goto_4a
.end method