.class final Lcom/baidu/location/g$4;
.super Ljava/lang/Thread;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 13
const/16 v11, 0x8
const/4 v0, 0x1
const/4 v1, -0x1
const/4 v2, 0x0
const-wide/16 v9, 0xff
const/4 v3, 0x3
:goto_8
if-lez v3, :cond_a9
:try_start_a
new-instance v4, Lorg/apache/http/client/methods/HttpPost;
invoke-static {}, Lcom/baidu/location/j;->do()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Lcom/baidu/location/g;->byte()Z
move-result v6
if-eqz v6, :cond_d5
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v7, "qt"
const-string/jumbo v8, "grid"
invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_2c
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v7, "req"
invoke-static {}, Lcom/baidu/location/g;->do()Ljava/lang/String;
move-result-object v8
invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string/jumbo v7, "utf-8"
invoke-direct {v6, v5, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v6
const-string/jumbo v7, "http.connection.timeout"
invoke-static {}, Lcom/baidu/location/g;->b()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v6
const-string/jumbo v7, "http.socket.timeout"
invoke-static {}, Lcom/baidu/location/g;->b()I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
invoke-interface {v6, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "req config..."
invoke-static {v6, v7}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v5
invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v6
invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v6
const/16 v7, 0xc8
if-ne v6, v7, :cond_2a6
invoke-static {}, Lcom/baidu/location/g;->byte()Z
move-result v4
if-eqz v4, :cond_24d
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v4
const-string/jumbo v6, "req config response..."
invoke-static {v4, v6}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_end_99
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_99} :catch_e5
:try_start_99
invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
move-result-object v4
if-nez v4, :cond_f4
move v0, v2
:goto_a4
:cond_a4
if-eqz v0, :cond_a9
invoke-static {}, Lcom/baidu/location/g;->for()V
:try_end_a9
.catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a9} :catch_11b
:goto_a9
:try_start_a9
:cond_a9
invoke-static {}, Lcom/baidu/location/j;->if()V
sget v0, Lcom/baidu/location/j;->t:I
if-eq v0, v1, :cond_2ab
sget v0, Lcom/baidu/location/j;->t:I
sget v3, Lcom/baidu/location/j;->t:I
invoke-static {v3}, Lcom/baidu/location/j;->if(I)V
:goto_b7
if-eq v0, v1, :cond_bc
invoke-static {v0}, Lcom/baidu/location/j;->a(I)V
:cond_bc
invoke-static {}, Lcom/baidu/location/g;->case()Landroid/os/Handler;
move-result-object v0
const/16 v1, 0x5c
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
const/4 v0, 0x0
invoke-static {v0}, Lcom/baidu/location/g;->do(Landroid/os/Handler;)Landroid/os/Handler;
:goto_cd
:try_end_cd
.catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_cd} :catch_2b3
const/4 v0, 0x0
invoke-static {v0}, Lcom/baidu/location/g;->a(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v2}, Lcom/baidu/location/g;->for(Z)Z
return-void
:cond_d5
:try_start_d5
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string/jumbo v7, "qt"
const-string/jumbo v8, "conf"
invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_e3
.catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e3} :catch_e5
goto/16 :goto_2c
:catch_e5
move-exception v4
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "Exception!!!"
invoke-static {v4, v5}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:goto_f0
add-int/lit8 v3, v3, -0x1
goto/16 :goto_8
:cond_f4
:try_start_f4
array-length v3, v4
const/16 v5, 0x280
if-ge v3, v5, :cond_11d
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "req config response.<640."
invoke-static {v3, v4}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x0
sput-boolean v3, Lcom/baidu/location/j;->ag:Z
sget-wide v3, Lcom/baidu/location/j;->Z:D
const-wide v5, 0x3f9999999999999aL
add-double/2addr v3, v5
sput-wide v3, Lcom/baidu/location/j;->o:D
sget-wide v3, Lcom/baidu/location/j;->J:D
const-wide v5, 0x3f9999999999999aL
sub-double/2addr v3, v5
sput-wide v3, Lcom/baidu/location/j;->if:D
goto :goto_a4
:catch_11b
move-exception v0
goto :goto_a9
:cond_11d
const/4 v3, 0x1
sput-boolean v3, Lcom/baidu/location/j;->ag:Z
const/4 v3, 0x7
aget-byte v3, v4, v3
int-to-long v5, v3
and-long/2addr v5, v9
const/16 v3, 0x38
shl-long/2addr v5, v3
const/4 v3, 0x6
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x30
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/4 v3, 0x5
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x28
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/4 v3, 0x4
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x20
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/4 v3, 0x3
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x18
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/4 v3, 0x2
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x10
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/4 v3, 0x1
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
shl-long/2addr v7, v11
or-long/2addr v5, v7
const/4 v3, 0x0
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
or-long/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "req config 1..."
invoke-static {v5, v6}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D
move-result-wide v5
sput-wide v5, Lcom/baidu/location/j;->if:D
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "req config response:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D
move-result-wide v7
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v5, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const/16 v3, 0xf
aget-byte v3, v4, v3
int-to-long v5, v3
and-long/2addr v5, v9
const/16 v3, 0x38
shl-long/2addr v5, v3
const/16 v3, 0xe
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x30
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/16 v3, 0xd
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x28
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/16 v3, 0xc
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x20
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/16 v3, 0xb
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x18
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/16 v3, 0xa
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
const/16 v3, 0x10
shl-long/2addr v7, v3
or-long/2addr v5, v7
const/16 v3, 0x9
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
shl-long/2addr v7, v11
or-long/2addr v5, v7
const/16 v3, 0x8
aget-byte v3, v4, v3
int-to-long v7, v3
and-long/2addr v7, v9
or-long/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D
move-result-wide v5
sput-wide v5, Lcom/baidu/location/j;->o:D
const/16 v5, 0x271
new-array v5, v5, [B
sput-object v5, Lcom/baidu/location/j;->j:[B
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "req config response:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D
move-result-wide v7
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v5, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
move v3, v2
:goto_21f
const/16 v5, 0x271
if-ge v3, v5, :cond_a4
sget-object v5, Lcom/baidu/location/j;->j:[B
add-int/lit8 v6, v3, 0x10
aget-byte v6, v4, v6
aput-byte v6, v5, v3
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "req config value:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
sget-object v7, Lcom/baidu/location/j;->j:[B
aget-byte v7, v7, v3
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_end_24a
.catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_24a} :catch_11b
add-int/lit8 v3, v3, 0x1
goto :goto_21f
:try_start_24d
:cond_24d
invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v4
const-string/jumbo v5, "utf-8"
invoke-static {v4, v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "req config value:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_end_273
.catch Ljava/lang/Exception; {:try_start_24d .. :try_end_273} :catch_e5
:try_start_273
invoke-static {v4}, Lcom/baidu/location/g;->if(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_286
invoke-static {}, Lcom/baidu/location/g;->long()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "Save to config"
invoke-static {v0, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/baidu/location/g;->c()V
:try_end_286
.catch Ljava/lang/Exception; {:try_start_273 .. :try_end_286} :catch_2ba
:cond_286
:goto_286
:try_start_286
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "ctr"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_a9
const-string/jumbo v3, "ctr"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
sput v0, Lcom/baidu/location/j;->t:I
:try_end_2a1
.catch Ljava/lang/Exception; {:try_start_286 .. :try_end_2a1} :catch_2a3
goto/16 :goto_a9
:catch_2a3
move-exception v0
goto/16 :goto_a9
:try_start_2a6
:cond_2a6
invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V
:try_end_2a9
.catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2a9} :catch_e5
goto/16 :goto_f0
:cond_2ab
:try_start_2ab
sget v0, Lcom/baidu/location/j;->new:I
if-eq v0, v1, :cond_2bc
sget v0, Lcom/baidu/location/j;->new:I
:try_end_2b1
.catch Ljava/lang/Exception; {:try_start_2ab .. :try_end_2b1} :catch_2b3
goto/16 :goto_b7
:catch_2b3
move-exception v0
const/4 v0, 0x0
invoke-static {v0}, Lcom/baidu/location/g;->do(Landroid/os/Handler;)Landroid/os/Handler;
goto/16 :goto_cd
:catch_2ba
move-exception v0
goto :goto_286
:cond_2bc
move v0, v1
goto/16 :goto_b7
.end method