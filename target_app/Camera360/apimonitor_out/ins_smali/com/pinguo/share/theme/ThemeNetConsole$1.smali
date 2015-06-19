.class  Lcom/pinguo/share/theme/ThemeNetConsole$1;
.super Ljava/lang/Thread;
.source "ThemeNetConsole.java"
.field final synthetic this$0:Lcom/pinguo/share/theme/ThemeNetConsole;
.field private final synthetic val$mFHandler:Landroid/os/Handler;
.field private final synthetic val$strFFileName:Ljava/lang/String;
.field private final synthetic val$strFUrl:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/share/theme/ThemeNetConsole;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;
iput-object p2, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
iput-object p3, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$strFUrl:Ljava/lang/String;
iput-object p4, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$strFFileName:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 15
const/4 v12, 0x0
const v11, 0x10013
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;
#setter for: Lcom/pinguo/share/theme/ThemeNetConsole;->bCancelThread:Z
invoke-static {v10, v12}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$8(Lcom/pinguo/share/theme/ThemeNetConsole;Z)V
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole;->bCancelThread:Z
invoke-static {v10}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$9(Lcom/pinguo/share/theme/ThemeNetConsole;)Z
move-result v10
if-eqz v10, :cond_1d
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v5
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:goto_1c
return-void
:cond_1d
sget-object v11, Lcom/pinguo/share/theme/ThemeNetConsole;->lock:[B
monitor-enter v11
:try_start_20
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;
#calls: Lcom/pinguo/share/theme/ThemeNetConsole;->getConnection()Lorg/apache/http/client/HttpClient;
invoke-static {v10}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$10(Lcom/pinguo/share/theme/ThemeNetConsole;)Lorg/apache/http/client/HttpClient;
move-result-object v1
if-nez v1, :cond_3b
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
const v12, 0x10012
invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v5
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
monitor-exit v11
goto :goto_1c
:catchall_38
move-exception v10
monitor-exit v11
:try_end_3a
.catchall {:try_start_20 .. :try_end_3a} :catchall_38
throw v10
:try_start_3b
:cond_3b
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole;->bCancelThread:Z
invoke-static {v10}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$9(Lcom/pinguo/share/theme/ThemeNetConsole;)Z
move-result v10
if-eqz v10, :cond_53
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
const v12, 0x10013
invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v5
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_start_51
:try_end_51
.catchall {:try_start_3b .. :try_end_51} :catchall_38
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_51} :catch_103
.catch Ljava/lang/Exception; {:try_start_3b .. :try_end_51} :catch_116
monitor-exit v11
:try_end_52
.catchall {:try_start_51 .. :try_end_52} :catchall_38
goto :goto_1c
:cond_53
:try_start_53
new-instance v8, Lorg/apache/http/client/methods/HttpGet;
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$strFUrl:Ljava/lang/String;
invoke-direct {v8, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
invoke-interface {v1, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v9
invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v10
invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v4
new-instance v3, Ljava/io/File;
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$strFFileName:Ljava/lang/String;
invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v10
if-nez v10, :cond_b5
invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v10
invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z
move-result v10
if-nez v10, :cond_96
invoke-static {}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$2()Ljava/lang/String;
move-result-object v10
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "Create dir failed!"
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v13, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$strFFileName:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v10, v12}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_96
invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
move-result v10
if-nez v10, :cond_b5
invoke-static {}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$2()Ljava/lang/String;
move-result-object v10
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "Create file failed!"
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v13, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$strFFileName:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v10, v12}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_b5
new-instance v7, Ljava/io/FileOutputStream;
invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v10, 0x1000
new-array v0, v10, [B
const/4 v6, -0x1
:cond_bf
invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
move-result v6
const/4 v10, -0x1
if-ne v6, v10, :cond_e0
invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
invoke-virtual {v4}, Ljava/io/InputStream;->close()V
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
const v12, 0x10011
invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v5
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_end_dd
.catchall {:try_start_53 .. :try_end_dd} :catchall_38
.catch Ljava/io/IOException; {:try_start_53 .. :try_end_dd} :catch_103
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_dd} :catch_116
:goto_dd
:try_start_dd
monitor-exit v11
:try_end_de
.catchall {:try_start_dd .. :try_end_de} :catchall_38
goto/16 :goto_1c
:cond_e0
const/4 v10, 0x0
:try_start_e1
invoke-virtual {v7, v0, v10, v6}, Ljava/io/OutputStream;->write([BII)V
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->this$0:Lcom/pinguo/share/theme/ThemeNetConsole;
#getter for: Lcom/pinguo/share/theme/ThemeNetConsole;->bCancelThread:Z
invoke-static {v10}, Lcom/pinguo/share/theme/ThemeNetConsole;->access$9(Lcom/pinguo/share/theme/ThemeNetConsole;)Z
move-result v10
if-eqz v10, :cond_bf
invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
invoke-virtual {v4}, Ljava/io/InputStream;->close()V
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
const v12, 0x10013
invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v5
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_end_100
.catchall {:try_start_e1 .. :try_end_100} :catchall_38
.catch Ljava/io/IOException; {:try_start_e1 .. :try_end_100} :catch_103
.catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_100} :catch_116
:try_start_100
monitor-exit v11
goto/16 :goto_1c
:catch_103
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
const v12, 0x10012
invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v5
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_dd
:catch_116
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
const v12, 0x10012
invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v5
iget-object v10, p0, Lcom/pinguo/share/theme/ThemeNetConsole$1;->val$mFHandler:Landroid/os/Handler;
invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_end_128
.catchall {:try_start_100 .. :try_end_128} :catchall_38
goto :goto_dd
.end method