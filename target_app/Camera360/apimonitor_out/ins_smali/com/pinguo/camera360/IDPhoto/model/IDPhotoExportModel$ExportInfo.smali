.class final Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;
.super Ljava/lang/Object;
.source "IDPhotoExportModel.java"
.field public color:Ljava/lang/String;
.field public exportHeight:I
.field public exportPath:Ljava/lang/String;
.field public exportWidth:I
.method public constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportPath:Ljava/lang/String;
iput p2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportWidth:I
iput p3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportHeight:I
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:cond_4
:goto_4
return v1
:cond_5
instance-of v3, p1, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;
if-nez v3, :cond_b
move v1, v2
goto :goto_4
:cond_b
move-object v0, p1
check-cast v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;
iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportPath:Ljava/lang/String;
iget-object v4, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportPath:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_24
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportWidth:I
iget v4, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportWidth:I
if-ne v3, v4, :cond_24
iget v3, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportHeight:I
iget v4, v0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportHeight:I
if-eq v3, v4, :cond_4
:cond_24
move v1, v2
goto :goto_4
.end method
.method public hashCode()I
.registers 4
const/16 v0, 0x11
iget v1, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportWidth:I
add-int/lit16 v0, v1, 0x20f
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/IDPhotoExportModel$ExportInfo;->exportHeight:I
add-int v0, v1, v2
return v0
.end method