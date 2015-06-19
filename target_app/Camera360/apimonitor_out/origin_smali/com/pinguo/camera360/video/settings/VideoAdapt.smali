.class public Lcom/pinguo/camera360/video/settings/VideoAdapt;
.super Ljava/lang/Object;
.source "VideoAdapt.java"


# instance fields
.field private max:I

.field private min:I

.field private model:Ljava/lang/String;

.field private support:Ljava/lang/String;

.field private unSupQuality:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->min:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->max:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMax()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->max:I

    return v0
.end method

.method public getMin()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->min:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSupport()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    return-object v0
.end method

.method public getUnSupQuality()[I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->unSupQuality:[I

    return-object v0
.end method

.method public isScreenShot()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSupportKeepCamera()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSupportTakePic()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isZoomSupport()Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-object v2, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_6

    iget-object v2, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public setMax(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->max:I

    return-void
.end method

.method public setMin(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->min:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->model:Ljava/lang/String;

    return-void
.end method

.method public setSupport(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->support:Ljava/lang/String;

    return-void
.end method

.method public setUnSupQuality([I)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/settings/VideoAdapt;->unSupQuality:[I

    return-void
.end method
