.class public final Lcom/userzoom/y;
.super Ljava/lang/Thread;
.field private static d:Lcom/userzoom/y;
.field private a:Z
.field private b:Z
.field private c:Ljava/util/List;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/userzoom/y;->c:Ljava/util/List;
invoke-virtual {p0}, Lcom/userzoom/y;->start()V
return-void
.end method
.method public static a()Lcom/userzoom/y;
.registers 1
sget-object v0, Lcom/userzoom/y;->d:Lcom/userzoom/y;
if-nez v0, :cond_b
new-instance v0, Lcom/userzoom/y;
invoke-direct {v0}, Lcom/userzoom/y;-><init>()V
sput-object v0, Lcom/userzoom/y;->d:Lcom/userzoom/y;
:cond_b
sget-object v0, Lcom/userzoom/y;->d:Lcom/userzoom/y;
return-object v0
.end method
.method private declared-synchronized b()V
.registers 2
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
:goto_4
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_b
.catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_6
monitor-exit p0
return-void
:catch_6
move-exception v0
:try_start_7
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
:try_end_a
.catchall {:try_start_7 .. :try_end_a} :catchall_b
goto :goto_4
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Lcom/userzoom/x;)V
.registers 4
monitor-enter p0
:try_start_1
iget v0, p1, Lcom/userzoom/x;->a:I
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_6
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/userzoom/y;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:goto_10
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_1c
monitor-exit p0
return-void
:cond_12
const/4 v0, 0x0
goto :goto_6
:cond_14
:try_start_14
const-string v0, "QueueManager"
const-string v1, "packet is discarted for replies..."
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1b
.catchall {:try_start_14 .. :try_end_1b} :catchall_1c
goto :goto_10
:catchall_1c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(ZZ)V
.registers 4
monitor-enter p0
:try_start_1
iput-boolean p1, p0, Lcom/userzoom/y;->b:Z
iput-boolean p2, p0, Lcom/userzoom/y;->a:Z
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_a
monitor-exit p0
return-void
:catchall_a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final run()V
.registers 8
const/16 v6, 0x1e
const/4 v2, 0x0
:goto_3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/userzoom/y;->c:Ljava/util/List;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/userzoom/x;
iget-boolean v1, p0, Lcom/userzoom/y;->b:Z
if-nez v1, :cond_28
move v1, v2
:goto_1f
if-eqz v1, :cond_e
move-object v1, v0
:goto_22
if-nez v1, :cond_2f
invoke-direct {p0}, Lcom/userzoom/y;->b()V
goto :goto_3
:cond_28
iget-boolean v1, p0, Lcom/userzoom/y;->a:Z
const/4 v1, 0x1
goto :goto_1f
:cond_2c
const/4 v0, 0x0
move-object v1, v0
goto :goto_22
:cond_2f
iget-object v0, p0, Lcom/userzoom/y;->c:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const-string v3, "http.conn-manager.max-total"
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
const-string v3, "http.conn-manager.max-per-route"
new-instance v4, Lorg/apache/http/conn/params/ConnPerRouteBean;
invoke-direct {v4, v6}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V
invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
const-string v3, "http.protocol.expect-continue"
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
new-instance v0, Lorg/apache/http/client/methods/HttpPost;
iget-object v4, v1, Lcom/userzoom/x;->b:Ljava/lang/String;
invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
:try_start_66
new-instance v4, Lorg/apache/http/entity/StringEntity;
iget-object v5, v1, Lcom/userzoom/x;->c:Ljava/lang/String;
invoke-direct {v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
const-string v4, "Android "
const-string v5, "User-Agent"
invoke-virtual {v0, v5, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
const-string v3, "PacketVideo"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "video post status: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
const/16 v3, 0xc8
if-lt v0, v3, :cond_9f
const/16 v3, 0x12c
if-lt v0, v3, :cond_be
:cond_9f
invoke-virtual {v1}, Lcom/userzoom/x;->a()V
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_66 .. :try_end_a2} :catch_a4
goto/16 :goto_3
:catch_a4
move-exception v0
const-string v3, "PacketVideo"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Exception on service post video "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/userzoom/x;->a()V
goto/16 :goto_3
:cond_be
:try_start_be
const-string v0, "PacketVideo"
const-string v3, "SR: packet sended correctly"
invoke-static {v0, v3}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_c5
.catch Ljava/lang/Exception; {:try_start_be .. :try_end_c5} :catch_a4
goto/16 :goto_3
.end method