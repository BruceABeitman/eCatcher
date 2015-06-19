.class public abstract Lcom/pinguo/album/data/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"
.field private static final LOCAL_ROOT:Ljava/lang/String; = "/local"
.field private static final MTP_ROOT:Ljava/lang/String; = "/mtp"
.field private static final PICASA_ROOT:Ljava/lang/String; = "/picasa"
.field private static final TAG:Ljava/lang/String; = "MediaSource"
.field public static final TYPE_CAMERA:I = 0x4
.field public static final TYPE_LOCAL:I = 0x1
.field public static final TYPE_MTP:I = 0x3
.field public static final TYPE_NOT_CATEGORIZED:I = 0x0
.field public static final TYPE_PICASA:I = 0x2
.field private mPrefix:Ljava/lang/String;
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/data/MediaSource;->mPrefix:Ljava/lang/String;
return-void
.end method
.method public static identifySourceType(Lcom/pinguo/album/data/MediaSet;)I
.registers 5
const/4 v2, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v2
:cond_4
invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaPath;->getPrefix()Ljava/lang/String;
move-result-object v1
const-string/jumbo v3, "/picasa"
invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_17
const/4 v2, 0x2
goto :goto_3
:cond_17
const-string/jumbo v3, "/mtp"
invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_22
const/4 v2, 0x3
goto :goto_3
:cond_22
const-string/jumbo v3, "/local"
invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_3
const/4 v2, 0x1
goto :goto_3
.end method
.method public abstract createMediaObject(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaObject;
.end method
.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/pinguo/album/data/MediaPath;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public getPrefix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/MediaSource;->mPrefix:Ljava/lang/String;
return-object v0
.end method
.method public getTotalTargetCacheSize()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public getTotalUsedCacheSize()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public pause()V
.registers 1
return-void
.end method
.method public resume()V
.registers 1
return-void
.end method