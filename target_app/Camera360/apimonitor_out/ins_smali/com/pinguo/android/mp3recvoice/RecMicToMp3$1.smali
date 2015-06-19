.class  Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;
.super Ljava/lang/Thread;
.source "RecMicToMp3.java"
.field final synthetic this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
.method constructor <init>(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 10
const/16 v8, 0xa
const/4 v7, 0x0
const/4 v6, 0x0
invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V
:try_start_7
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$2()Landroid/media/AudioRecord;
move-result-object v2
invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
:try_start_e
:try_end_e
.catchall {:try_start_7 .. :try_end_e} :catchall_82
.catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_e} :catch_3a
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-static {v2, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$6(J)V
:goto_15
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z
invoke-static {v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$7(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Z
:try_end_1a
.catchall {:try_start_e .. :try_end_1a} :catchall_6e
move-result v2
if-nez v2, :cond_54
:try_start_1d
iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
monitor-enter v3
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_82
:try_start_20
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;
invoke-static {v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$4(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Ljava/util/LinkedList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
monitor-exit v3
:try_start_2a
:try_end_2a
.catchall {:try_start_20 .. :try_end_2a} :catchall_e1
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#calls: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->closeAudio()V
invoke-static {v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$5(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)V
:try_end_2f
.catchall {:try_start_2a .. :try_end_2f} :catchall_82
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#setter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z
invoke-static {v2, v6}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$0(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Z)V
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#setter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;
invoke-static {v2, v7}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$1(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Ljava/lang/Thread;)V
:goto_39
return-void
:catch_3a
move-exception v0
:try_start_3b
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
const-string/jumbo v3, "Start recording failed !"
#calls: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->printLog(Ljava/lang/String;)V
invoke-static {v2, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$3(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
const/4 v3, 0x0
#setter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z
invoke-static {v2, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$0(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Z)V
:try_end_49
.catchall {:try_start_3b .. :try_end_49} :catchall_82
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#setter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z
invoke-static {v2, v6}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$0(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Z)V
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#setter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;
invoke-static {v2, v7}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$1(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Ljava/lang/Thread;)V
goto :goto_39
:cond_54
:try_start_54
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$8()J
:try_end_5b
.catchall {:try_start_54 .. :try_end_5b} :catchall_6e
move-result-wide v4
sub-long/2addr v2, v4
const-wide/16 v4, 0x384
cmp-long v2, v2, v4
if-gez v2, :cond_8e
const-wide/16 v2, 0x64
:try_start_65
invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
:try_end_68
.catchall {:try_start_65 .. :try_end_68} :catchall_6e
.catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_68} :catch_69
goto :goto_15
:catch_69
move-exception v0
:try_start_6a
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
:try_end_6d
.catchall {:try_start_6a .. :try_end_6d} :catchall_6e
goto :goto_15
:catchall_6e
move-exception v2
:try_start_6f
iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
monitor-enter v3
:try_start_72
:try_end_72
.catchall {:try_start_6f .. :try_end_72} :catchall_82
iget-object v4, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;
invoke-static {v4}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$4(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Ljava/util/LinkedList;
move-result-object v4
invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V
monitor-exit v3
:try_end_7c
.catchall {:try_start_72 .. :try_end_7c} :catchall_de
:try_start_7c
iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#calls: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->closeAudio()V
invoke-static {v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$5(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)V
throw v2
:catchall_82
:try_end_82
.catchall {:try_start_7c .. :try_end_82} :catchall_82
move-exception v2
iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#setter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mIsRecording:Z
invoke-static {v3, v6}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$0(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Z)V
iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#setter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mRecordingThread:Ljava/lang/Thread;
invoke-static {v3, v7}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$1(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;Ljava/lang/Thread;)V
throw v2
:cond_8e
:try_start_8e
invoke-static {}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$2()Landroid/media/AudioRecord;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mPCMbuffer:[S
invoke-static {v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$9(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)[S
move-result-object v3
const/4 v4, 0x0
iget-object v5, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mPCMbuffer:[S
invoke-static {v5}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$9(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)[S
move-result-object v5
array-length v5, v5
invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioRecord;->read([SII)I
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
invoke-static {v2, v3}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$6(J)V
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mPCMbuffer:[S
invoke-static {v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$9(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)[S
move-result-object v2
invoke-virtual {v2}, [S->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, [S
iget-object v3, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
monitor-enter v3
:try_end_b9
.catchall {:try_start_8e .. :try_end_b9} :catchall_6e
:try_start_b9
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;
invoke-static {v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$4(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Ljava/util/LinkedList;
move-result-object v2
invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
move-result v2
if-lt v2, v8, :cond_cf
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;
invoke-static {v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$4(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Ljava/util/LinkedList;
move-result-object v2
const/4 v4, 0x0
invoke-virtual {v2, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
:cond_cf
iget-object v2, p0, Lcom/pinguo/android/mp3recvoice/RecMicToMp3$1;->this$0:Lcom/pinguo/android/mp3recvoice/RecMicToMp3;
#getter for: Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->mAudioBufferList:Ljava/util/LinkedList;
invoke-static {v2}, Lcom/pinguo/android/mp3recvoice/RecMicToMp3;->access$4(Lcom/pinguo/android/mp3recvoice/RecMicToMp3;)Ljava/util/LinkedList;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
monitor-exit v3
goto/16 :goto_15
:catchall_db
move-exception v2
monitor-exit v3
:try_end_dd
.catchall {:try_start_b9 .. :try_end_dd} :catchall_db
:try_start_dd
throw v2
:try_end_de
.catchall {:try_start_dd .. :try_end_de} :catchall_6e
:catchall_de
move-exception v2
:try_start_df
monitor-exit v3
:try_end_e0
.catchall {:try_start_df .. :try_end_e0} :catchall_de
:try_start_e0
throw v2
:try_end_e1
.catchall {:try_start_e0 .. :try_end_e1} :catchall_82
:catchall_e1
move-exception v2
:try_start_e2
monitor-exit v3
:try_end_e3
.catchall {:try_start_e2 .. :try_end_e3} :catchall_e1
:try_start_e3
throw v2
:try_end_e4
.catchall {:try_start_e3 .. :try_end_e4} :catchall_82
.end method