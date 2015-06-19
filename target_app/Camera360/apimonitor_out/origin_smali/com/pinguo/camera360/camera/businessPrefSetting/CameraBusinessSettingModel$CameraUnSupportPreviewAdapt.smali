.class public Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;
.super Ljava/lang/Object;
.source "CameraBusinessSettingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraUnSupportPreviewAdapt"
.end annotation


# instance fields
.field private max:I

.field private min:I

.field private model:Ljava/lang/String;

.field final synthetic this$0:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

.field private unSupStop:Z


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->this$0:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->min:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->max:I

    return-void
.end method


# virtual methods
.method public getMax()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->max:I

    return v0
.end method

.method public getMin()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->min:I

    return v0
.end method

.method getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->model:Ljava/lang/String;

    return-object v0
.end method

.method public isUnSupStop()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->unSupStop:Z

    return v0
.end method

.method public setMax(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->max:I

    return-void
.end method

.method public setMin(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->min:I

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->model:Ljava/lang/String;

    return-void
.end method

.method setUnSupStop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->unSupStop:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Model = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "min = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "unSupStop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$CameraUnSupportPreviewAdapt;->unSupStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
