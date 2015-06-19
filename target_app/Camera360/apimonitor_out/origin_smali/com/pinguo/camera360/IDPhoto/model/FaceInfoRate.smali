.class public Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
.super Ljava/lang/Object;
.source "FaceInfoRate.java"


# static fields
.field public static final DEFAULT_FACE_HEIGHT:F = 0.6f

.field public static final DEFAULT_FACE_WIDTH:F = 0.56f

.field public static final EVALUATE_EYE_TO_FACE_BOARDER:F = 0.1f

.field public static final EVALUATE_EYE_TO_FACE_TOP:F = 0.1f

.field public static final EVALUATE_FACE_TOP_TO_HEAD_TOP:F = 0.1f


# instance fields
.field public faceBottom:F

.field public faceLeft:F

.field public faceRight:F

.field public faceTop:F

.field public headTop:F

.field public leftEyeX:F

.field public leftEyeY:F

.field public mouthLeftX:F

.field public mouthLeftY:F

.field public mouthRightX:F

.field public mouthRightY:F

.field public noseX:F

.field public noseY:F

.field public rightEyeX:F

.field public rightEyeY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;
    .registers 3

    const v2, 0x3dcccccd

    new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;

    invoke-direct {v0}, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;-><init>()V

    const v1, 0x3e6147ae

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    const v1, 0x3f47ae14

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    const v1, 0x3edc28f6

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    const v1, 0x3f4ccccd

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    iget v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    iget v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    iget v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    iget v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F

    iget v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->headTop:F

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "faceLeft:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",faceRight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",faceTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",faceBottom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->faceBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",leftEyeX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",leftEyeY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->leftEyeY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",rightEyeX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",rightEyeY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->rightEyeY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",noseX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",noseY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->noseY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",headTop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/FaceInfoRate;->headTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
