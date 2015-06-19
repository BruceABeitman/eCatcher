.class public Lcom/pinguo/album/data/video/CloudVideo;
.super Lcom/pinguo/album/data/image/CloudMediaItem;
.source "CloudVideo.java"
.field public static final ITEM_PATH:Ljava/lang/String; = "/cloud/video/item"
.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;Landroid/database/Cursor;Lcom/pinguo/album/PGAlbumApp;)V
.registers 6
invoke-static {}, Lcom/pinguo/album/data/video/CloudVideo;->nextVersionNumber()J
move-result-wide v0
invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/album/data/image/CloudMediaItem;-><init>(Lcom/pinguo/album/data/MediaPath;J)V
return-void
.end method
.method public getHeight()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getLocalPath()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getMimeType()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getWidth()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public requestImage(IZ)Lcom/pinguo/album/AlbumThreadPool$Job;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public requestLargeImage()Lcom/pinguo/album/AlbumThreadPool$Job;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected updateFromCursor(Landroid/database/Cursor;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method