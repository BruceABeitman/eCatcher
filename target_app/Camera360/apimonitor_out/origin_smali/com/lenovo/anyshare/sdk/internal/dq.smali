.class public Lcom/lenovo/anyshare/sdk/internal/dq;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/anyshare/sdk/internal/dq$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/media/AudioRecord;

.field protected b:Lcom/lenovo/anyshare/sdk/internal/dr;

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

.field protected h:J

.field protected i:J


# direct methods
.method public constructor <init>(Lcom/lenovo/anyshare/sdk/internal/dr;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->d:I

    iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->b:Lcom/lenovo/anyshare/sdk/internal/dr;

    iput p2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->d:I

    return v0
.end method

.method public b()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    if-nez v0, :cond_7f

    iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->d:I

    invoke-static {v0, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->f:I

    iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->d:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->c:I

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->e:I

    iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->e:I

    iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->f:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->f:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->i:J

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->d:I

    iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->e:I

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    :try_start_35
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_99

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->h:J

    const-string/jumbo v0, "AudioRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recording started: BufferSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->e:I

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " KB , Interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms, mFrequence = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " khz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

    if-nez v0, :cond_98

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;

    invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/dq$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/dq;)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/dq$a;->start()V

    const-string/jumbo v0, "AudioRecorder"

    const-string/jumbo v1, "Poll Voice Data Thread Started"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    return-void

    :catch_99
    move-exception v6

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    throw v6
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

    if-eqz v0, :cond_1a

    :try_start_5
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/dq$a;->interrupt()V

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/dq$a;->join()V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_47

    :goto_f
    iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

    const-string/jumbo v0, "AudioRecorder"

    const-string/jumbo v1, "Poll Voice Data Thread Stopped"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3c

    :try_start_1e
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_2c
    iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_31} :catch_45

    :goto_31
    iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    const-string/jumbo v0, "AudioRecorder"

    const-string/jumbo v1, "Audio Recorder Stopped"

    invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void

    :catchall_3d
    move-exception v0

    iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->g:Lcom/lenovo/anyshare/sdk/internal/dq$a;

    throw v0

    :catchall_41
    move-exception v0

    iput-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;

    throw v0

    :catch_45
    move-exception v0

    goto :goto_31

    :catch_47
    move-exception v0

    goto :goto_f
.end method
