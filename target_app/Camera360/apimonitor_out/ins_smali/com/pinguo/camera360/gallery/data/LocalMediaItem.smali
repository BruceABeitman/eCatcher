.class public abstract Lcom/pinguo/camera360/gallery/data/LocalMediaItem;
.super Lcom/pinguo/camera360/gallery/data/MediaItem;
.source "LocalMediaItem.java"
.field public bucketId:I
.field public caption:Ljava/lang/String;
.field public dateAddedInSec:J
.field public dateModifiedInSec:J
.field public dateTakenInMs:J
.field public effectName:Ljava/lang/String;
.field public filePath:Ljava/lang/String;
.field public fileSize:J
.field public height:I
.field public id:I
.field public latitude:D
.field public longitude:D
.field public mimeType:Ljava/lang/String;
.field public picDescribeInfo:Ljava/lang/String;
.field public width:I
.method public constructor <init>(Lcom/pinguo/camera360/gallery/data/Path;J)V
.registers 6
const-wide/16 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/data/MediaItem;-><init>(Lcom/pinguo/camera360/gallery/data/Path;J)V
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->latitude:D
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->longitude:D
return-void
.end method
.method public getBucketId()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->bucketId:I
return v0
.end method
.method public getDateInMs()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->dateTakenInMs:J
return-wide v0
.end method
.method public getDetails()Lcom/pinguo/camera360/gallery/data/MediaDetails;
.registers 9
const/4 v7, 0x1
invoke-super {p0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getDetails()Lcom/pinguo/camera360/gallery/data/MediaDetails;
move-result-object v0
const/16 v2, 0xc8
iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->filePath:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->caption:Ljava/lang/String;
invoke-virtual {v0, v7, v2}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;
move-result-object v1
const/4 v2, 0x3
new-instance v3, Ljava/util/Date;
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->dateTakenInMs:J
invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
iget-wide v2, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->latitude:D
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->longitude:D
invoke-static {v2, v3, v4, v5}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->isValidLocation(DD)Z
move-result v2
if-eqz v2, :cond_3e
const/4 v2, 0x4
const/4 v3, 0x2
new-array v3, v3, [D
const/4 v4, 0x0
iget-wide v5, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->latitude:D
aput-wide v5, v3, v4
iget-wide v4, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->longitude:D
aput-wide v4, v3, v7
invoke-virtual {v0, v2, v3}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
:cond_3e
iget-wide v2, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->fileSize:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_51
const/16 v2, 0xa
iget-wide v3, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->fileSize:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/pinguo/camera360/gallery/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
:cond_51
return-object v0
.end method
.method public getLatLong([D)V
.registers 5
const/4 v0, 0x0
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->latitude:D
aput-wide v1, p1, v0
const/4 v0, 0x1
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->longitude:D
aput-wide v1, p1, v0
return-void
.end method
.method public getMimeType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->mimeType:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->caption:Ljava/lang/String;
return-object v0
.end method
.method public getSize()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->fileSize:J
return-wide v0
.end method
.method protected updateContent(Landroid/database/Cursor;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z
move-result v0
if-eqz v0, :cond_c
invoke-static {}, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->nextVersionNumber()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/LocalMediaItem;->mDataVersion:J
:cond_c
return-void
.end method
.method protected abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method