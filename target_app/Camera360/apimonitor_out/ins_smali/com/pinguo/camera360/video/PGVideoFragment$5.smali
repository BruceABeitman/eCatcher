.class  Lcom/pinguo/camera360/video/PGVideoFragment$5;
.super Ljava/lang/Thread;
.source "PGVideoFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
.field private final synthetic val$insertVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;
.method constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/VideoInfo;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$5;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;
iput-object p2, p0, Lcom/pinguo/camera360/video/PGVideoFragment$5;->val$insertVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 3
:try_start_0
invoke-static {}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->getInstance()Lcom/pinguo/camera360/save/sandbox/SandBoxSql;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$5;->val$insertVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/save/sandbox/SandBoxSql;->insertVideo(Lcom/pinguo/camera360/video/VideoInfo;)J
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a
:goto_9
return-void
:catch_a
move-exception v0
goto :goto_9
.end method