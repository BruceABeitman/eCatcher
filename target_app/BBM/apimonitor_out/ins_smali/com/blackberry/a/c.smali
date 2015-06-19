.class public final Lcom/blackberry/a/c;
.super Ljava/lang/Object;
.source "IcebergClient.java"
.field  a:Lcom/blackberry/a/a;
.field  b:Ljava/lang/String;
.field  c:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field  e:Ljava/lang/Boolean;
.field  f:I
.field  g:Ljava/lang/String;
.field  h:Ljava/lang/String;
.field  i:Ljava/lang/String;
.field  j:Ljava/lang/String;
.field  k:[B
.field  l:Ljava/lang/String;
.field  m:Ljava/lang/String;
.field  n:Ljava/lang/String;
.field  o:Ljava/lang/String;
.field  p:Ljava/lang/String;
.field  q:Ljava/util/concurrent/Semaphore;
.field  r:Ljava/util/concurrent/Semaphore;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/blackberry/a/c;->a:Lcom/blackberry/a/a;
iput-object v1, p0, Lcom/blackberry/a/c;->b:Ljava/lang/String;
iput-object v1, p0, Lcom/blackberry/a/c;->c:Ljava/lang/String;
iput-object v1, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/blackberry/a/c;->e:Ljava/lang/Boolean;
const/4 v0, -0x1
iput v0, p0, Lcom/blackberry/a/c;->f:I
iput-object v1, p0, Lcom/blackberry/a/c;->g:Ljava/lang/String;
const-string v0, "/api/v0.1/enhance/immediate"
iput-object v0, p0, Lcom/blackberry/a/c;->i:Ljava/lang/String;
const-string v0, "l2oSXbfozNyEiBu0xmPfl0q2+ghmUqNTvvhlhF8NwfU="
iput-object v0, p0, Lcom/blackberry/a/c;->j:Ljava/lang/String;
sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
iput-object v0, p0, Lcom/blackberry/a/c;->l:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/blackberry/a/c;->m:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "BlackBerry Alaska Android OS/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/blackberry/a/c;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Model/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/blackberry/a/c;->m:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/blackberry/a/c;->n:Ljava/lang/String;
const-string v0, "BBIDAuthN_1"
iput-object v0, p0, Lcom/blackberry/a/c;->o:Ljava/lang/String;
const-string v0, "urn:bbid:v1:gist-xplatform"
iput-object v0, p0, Lcom/blackberry/a/c;->p:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/Semaphore;
invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V
iput-object v0, p0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;
new-instance v0, Ljava/util/concurrent/Semaphore;
invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V
iput-object v0, p0, Lcom/blackberry/a/c;->r:Ljava/util/concurrent/Semaphore;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/logs"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/blackberry/a/i;->a(Ljava/lang/String;)V
iput-object p3, p0, Lcom/blackberry/a/c;->b:Ljava/lang/String;
new-instance v0, Lcom/blackberry/a/a;
invoke-direct {v0, p2}, Lcom/blackberry/a/a;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/blackberry/a/c;->a:Lcom/blackberry/a/a;
invoke-static {p1}, Lcom/blackberry/ids/IDS;->init(Landroid/content/Context;)V
const/4 v0, 0x5
iget-object v1, p0, Lcom/blackberry/a/c;->a:Lcom/blackberry/a/a;
iget-object v1, v1, Lcom/blackberry/a/a;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/blackberry/ids/IDS;->ids_set_option(ILjava/lang/String;)I
iget-object v0, p0, Lcom/blackberry/a/c;->j:Ljava/lang/String;
invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
move-result-object v0
iput-object v0, p0, Lcom/blackberry/a/c;->k:[B
sget-object v0, Lcom/blackberry/a/h;->a:[I
iget-object v1, p0, Lcom/blackberry/a/c;->a:Lcom/blackberry/a/a;
iget-object v1, v1, Lcom/blackberry/a/a;->a:Lcom/blackberry/a/b;
invoke-virtual {v1}, Lcom/blackberry/a/b;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_d6
:goto_c0
return-void
:pswitch_c1
const-string v0, "http://10.236.2.85"
iput-object v0, p0, Lcom/blackberry/a/c;->h:Ljava/lang/String;
goto :goto_c0
:pswitch_c6
const-string v0, "http://127.0.0.1"
iput-object v0, p0, Lcom/blackberry/a/c;->h:Ljava/lang/String;
goto :goto_c0
:pswitch_cb
const-string v0, "https://iceberg.eval.blackberry.com"
iput-object v0, p0, Lcom/blackberry/a/c;->h:Ljava/lang/String;
goto :goto_c0
:pswitch_d0
const-string v0, "https://iceberg.blackberry.com"
iput-object v0, p0, Lcom/blackberry/a/c;->h:Ljava/lang/String;
goto :goto_c0
nop
:pswitch_data_d6
.packed-switch 0x1
:pswitch_c1
:pswitch_c6
:pswitch_cb
:pswitch_d0
.end packed-switch
.end method
.method public final a(Ljava/util/List;)Ljava/lang/String;
.registers 14
const-wide/16 v10, 0x3e8
:try_start_2
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
if-ne v0, v1, :cond_5b
new-instance v0, Ljava/lang/Exception;
const-string v1, "Cannot be run on the main thread"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:catch_18
:try_end_18
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_18
move-exception v0
move-object v1, v0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_44
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ": "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_44
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
div-long/2addr v3, v10
long-to-int v1, v3
add-int/lit8 v1, v1, 0x3c
const-string v3, "error"
invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "next_enhancement"
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
:goto_5a
return-object v0
:cond_5b
:try_start_5b
iget-object v0, p0, Lcom/blackberry/a/c;->r:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
:try_end_60
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_18
:try_start_60
new-instance v5, Lcom/blackberry/ids/RequestId;
invoke-direct {v5}, Lcom/blackberry/ids/RequestId;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/blackberry/a/c;->c:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/blackberry/a/c;->e:Ljava/lang/Boolean;
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
:goto_77
invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_127
iget-object v0, p0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
const-string v0, "Getting BBID Token"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, 0x0
iget-object v1, p0, Lcom/blackberry/a/c;->o:Ljava/lang/String;
iget-object v2, p0, Lcom/blackberry/a/c;->p:Ljava/lang/String;
new-instance v3, Lcom/blackberry/a/d;
invoke-direct {v3, p0}, Lcom/blackberry/a/d;-><init>(Lcom/blackberry/a/c;)V
new-instance v4, Lcom/blackberry/a/e;
invoke-direct {v4, p0}, Lcom/blackberry/a/e;-><init>(Lcom/blackberry/a/c;)V
invoke-static/range {v0 .. v5}, Lcom/blackberry/ids/IDS;->ids_get_token(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/blackberry/ids/IGetTokenCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
iget-object v0, p0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
iget-object v0, p0, Lcom/blackberry/a/c;->e:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_11a
iget v0, p0, Lcom/blackberry/a/c;->f:I
const v1, 0xc3ea
if-eq v0, v1, :cond_d3
iget-object v0, p0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
new-instance v0, Ljava/lang/Exception;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "BBID error: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/blackberry/a/c;->g:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:catchall_cc
:try_end_cc
.catchall {:try_start_60 .. :try_end_cc} :catchall_cc
move-exception v0
:try_start_cd
iget-object v1, p0, Lcom/blackberry/a/c;->r:Ljava/util/concurrent/Semaphore;
invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
throw v0
:try_end_d3
.catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d3} :catch_18
:cond_d3
const/4 v0, 0x0
:try_start_d4
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iput-object v0, p0, Lcom/blackberry/a/c;->e:Ljava/lang/Boolean;
const-string v0, "Sending BBID Challenge"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/a/i;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, 0x0
const/4 v1, 0x0
new-instance v2, Lcom/blackberry/a/f;
invoke-direct {v2, p0}, Lcom/blackberry/a/f;-><init>(Lcom/blackberry/a/c;)V
new-instance v3, Lcom/blackberry/a/g;
invoke-direct {v3, p0}, Lcom/blackberry/a/g;-><init>(Lcom/blackberry/a/c;)V
invoke-static {v0, v1, v2, v3, v5}, Lcom/blackberry/ids/IDS;->ids_challenge(Ljava/lang/Object;ILcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;Lcom/blackberry/ids/RequestId;)I
iget-object v0, p0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
iget-object v0, p0, Lcom/blackberry/a/c;->e:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_32e
iget-object v0, p0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
new-instance v0, Ljava/lang/Exception;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "BBID error: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/blackberry/a/c;->g:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_11a
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_11f
iget-object v1, p0, Lcom/blackberry/a/c;->q:Ljava/util/concurrent/Semaphore;
invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
move-object v6, v0
goto/16 :goto_77
:cond_127
iget-object v0, p0, Lcom/blackberry/a/c;->c:Ljava/lang/String;
if-eqz v0, :cond_12f
iget-object v0, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
if-nez v0, :cond_13f
:cond_12f
const-string v0, "No BBID Token retrieved, aborting"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/a/i;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/lang/Exception;
const-string v1, "No BBID Token retrieved"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:cond_13f
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string v0, "pin"
iget-object v4, p0, Lcom/blackberry/a/c;->b:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "os"
iget-object v4, p0, Lcom/blackberry/a/c;->l:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "model"
iget-object v4, p0, Lcom/blackberry/a/c;->m:Ljava/lang/String;
invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_167
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1bb
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
new-instance v6, Lorg/json/JSONArray;
invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
new-instance v7, Lorg/json/JSONObject;
invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
const-string v8, "kind"
const-string v9, "email"
invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v8, "subkind"
const-string v9, "other"
invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v8, "value"
invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
const-string v0, "device_id"
iget-object v7, p0, Lcom/blackberry/a/c;->b:Ljava/lang/String;
invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "device_spec"
invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "timeout_ms"
const v7, 0xe86c
invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v0, "attributes"
invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "internal-only"
const/4 v6, 0x0
invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_167
:cond_1bb
const-string v0, "batch"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/blackberry/a/c;->h:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/blackberry/a/c;->i:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/blackberry/a/c;->n:Ljava/lang/String;
invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
move-result-object v2
new-instance v3, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
:try_start_1e0
:try_end_1e0
.catchall {:try_start_d4 .. :try_end_1e0} :catchall_cc
const-string v0, "HmacSHA256"
invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
:try_end_1e5
.catchall {:try_start_1e0 .. :try_end_1e5} :catchall_cc
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e0 .. :try_end_1e5} :catch_214
move-result-object v0
:try_start_1e6
new-instance v4, Ljavax/crypto/spec/SecretKeySpec;
iget-object v5, p0, Lcom/blackberry/a/c;->k:[B
const-string v6, "HmacSHA256"
invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
:try_end_1ef
.catchall {:try_start_1e6 .. :try_end_1ef} :catchall_cc
:try_start_1ef
invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
:try_end_1f2
.catchall {:try_start_1ef .. :try_end_1f2} :catchall_cc
.catch Ljava/security/InvalidKeyException; {:try_start_1ef .. :try_end_1f2} :catch_223
:goto_1f2
:try_start_1f2
iget-object v4, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
rem-int/lit8 v4, v4, 0x4
if-eqz v4, :cond_232
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
goto :goto_1f2
:catch_214
move-exception v0
const-string v1, "error creating HMAC-SHA256"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/a/i;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v1, Ljava/lang/Exception;
invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_223
move-exception v0
const-string v1, "error with authentication key"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/blackberry/a/i;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v1, Ljava/lang/Exception;
invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_232
iget-object v4, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
const/4 v5, 0x0
invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
move-result-object v4
const/4 v5, 0x2
invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
const-wide/16 v6, 0x3e8
div-long/2addr v4, v6
long-to-int v4, v4
invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ":"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/blackberry/a/c;->d:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, ":"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v6, "ascii"
invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v5
invoke-virtual {v0, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
move-result-object v0
const/4 v5, 0x2
invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v4, "Authorization"
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "BBID "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v6, p0, Lcom/blackberry/a/c;->c:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "X-Zoidberg-Auth"
invoke-virtual {v3, v4, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "Content-type"
const-string v4, "application/json"
invoke-virtual {v3, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "X-Zoidberg-API"
const-string v4, "1"
invoke-virtual {v3, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:try_end_2b4
.catchall {:try_start_1f2 .. :try_end_2b4} :catchall_cc
:try_start_2b4
iget-object v0, p0, Lcom/blackberry/a/c;->r:Ljava/util/concurrent/Semaphore;
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
new-instance v0, Lorg/apache/http/entity/StringEntity;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
:try_start_2c8
:try_end_2c8
.catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_2c8} :catch_18
invoke-virtual {v2, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v3
const-string v0, ""
if-eqz v3, :cond_2dc
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
:cond_2dc
const-string v3, "application/json"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2f9
const-string v0, "response data not JSON"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/a/i;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/lang/Exception;
const-string v1, "response data not JSON"
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
throw v0
:catchall_2f4
:try_end_2f4
.catchall {:try_start_2c8 .. :try_end_2f4} :catchall_2f4
move-exception v0
:try_start_2f5
invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V
throw v0
:try_end_2f9
.catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2f9} :catch_18
:cond_2f9
:try_start_2f9
invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
new-instance v3, Ljava/io/BufferedReader;
new-instance v4, Ljava/io/InputStreamReader;
invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_30c
.catchall {:try_start_2f9 .. :try_end_30c} :catchall_2f4
:try_start_30c
:goto_30c
invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_325
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_315
.catchall {:try_start_30c .. :try_end_315} :catchall_2f4
.catch Ljava/lang/Exception; {:try_start_30c .. :try_end_315} :catch_316
goto :goto_30c
:catch_316
move-exception v0
:try_start_317
const-string v1, "Error reading response"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0, v1, v3}, Lcom/blackberry/a/i;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v1, Ljava/lang/Exception;
invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V
throw v1
:try_end_325
.catchall {:try_start_317 .. :try_end_325} :catchall_2f4
:cond_325
:try_start_325
invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_32b
.catch Ljava/lang/Exception; {:try_start_325 .. :try_end_32b} :catch_18
move-result-object v0
goto/16 :goto_5a
:cond_32e
move-object v0, v6
goto/16 :goto_11f
.end method