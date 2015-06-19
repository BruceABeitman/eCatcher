.class public Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
.super Ljava/lang/Object;
.source "LVMediaCoderConfiguration.java"


# instance fields
.field public audioBitRate:I

.field public audioChannelCount:I

.field public audioSampleRate:I

.field public videoBitRate:I

.field public videoFrameRate:I

.field public videoHeight:I

.field public videoIFrameInterval:I

.field public videoWidth:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x1e0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xfa000

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoBitRate:I

    iput v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I

    iput v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoFrameRate:I

    iput v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoIFrameInterval:I

    const v0, 0xfa00

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioBitRate:I

    iput v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I

    const v0, 0xac44

    iput v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioSampleRate:I

    return-void
.end method
