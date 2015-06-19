.class public Lcom/pinguo/camera360/cloud/struct/UploadStruct;
.super Ljava/lang/Object;
.source "UploadStruct.java"
.implements Ljava/lang/Comparable;
.field public static final UPLOAD_CANCEL:I = 0x10305
.field public static final UPLOAD_ERROR:I = 0x10304
.field public static final UPLOAD_ING:I = 0x10302
.field public static final UPLOAD_START:I = 0x10301
.field public static final UPLOAD_SUCCESS:I = 0x10303
.field private nCRC32:J
.field private nFileSize:J
.field private nResult:I
.field private nStatus:I
.field private nTokenMillis:J
.field private strCameraModel:Ljava/lang/String;
.field private strContentId:Ljava/lang/String;
.field private strDate:Ljava/lang/String;
.field private strEffectParam:Ljava/lang/String;
.field private strFilePath:Ljava/lang/String;
.field private strServiceID:Ljava/lang/String;
.field private strType:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
const-wide/16 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strFilePath:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strType:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strContentId:Ljava/lang/String;
iput v3, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nStatus:I
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nTokenMillis:J
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nFileSize:J
iput-wide v1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nCRC32:J
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strDate:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strCameraModel:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strEffectParam:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strServiceID:Ljava/lang/String;
iput v3, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nResult:I
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strFilePath:Ljava/lang/String;
return-void
.end method
.method public compareTo(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)I
.registers 6
invoke-virtual {p1}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getTokenMillis()J
move-result-wide v0
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->getTokenMillis()J
move-result-wide v2
sub-long/2addr v0, v2
long-to-int v0, v0
return v0
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/pinguo/camera360/cloud/struct/UploadStruct;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->compareTo(Lcom/pinguo/camera360/cloud/struct/UploadStruct;)I
move-result v0
return v0
.end method
.method public getCRC32()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nCRC32:J
return-wide v0
.end method
.method public getCameraModel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strCameraModel:Ljava/lang/String;
return-object v0
.end method
.method public getContentId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strContentId:Ljava/lang/String;
return-object v0
.end method
.method public getDate()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strDate:Ljava/lang/String;
return-object v0
.end method
.method public getEffectParam()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strEffectParam:Ljava/lang/String;
return-object v0
.end method
.method public getFilePath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strFilePath:Ljava/lang/String;
return-object v0
.end method
.method public getFileSize()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nFileSize:J
return-wide v0
.end method
.method public getResult()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nResult:I
return v0
.end method
.method public getServerID()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strServiceID:Ljava/lang/String;
return-object v0
.end method
.method public getStatus()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nStatus:I
return v0
.end method
.method public getTokenMillis()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nTokenMillis:J
return-wide v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strType:Ljava/lang/String;
return-object v0
.end method
.method public setCRC32(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nCRC32:J
return-void
.end method
.method public setCameraModel(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strCameraModel:Ljava/lang/String;
return-void
.end method
.method public setContentId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strContentId:Ljava/lang/String;
return-void
.end method
.method public setDate(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strDate:Ljava/lang/String;
return-void
.end method
.method public setEffectParam(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strEffectParam:Ljava/lang/String;
return-void
.end method
.method public setFilePath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strFilePath:Ljava/lang/String;
return-void
.end method
.method public setFileSize(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nFileSize:J
return-void
.end method
.method public setResult(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nResult:I
return-void
.end method
.method public setServerID(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strServiceID:Ljava/lang/String;
return-void
.end method
.method public setStatus(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nStatus:I
return-void
.end method
.method public setTokenMillis(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->nTokenMillis:J
return-void
.end method
.method public setType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/UploadStruct;->strType:Ljava/lang/String;
return-void
.end method