.class  Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$MyRunnable;
.super Ljava/lang/Object;
.source "AudioAsynCompressMp3.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
.method constructor <init>(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$MyRunnable;->this$0:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 13
const/4 v11, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$MyRunnable;->this$0:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
#calls: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->poll()Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
invoke-static {v6}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->access$0(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;)Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
move-result-object v2
:goto_7
if-nez v2, :cond_a
return-void
:cond_a
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->getInstance()Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
move-result-object v6
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->srcPath:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$1(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Ljava/lang/String;
move-result-object v7
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$2(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getSampleRate()I
move-result v8
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$2(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getChannel()I
move-result v9
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$2(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v10
invoke-virtual {v10}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getAudioFormat()I
move-result v10
invoke-virtual {v6, v7, v8, v9, v10}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->encodePcmFileToMp3(Ljava/lang/String;III)Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v6
if-lez v6, :cond_78
new-instance v5, Ljava/io/ByteArrayOutputStream;
invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_39
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_3d
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_5d
invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v3
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->listener:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$3(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
move-result-object v6
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$2(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v7
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->srcPath:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$1(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Ljava/lang/String;
move-result-object v8
invoke-interface {v6, v3, v7, v8}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;->dealSuccess([BLcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Ljava/lang/String;)V
:goto_56
:try_end_56
.catch Ljava/lang/Exception; {:try_start_39 .. :try_end_56} :catch_67
iget-object v6, p0, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$MyRunnable;->this$0:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;
#calls: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->poll()Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
invoke-static {v6}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->access$0(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;)Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;
move-result-object v2
goto :goto_7
:cond_5d
:try_start_5d
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
:try_end_66
.catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_67
goto :goto_3d
:catch_67
move-exception v1
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->listener:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$3(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
move-result-object v6
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$2(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v7
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->srcPath:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$1(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Ljava/lang/String;
move-result-object v8
invoke-interface {v6, v11, v7, v8}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;->dealSuccess([BLcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Ljava/lang/String;)V
goto :goto_56
:cond_78
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->listener:Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$3(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;
move-result-object v6
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$2(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v7
#getter for: Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->srcPath:Ljava/lang/String;
invoke-static {v2}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;->access$1(Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Info;)Ljava/lang/String;
move-result-object v8
invoke-interface {v6, v11, v7, v8}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;->dealSuccess([BLcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Ljava/lang/String;)V
goto :goto_56
.end method