.class  Lcom/pinguo/camera360/cloud/service/CloudShareService$3;
.super Ljava/lang/Thread;
.source "CloudShareService.java"
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
.field private final synthetic val$errorMessage:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/cloud/service/CloudShareService;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
iput-object p2, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->val$errorMessage:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 15
iget-object v12, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
#getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v12}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$5(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v12
invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
:try_start_9
new-instance v3, Ljava/io/File;
invoke-static {}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$6()Ljava/lang/String;
move-result-object v12
invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
:try_end_15
.catchall {:try_start_9 .. :try_end_15} :catchall_2e
move-result v12
if-nez v12, :cond_39
const/4 v0, 0x0
:try_start_19
invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
:try_end_1c
.catchall {:try_start_19 .. :try_end_1c} :catchall_2e
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_29
move-result v0
:goto_1d
if-nez v0, :cond_39
iget-object v12, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
#getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v12}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$5(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v12
invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
:goto_28
return-void
:catch_29
move-exception v2
:try_start_2a
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_2e
goto :goto_1d
:catchall_2e
move-exception v12
iget-object v13, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
#getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v13}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$5(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v13
invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
throw v12
:cond_39
:try_start_39
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v4
const-wide/32 v12, 0x100000
cmp-long v12, v4, v12
if-lez v12, :cond_6a
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:try_end_47
.catchall {:try_start_39 .. :try_end_47} :catchall_2e
move-result v1
if-nez v1, :cond_54
iget-object v12, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
#getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v12}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$5(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v12
invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_28
:cond_54
const/4 v0, 0x0
:try_start_55
invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
:try_end_58
.catchall {:try_start_55 .. :try_end_58} :catchall_2e
.catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_65
move-result v0
:goto_59
if-nez v0, :cond_6a
iget-object v12, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
#getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v12}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$5(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v12
invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto :goto_28
:catch_65
move-exception v2
:try_start_66
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_69
.catchall {:try_start_66 .. :try_end_69} :catchall_2e
goto :goto_59
:cond_6a
const/4 v6, 0x0
:try_start_6b
new-instance v7, Ljava/io/FileOutputStream;
const/4 v12, 0x1
invoke-direct {v7, v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
:try_end_71
.catchall {:try_start_6b .. :try_end_71} :catchall_d8
.catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_71} :catch_ba
.catch Ljava/io/IOException; {:try_start_6b .. :try_end_71} :catch_c9
:try_start_71
new-instance v8, Ljava/text/SimpleDateFormat;
const-string/jumbo v12, "yyyy-MM-dd HH-mm-ss :"
sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v8, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
new-instance v12, Ljava/lang/StringBuilder;
new-instance v13, Ljava/util/Date;
invoke-direct {v13, v9, v10}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v8, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v13
invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v13
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v13, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->val$errorMessage:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
const-string/jumbo v13, "\n"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B
move-result-object v12
invoke-virtual {v7, v12}, Ljava/io/FileOutputStream;->write([B)V
:try_end_a9
.catchall {:try_start_71 .. :try_end_a9} :catchall_ea
.catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_a9} :catch_f0
.catch Ljava/io/IOException; {:try_start_71 .. :try_end_a9} :catch_ed
if-eqz v7, :cond_f3
:try_start_ab
invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
:try_end_ae
.catchall {:try_start_ab .. :try_end_ae} :catchall_2e
.catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_e4
move-object v6, v7
:goto_af
:cond_af
iget-object v12, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$3;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
#getter for: Lcom/pinguo/camera360/cloud/service/CloudShareService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;
invoke-static {v12}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$5(Lcom/pinguo/camera360/cloud/service/CloudShareService;)Ljava/util/concurrent/locks/ReentrantLock;
move-result-object v12
invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
goto/16 :goto_28
:catch_ba
move-exception v2
:goto_bb
:try_start_bb
invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
:try_end_be
.catchall {:try_start_bb .. :try_end_be} :catchall_d8
if-eqz v6, :cond_af
:try_start_c0
invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
:try_end_c3
.catchall {:try_start_c0 .. :try_end_c3} :catchall_2e
.catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4
goto :goto_af
:catch_c4
move-exception v2
:try_start_c5
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_c8
.catchall {:try_start_c5 .. :try_end_c8} :catchall_2e
goto :goto_af
:catch_c9
move-exception v2
:try_start_ca
:goto_ca
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_cd
.catchall {:try_start_ca .. :try_end_cd} :catchall_d8
if-eqz v6, :cond_af
:try_start_cf
invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
:try_end_d2
.catchall {:try_start_cf .. :try_end_d2} :catchall_2e
.catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3
goto :goto_af
:catch_d3
move-exception v2
:try_start_d4
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_d7
.catchall {:try_start_d4 .. :try_end_d7} :catchall_2e
goto :goto_af
:catchall_d8
move-exception v12
:goto_d9
if-eqz v6, :cond_de
:try_start_db
invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
:try_end_de
.catchall {:try_start_db .. :try_end_de} :catchall_2e
.catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df
:cond_de
:goto_de
:try_start_de
throw v12
:catch_df
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_de
:catch_e4
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_e8
.catchall {:try_start_de .. :try_end_e8} :catchall_2e
move-object v6, v7
goto :goto_af
:catchall_ea
move-exception v12
move-object v6, v7
goto :goto_d9
:catch_ed
move-exception v2
move-object v6, v7
goto :goto_ca
:catch_f0
move-exception v2
move-object v6, v7
goto :goto_bb
:cond_f3
move-object v6, v7
goto :goto_af
.end method