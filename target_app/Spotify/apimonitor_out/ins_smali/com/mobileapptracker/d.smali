.class public final Lcom/mobileapptracker/d;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/mobileapptracker/b;
.method protected constructor <init>(Lcom/mobileapptracker/b;)V
.registers 2
iput-object p1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 12
iget-object v0, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-virtual {v0}, Lcom/mobileapptracker/b;->a()I
move-result v3
if-nez v3, :cond_9
:goto_8
return-void
:try_start_9
:cond_9
iget-object v0, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v0}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
const/4 v0, 0x1
const/16 v1, 0x32
if-le v3, v1, :cond_1b
add-int/lit8 v0, v3, -0x32
add-int/lit8 v0, v0, 0x1
:goto_1b
:cond_1b
if-gt v0, v3, :cond_18c
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-virtual {v1, v4}, Lcom/mobileapptracker/b;->b(Ljava/lang/String;)Ljava/lang/String;
:try_end_26
.catchall {:try_start_9 .. :try_end_26} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_26} :catch_98
move-result-object v5
if-eqz v5, :cond_17e
:try_start_29
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "link"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v2, "data"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v7, "post_body"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v7
const-string v8, "first_session"
invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
:try_end_45
.catchall {:try_start_29 .. :try_end_45} :catchall_11e
.catch Lorg/json/JSONException; {:try_start_29 .. :try_end_45} :catch_81
.catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_45} :catch_98
move-result v1
if-eqz v1, :cond_60
:try_start_48
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v1}, Lcom/mobileapptracker/b;->b(Lcom/mobileapptracker/b;)Lcom/mobileapptracker/g;
move-result-object v1
iget-object v1, v1, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;
monitor-enter v1
:try_end_51
.catchall {:try_start_48 .. :try_end_51} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_51} :catch_98
:try_start_51
iget-object v8, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v8}, Lcom/mobileapptracker/b;->b(Lcom/mobileapptracker/b;)Lcom/mobileapptracker/g;
move-result-object v8
iget-object v8, v8, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;
const-wide/32 v9, 0xea60
invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
monitor-exit v1
:try_end_60
.catchall {:try_start_51 .. :try_end_60} :catchall_95
:cond_60
:try_start_60
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v1}, Lcom/mobileapptracker/b;->b(Lcom/mobileapptracker/b;)Lcom/mobileapptracker/g;
move-result-object v1
if-eqz v1, :cond_170
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v1}, Lcom/mobileapptracker/b;->b(Lcom/mobileapptracker/b;)Lcom/mobileapptracker/g;
move-result-object v1
invoke-virtual {v1, v6, v2, v7}, Lcom/mobileapptracker/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
move-result v1
if-eqz v1, :cond_a7
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-virtual {v1, v4}, Lcom/mobileapptracker/b;->a(Ljava/lang/String;)V
const-wide/16 v1, 0x0
invoke-static {v1, v2}, Lcom/mobileapptracker/b;->a(J)J
:goto_7e
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:catch_81
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
iget-object v0, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-virtual {v0, v4}, Lcom/mobileapptracker/b;->a(Ljava/lang/String;)V
:try_end_8a
.catchall {:try_start_60 .. :try_end_8a} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_8a} :catch_98
iget-object v0, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v0}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
goto/16 :goto_8
:catchall_95
move-exception v0
:try_start_96
monitor-exit v1
throw v0
:catch_98
:try_end_98
.catchall {:try_start_96 .. :try_end_98} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_98} :catch_98
move-exception v0
:try_start_99
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
:try_end_9c
.catchall {:try_start_99 .. :try_end_9c} :catchall_11e
iget-object v0, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v0}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
goto/16 :goto_8
:cond_a7
add-int/lit8 v0, v0, -0x1
:try_start_a9
const-string v1, "&sdk_retry_attempt="
invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
:try_end_ae
.catchall {:try_start_a9 .. :try_end_ae} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_a9 .. :try_end_ae} :catch_98
move-result v2
if-lez v2, :cond_e8
const/4 v1, -0x1
add-int/lit8 v7, v2, 0x13
add-int/lit8 v2, v7, 0x1
:try_start_b6
:goto_b6
invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
:try_end_b9
.catchall {:try_start_b6 .. :try_end_b9} :catchall_11e
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_b6 .. :try_end_b9} :catch_c1
.catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_b9} :catch_98
move-result-object v8
:try_start_ba
invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_bd
.catchall {:try_start_ba .. :try_end_bd} :catchall_11e
.catch Ljava/lang/NumberFormatException; {:try_start_ba .. :try_end_bd} :catch_197
.catch Ljava/lang/InterruptedException; {:try_start_ba .. :try_end_bd} :catch_98
move-result v1
add-int/lit8 v2, v2, 0x1
goto :goto_b6
:catch_c1
move-exception v2
:goto_c2
add-int/lit8 v1, v1, 0x1
:try_start_c4
const-string v2, "&sdk_retry_attempt=\\d+"
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "&sdk_retry_attempt="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v6, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_d8
.catchall {:try_start_c4 .. :try_end_d8} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_c4 .. :try_end_d8} :catch_98
move-result-object v1
:try_start_d9
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v5, "link"
invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-virtual {v1, v2, v4}, Lcom/mobileapptracker/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
:cond_e8
:goto_e8
:try_end_e8
.catchall {:try_start_d9 .. :try_end_e8} :catchall_11e
.catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_e8} :catch_119
.catch Ljava/lang/InterruptedException; {:try_start_d9 .. :try_end_e8} :catch_98
:try_start_e8
invoke-static {}, Lcom/mobileapptracker/b;->b()J
move-result-wide v1
const-wide/16 v4, 0x0
cmp-long v1, v1, v4
if-nez v1, :cond_129
const-wide/16 v1, 0x1e
invoke-static {v1, v2}, Lcom/mobileapptracker/b;->a(J)J
:goto_f7
const-wide/high16 v1, 0x3ff0
const-wide v4, 0x3fb999999999999aL
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v6
mul-double/2addr v4, v6
add-double/2addr v1, v4
invoke-static {}, Lcom/mobileapptracker/b;->b()J
:try_end_107
.catchall {:try_start_e8 .. :try_end_107} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_e8 .. :try_end_107} :catch_98
move-result-wide v4
long-to-double v4, v4
mul-double/2addr v1, v4
const-wide v4, 0x408f400000000000L
mul-double/2addr v1, v4
double-to-long v1, v1
:try_start_111
invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
:try_end_114
.catchall {:try_start_111 .. :try_end_114} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_111 .. :try_end_114} :catch_116
goto/16 :goto_7e
:catch_116
move-exception v1
goto/16 :goto_7e
:catch_119
move-exception v1
:try_start_11a
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
:try_end_11d
.catchall {:try_start_11a .. :try_end_11d} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_11a .. :try_end_11d} :catch_98
goto :goto_e8
:catchall_11e
move-exception v0
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v1}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
throw v0
:cond_129
:try_start_129
invoke-static {}, Lcom/mobileapptracker/b;->b()J
move-result-wide v1
const-wide/16 v4, 0x1e
cmp-long v1, v1, v4
if-gtz v1, :cond_139
const-wide/16 v1, 0x5a
invoke-static {v1, v2}, Lcom/mobileapptracker/b;->a(J)J
goto :goto_f7
:cond_139
invoke-static {}, Lcom/mobileapptracker/b;->b()J
move-result-wide v1
const-wide/16 v4, 0x5a
cmp-long v1, v1, v4
if-gtz v1, :cond_149
const-wide/16 v1, 0x258
invoke-static {v1, v2}, Lcom/mobileapptracker/b;->a(J)J
goto :goto_f7
:cond_149
invoke-static {}, Lcom/mobileapptracker/b;->b()J
move-result-wide v1
const-wide/16 v4, 0x258
cmp-long v1, v1, v4
if-gtz v1, :cond_159
const-wide/16 v1, 0xe10
invoke-static {v1, v2}, Lcom/mobileapptracker/b;->a(J)J
goto :goto_f7
:cond_159
invoke-static {}, Lcom/mobileapptracker/b;->b()J
move-result-wide v1
const-wide/16 v4, 0xe10
cmp-long v1, v1, v4
if-gtz v1, :cond_169
const-wide/16 v1, 0x5460
invoke-static {v1, v2}, Lcom/mobileapptracker/b;->a(J)J
goto :goto_f7
:cond_169
const-wide/32 v1, 0x15180
invoke-static {v1, v2}, Lcom/mobileapptracker/b;->a(J)J
goto :goto_f7
:cond_170
const-string v1, "MobileAppTracker"
const-string v2, "Dropping queued request because no MAT object was found"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-virtual {v1, v4}, Lcom/mobileapptracker/b;->a(Ljava/lang/String;)V
goto/16 :goto_7e
:cond_17e
const-string v1, "MobileAppTracker"
const-string v2, "Null request skipped from queue"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-virtual {v1, v4}, Lcom/mobileapptracker/b;->a(Ljava/lang/String;)V
:try_end_18a
.catchall {:try_start_129 .. :try_end_18a} :catchall_11e
.catch Ljava/lang/InterruptedException; {:try_start_129 .. :try_end_18a} :catch_98
goto/16 :goto_7e
:cond_18c
iget-object v0, p0, Lcom/mobileapptracker/d;->a:Lcom/mobileapptracker/b;
invoke-static {v0}, Lcom/mobileapptracker/b;->a(Lcom/mobileapptracker/b;)Ljava/util/concurrent/Semaphore;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
goto/16 :goto_8
:catch_197
move-exception v2
goto/16 :goto_c2
.end method