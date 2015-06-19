.class public Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
.super Ljava/lang/Object;
.source "SoundSandBoxInfo.java"


# instance fields
.field private audioFormat:I

.field private channel:I

.field private path:Ljava/lang/String;

.field private sampleRate:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->path:Ljava/lang/String;

    iput v1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->sampleRate:I

    iput v1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->channel:I

    iput v1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->audioFormat:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->time:J

    return-void
.end method

.method public static json2SoundInfo(Ljava/lang/String;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
    .registers 7

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    :cond_9
    move-object v1, v3

    :goto_a
    return-object v1

    :cond_b
    :try_start_b
    new-instance v1, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;

    invoke-direct {v1}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "format"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setAudioFormat(I)V

    const-string/jumbo v4, "chn"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setChannel(I)V

    const-string/jumbo v4, "path"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setPath(Ljava/lang/String;)V

    const-string/jumbo v4, "rate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setSampleRate(I)V

    const-string/jumbo v4, "time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->setTime(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_47} :catch_48

    goto :goto_a

    :catch_48
    move-exception v0

    move-object v1, v3

    goto :goto_a
.end method


# virtual methods
.method public getAudioFormat()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->audioFormat:I

    return v0
.end method

.method public getChannel()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->channel:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->sampleRate:I

    return v0
.end method

.method public getSandboxDir()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->path:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAudioFormat(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->audioFormat:I

    return-void
.end method

.method public setChannel(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->channel:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->sampleRate:I

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->time:J

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "format"

    iget v3, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->audioFormat:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "rate"

    iget v3, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->sampleRate:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "chn"

    iget v3, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->channel:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "path"

    iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "time"

    iget-wide v3, p0, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->time:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v2

    :goto_31
    return-object v2

    :catch_32
    move-exception v0

    const-string/jumbo v2, ""

    goto :goto_31
.end method
