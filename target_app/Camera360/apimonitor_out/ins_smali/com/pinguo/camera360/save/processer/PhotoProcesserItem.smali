.class public Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
.super Ljava/lang/Object;
.source "PhotoProcesserItem.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final ITEM_STATE_BROKEN:Ljava/lang/String; = "broken"
.field public static final ITEM_STATE_EDITING:Ljava/lang/String; = "editing"
.field public static final ITEM_STATE_FINISHED:Ljava/lang/String; = "finished"
.field private cameraModeIndex:I
.field private dateTaken:J
.field private destPath:Ljava/lang/String;
.field private elapsedTime:J
.field private exif:Ljava/lang/String;
.field public height:I
.field public isSaveOrgPhoto:Z
.field public isTimeWatermark:Z
.field private mEffectAlias:Ljava/lang/String;
.field private mEffectAppendix:Ljava/lang/String;
.field private mJsonExpand:Ljava/lang/String;
.field private mLocation:Lcom/pinguo/lib/location/data/PGLocation;
.field private operation:I
.field private orientation:I
.field private photoType:I
.field private projectState:Ljava/lang/String;
.field private sourcePath:Ljava/lang/String;
.field private tryCount:I
.field private version:Ljava/lang/String;
.field public width:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem$1;
invoke-direct {v0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem$1;-><init>()V
sput-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->exif:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mJsonExpand:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAppendix:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(JI)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->exif:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mJsonExpand:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAppendix:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->exif:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mJsonExpand:Ljava/lang/String;
iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAppendix:Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->readFromParcel(Landroid/os/Parcel;)V
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getCameraMode()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->cameraModeIndex:I
return v0
.end method
.method public getDateTaken()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->dateTaken:J
return-wide v0
.end method
.method public getDestPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->destPath:Ljava/lang/String;
return-object v0
.end method
.method public getEffectAppendix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAppendix:Ljava/lang/String;
return-object v0
.end method
.method public getEffectParam()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAlias:Ljava/lang/String;
return-object v0
.end method
.method public getEffectType()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->photoType:I
shr-int/lit8 v0, v0, 0x10
and-int/lit16 v0, v0, 0xff
return v0
.end method
.method public getElapsedTime()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->elapsedTime:J
return-wide v0
.end method
.method public getExif()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->exif:Ljava/lang/String;
return-object v0
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->height:I
return v0
.end method
.method public getJSONExpand()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mJsonExpand:Ljava/lang/String;
return-object v0
.end method
.method public getLocation()Lcom/pinguo/lib/location/data/PGLocation;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;
return-object v0
.end method
.method public getOperation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->operation:I
return v0
.end method
.method public getOrientation()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->orientation:I
return v0
.end method
.method public getPhotoType()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->photoType:I
return v0
.end method
.method public getProjectState()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->projectState:Ljava/lang/String;
return-object v0
.end method
.method public getSourcePath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->sourcePath:Ljava/lang/String;
return-object v0
.end method
.method public getTryCount()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->tryCount:I
return v0
.end method
.method public getVersion()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->version:Ljava/lang/String;
return-object v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->width:I
return v0
.end method
.method public readFromParcel(Landroid/os/Parcel;)V
.registers 2
return-void
.end method
.method public setCameraModeIndex(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->cameraModeIndex:I
return-void
.end method
.method public setDateTaken(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->dateTaken:J
return-void
.end method
.method public setDestPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->destPath:Ljava/lang/String;
return-void
.end method
.method public setEffectAlias(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAlias:Ljava/lang/String;
return-void
.end method
.method public setEffectAppendix(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAppendix:Ljava/lang/String;
return-void
.end method
.method public setEffectType(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->photoType:I
return-void
.end method
.method public setElapsedTime(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->elapsedTime:J
return-void
.end method
.method public setExif(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->exif:Ljava/lang/String;
return-void
.end method
.method public setHeight(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->height:I
return-void
.end method
.method public setJSONExpand(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mJsonExpand:Ljava/lang/String;
return-void
.end method
.method public setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;
return-void
.end method
.method public setOperation(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->operation:I
return-void
.end method
.method public setOrientation(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->orientation:I
return-void
.end method
.method public setPhotoType(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->photoType:I
return-void
.end method
.method public setProjectState(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->projectState:Ljava/lang/String;
return-void
.end method
.method public setSourcePath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->sourcePath:Ljava/lang/String;
return-void
.end method
.method public setTryCount(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->tryCount:I
return-void
.end method
.method public setVersion(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->version:Ljava/lang/String;
return-void
.end method
.method public setWidth(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->width:I
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
const/16 v3, 0x27
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "PhotoProcesserItem{mLocation="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mLocation:Lcom/pinguo/lib/location/data/PGLocation;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ",\n dateTaken="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->dateTaken:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", sourcePath=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->sourcePath:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", destPath=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->destPath:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", mEffectAlias=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAlias:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", orientation="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->orientation:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", photoType="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->photoType:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", tryCount="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->tryCount:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", projectState=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->projectState:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", elapsedTime="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->elapsedTime:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", version=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->version:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", operation="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->operation:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", width="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->width:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", height="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->height:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", isSaveOrgPhoto="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->isSaveOrgPhoto:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", isTimeWatermark="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->isTimeWatermark:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", exif=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->exif:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", mJsonExpand=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mJsonExpand:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", mEffectAppendix=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;->mEffectAppendix:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
return-void
.end method