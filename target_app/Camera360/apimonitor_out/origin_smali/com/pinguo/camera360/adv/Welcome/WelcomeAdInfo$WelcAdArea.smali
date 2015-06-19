.class public Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;
.super Ljava/lang/Object;
.source "WelcomeAdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WelcAdArea"
.end annotation


# instance fields
.field public areaId:Ljava/lang/String;

.field public expireTimeStamp:J

.field public imageInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public opTimeStamp:J

.field public showTimes:J

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->status:I

    return-void
.end method

.method private logTime(J)Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public shouldBeShown(J)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->status:I

    if-eq v4, v3, :cond_7

    :cond_6
    :goto_6
    return v2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    iget-wide v4, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->opTimeStamp:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_6

    iget-wide v4, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->expireTimeStamp:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_27

    iget-wide v4, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->showTimes:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_6

    :cond_27
    move v2, v3

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WelcAdArea{opTimeStamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->opTimeStamp:J

    invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->logTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expireTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->expireTimeStamp:J

    invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->logTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", areaId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->areaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/adv/Welcome/WelcomeAdInfo$WelcAdArea;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
