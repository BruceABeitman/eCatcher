.class public Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
.super Ljava/lang/Object;
.source "IDPhotoDataManager.java"
.field private static mInstance:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
.field private jpegData:[B
.field private pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final getInstance()Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
.registers 1
sget-object v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->mInstance:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
if-nez v0, :cond_b
new-instance v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
invoke-direct {v0}, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;-><init>()V
sput-object v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->mInstance:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
:cond_b
sget-object v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->mInstance:Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;
return-object v0
.end method
.method public clearAll()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->jpegData:[B
iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-void
.end method
.method public getJpegData()[B
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->jpegData:[B
return-object v0
.end method
.method public getPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-object v0
.end method
.method public setJpegData([B)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->jpegData:[B
return-void
.end method
.method public setPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoDataManager;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-void
.end method