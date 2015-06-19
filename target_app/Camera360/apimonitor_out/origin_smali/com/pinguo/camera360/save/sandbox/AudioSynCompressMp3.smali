.class public Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;
.super Ljava/lang/Object;
.source "AudioSynCompressMp3.java"

# interfaces
.implements Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;


# instance fields
.field private data:[B

.field private info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

.field private priority:I

.field private running:Z

.field private srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Ljava/lang/String;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->data:[B

    iput-boolean v1, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->running:Z

    iput-object p1, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

    iput-object p2, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->srcPath:Ljava/lang/String;

    iput p3, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->priority:I

    iput-boolean v1, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->running:Z

    return-void
.end method


# virtual methods
.method public dealSuccess([BLcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->data:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->running:Z

    return-void
.end method

.method public synPcm2Mp3()[B
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->running:Z

    invoke-static {}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->getInstance()Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->info:Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

    iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->srcPath:Ljava/lang/String;

    iget v3, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->priority:I

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3;->asynPcm2Mp3(Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Lcom/pinguo/camera360/save/sandbox/AudioAsynCompressMp3$Audio2Mp3Listener;Ljava/lang/String;I)V

    :goto_10
    iget-boolean v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->running:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->data:[B

    return-object v0

    :cond_17
    const-wide/16 v0, 0x64

    :try_start_19
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_10

    :catch_1d
    move-exception v0

    goto :goto_10
.end method
