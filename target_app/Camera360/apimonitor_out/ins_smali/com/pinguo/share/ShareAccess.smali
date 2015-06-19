.class public Lcom/pinguo/share/ShareAccess;
.super Ljava/lang/Object;
.source "ShareAccess.java"
.field private static final TAG:Ljava/lang/String; = null
.field private static final thumbnailSize:I = 0xc8
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/share/ShareAccess;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/share/ShareAccess;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static cloudImage2CloudShareInfo(Landroid/content/Context;Lcom/pinguo/album/data/image/CloudImage;)Lcom/pinguo/share/CloudShareInfo;
.registers 10
const/16 v7, 0xc8
const/4 v4, 0x1
new-instance v1, Lcom/pinguo/share/CloudShareInfo;
invoke-direct {v1}, Lcom/pinguo/share/CloudShareInfo;-><init>()V
new-instance v5, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Lcom/pinguo/album/data/image/CloudImage;->getUri()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "w/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "/h/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iput-object v5, v1, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;
const v5, 0x7f08003a
invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v5
iput-object v5, v1, Lcom/pinguo/share/CloudShareInfo;->title:Ljava/lang/String;
new-instance v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;
invoke-direct {v2}, Lcom/pinguo/share/CloudShareInfo$ShareItem;-><init>()V
const/4 v5, 0x2
invoke-virtual {p1, v5, v4}, Lcom/pinguo/album/data/image/CloudImage;->requestImage(IZ)Lcom/pinguo/album/AlbumThreadPool$Job;
move-result-object v0
new-instance v5, Lcom/pinguo/share/ShareAccess$2;
invoke-direct {v5}, Lcom/pinguo/share/ShareAccess$2;-><init>()V
invoke-interface {v0, v5}, Lcom/pinguo/album/AlbumThreadPool$Job;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/graphics/Bitmap;
invoke-virtual {v1, v3}, Lcom/pinguo/share/CloudShareInfo;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V
iget-object v5, p1, Lcom/pinguo/album/data/image/CloudImage;->photoId:Ljava/lang/String;
iput-object v5, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->pid:Ljava/lang/String;
iget-boolean v5, p1, Lcom/pinguo/album/data/image/CloudImage;->hasAudio:Z
if-eqz v5, :cond_6c
:goto_5a
iput v4, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->hasAudio:I
iget v4, p1, Lcom/pinguo/album/data/image/CloudImage;->height:I
iput v4, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->h:I
iget v4, p1, Lcom/pinguo/album/data/image/CloudImage;->width:I
iput v4, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->w:I
iget-object v4, p1, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;
iput-object v4, v2, Lcom/pinguo/share/CloudShareInfo$ShareItem;->key:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/pinguo/share/CloudShareInfo;->addShareItem(Lcom/pinguo/share/CloudShareInfo$ShareItem;)V
return-object v1
:cond_6c
const/4 v4, 0x0
goto :goto_5a
.end method
.method public static cloudImageList2CloudShareInfo(Landroid/content/Context;Ljava/util/List;)Lcom/pinguo/share/CloudShareInfo;
.registers 12
const/16 v9, 0xc8
const/4 v6, 0x1
const/4 v7, 0x0
if-eqz p1, :cond_c
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v5
if-nez v5, :cond_e
:cond_c
const/4 v2, 0x0
:cond_d
return-object v2
:cond_e
new-instance v2, Lcom/pinguo/share/CloudShareInfo;
invoke-direct {v2}, Lcom/pinguo/share/CloudShareInfo;-><init>()V
new-instance v8, Ljava/lang/StringBuilder;
invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/album/data/image/CloudImage;
invoke-virtual {v5}, Lcom/pinguo/album/data/image/CloudImage;->getUri()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "w/"
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v8, "/h/"
invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iput-object v5, v2, Lcom/pinguo/share/CloudShareInfo;->imageUrl:Ljava/lang/String;
const v5, 0x7f08003a
invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v5
iput-object v5, v2, Lcom/pinguo/share/CloudShareInfo;->title:Ljava/lang/String;
invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/album/data/image/CloudImage;
const/4 v8, 0x2
invoke-virtual {v5, v8, v6}, Lcom/pinguo/album/data/image/CloudImage;->requestImage(IZ)Lcom/pinguo/album/AlbumThreadPool$Job;
move-result-object v1
new-instance v5, Lcom/pinguo/share/ShareAccess$3;
invoke-direct {v5}, Lcom/pinguo/share/ShareAccess$3;-><init>()V
invoke-interface {v1, v5}, Lcom/pinguo/album/AlbumThreadPool$Job;->run(Lcom/pinguo/album/AlbumThreadPool$JobContext;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/graphics/Bitmap;
invoke-virtual {v2, v4}, Lcom/pinguo/share/CloudShareInfo;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_68
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_d
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/image/CloudImage;
new-instance v3, Lcom/pinguo/share/CloudShareInfo$ShareItem;
invoke-direct {v3}, Lcom/pinguo/share/CloudShareInfo$ShareItem;-><init>()V
iget-object v5, v0, Lcom/pinguo/album/data/image/CloudImage;->photoId:Ljava/lang/String;
iput-object v5, v3, Lcom/pinguo/share/CloudShareInfo$ShareItem;->pid:Ljava/lang/String;
iget-boolean v5, v0, Lcom/pinguo/album/data/image/CloudImage;->hasAudio:Z
if-eqz v5, :cond_94
move v5, v6
:goto_82
iput v5, v3, Lcom/pinguo/share/CloudShareInfo$ShareItem;->hasAudio:I
iget v5, v0, Lcom/pinguo/album/data/image/CloudImage;->height:I
iput v5, v3, Lcom/pinguo/share/CloudShareInfo$ShareItem;->h:I
iget v5, v0, Lcom/pinguo/album/data/image/CloudImage;->width:I
iput v5, v3, Lcom/pinguo/share/CloudShareInfo$ShareItem;->w:I
iget-object v5, v0, Lcom/pinguo/album/data/image/CloudImage;->photoKey:Ljava/lang/String;
iput-object v5, v3, Lcom/pinguo/share/CloudShareInfo$ShareItem;->key:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/share/CloudShareInfo;->addShareItem(Lcom/pinguo/share/CloudShareInfo$ShareItem;)V
goto :goto_68
:cond_94
move v5, v7
goto :goto_82
.end method
.method public static getAppFileRoot()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/lib/util/FileTool;->CAMERA360_ROOT:Ljava/lang/String;
return-object v0
.end method
.method public static getAppVersion()Ljava/lang/String;
.registers 1
const-string/jumbo v0, "5.3"
return-object v0
.end method
.method public static getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCloudUserId(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getLocation(DDLcom/pinguo/share/ShareAccess$LocationCallback;)V
.registers 8
new-instance v0, Lcom/pinguo/lib/location/data/PGLocation;
const-string/jumbo v1, "reverseGeocoded"
invoke-direct {v0, v1}, Lcom/pinguo/lib/location/data/PGLocation;-><init>(Ljava/lang/String;)V
invoke-static {v0, p0, p1}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLatitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
invoke-static {v0, p2, p3}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->setLongitude(Lcom/pinguo/lib/location/data/PGLocation;D)V
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v1
new-instance v2, Lcom/pinguo/share/ShareAccess$1;
invoke-direct {v2, p4}, Lcom/pinguo/share/ShareAccess$1;-><init>(Lcom/pinguo/share/ShareAccess$LocationCallback;)V
invoke-virtual {v1, v0, v2}, Lcom/pinguo/lib/location/PGLocationManager;->requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
return-void
.end method
.method public static getLocation(Lcom/pinguo/share/website/WebShareBean;)V
.registers 5
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/lib/location/PGLocationManager;->getLocationService()Lcom/pinguo/lib/location/service/AbstractLocationService;
move-result-object v2
if-eqz v2, :cond_37
invoke-virtual {v1}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v2
if-eqz v2, :cond_37
invoke-virtual {v1}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v0
const-string/jumbo v2, ""
invoke-virtual {p0, v2}, Lcom/pinguo/share/website/WebShareBean;->setLocation_id(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/pinguo/share/website/WebShareBean;->setLocation(Ljava/lang/String;)V
invoke-static {v0}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/pinguo/share/website/WebShareBean;->setLatitude(Ljava/lang/String;)V
invoke-static {v0}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/pinguo/share/website/WebShareBean;->setLongitude(Ljava/lang/String;)V
:cond_37
return-void
.end method
.method public static hasSoundInfoInFile(Ljava/lang/String;)Z
.registers 4
new-instance v0, Lorg/pinguo/richpicture/RichPictureInterface;
invoke-direct {v0}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V
invoke-virtual {v0, p0}, Lorg/pinguo/richpicture/RichPictureInterface;->getAudioInfosFromFile(Ljava/lang/String;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
if-eqz v2, :cond_11
const/4 v2, 0x1
:goto_10
return v2
:cond_11
const/4 v2, 0x0
goto :goto_10
.end method
.method public static isLogin(Landroid/content/Context;)Z
.registers 2
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->isLogin(Landroid/content/Context;)Z
move-result v0
return v0
.end method
.method public static loadLocalKey(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->loadLocalKey(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static pictureInfo2ShareInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/share/ShareInfo;
.registers 4
new-instance v0, Lcom/pinguo/share/ShareInfo;
invoke-direct {v0}, Lcom/pinguo/share/ShareInfo;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I
move-result v1
iput v1, v0, Lcom/pinguo/share/ShareInfo;->cameraModeIndex:I
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ShareInfo;->effectAlias:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSoundInfo()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ShareInfo;->soundInfo:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v1
iput-wide v1, v0, Lcom/pinguo/share/ShareInfo;->takenTime:J
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v1
if-eqz v1, :cond_41
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v1
invoke-static {v1}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLatitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v1
iput-wide v1, v0, Lcom/pinguo/share/ShareInfo;->latitude:D
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v1
invoke-static {v1}, Ldroidbox/com/pinguo/lib/location/data/PGLocation;->getLongitude(Lcom/pinguo/lib/location/data/PGLocation;)D
move-result-wide v1
iput-wide v1, v0, Lcom/pinguo/share/ShareInfo;->longitude:D
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/lib/location/data/PGLocation;->getAddress()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ShareInfo;->address:Ljava/lang/String;
:cond_41
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I
move-result v2
invoke-static {v1, v2}, Lcom/pinguo/camera360/save/sandbox/SandBoxModel;->getCameraModel(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/pinguo/share/ShareInfo;->cameraMode:Ljava/lang/String;
return-object v0
.end method
.method public static post(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.registers 6
invoke-static {p0}, Lcom/github/kevinsawicki/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
move-result-object v2
invoke-virtual {v2}, Lcom/github/kevinsawicki/HttpRequest;->trustAllCerts()Lcom/github/kevinsawicki/HttpRequest;
invoke-virtual {v2}, Lcom/github/kevinsawicki/HttpRequest;->trustAllHosts()Lcom/github/kevinsawicki/HttpRequest;
const/16 v3, 0x3a98
invoke-virtual {v2, v3}, Lcom/github/kevinsawicki/HttpRequest;->readTimeout(I)Lcom/github/kevinsawicki/HttpRequest;
const/16 v3, 0x3e80
invoke-virtual {v2, v3}, Lcom/github/kevinsawicki/HttpRequest;->connectTimeout(I)Lcom/github/kevinsawicki/HttpRequest;
invoke-virtual {v2, p1}, Lcom/github/kevinsawicki/HttpRequest;->form(Ljava/util/Map;)Lcom/github/kevinsawicki/HttpRequest;
invoke-virtual {v2}, Lcom/github/kevinsawicki/HttpRequest;->code()I
move-result v0
invoke-virtual {v2}, Lcom/github/kevinsawicki/HttpRequest;->body()Ljava/lang/String;
move-result-object v1
const/16 v3, 0xc8
if-ne v0, v3, :cond_24
:goto_23
return-object v1
:cond_24
const/4 v1, 0x0
goto :goto_23
.end method
.method public static processScalePhoto(Ljava/lang/String;Ljava/lang/String;I)Z
.registers 10
const/4 v5, 0x1
new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;
invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getPhotoOrientation(Ljava/lang/String;)I
move-result v3
const/16 v6, 0x5a
move-object v1, p1
move-object v2, p0
move v4, p2
invoke-virtual/range {v0 .. v6}, LvStudio/Android/GPhoto/GPhotoJNI;->ScaleImageFile(Ljava/lang/String;Ljava/lang/String;IIII)Z
return v5
.end method
.method public static processSoundPhoto(Ljava/lang/String;Ljava/lang/String;)Z
.registers 13
const/4 v6, 0x0
const/4 v7, 0x1
invoke-static {p1}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->json2SoundInfo(Ljava/lang/String;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v3
if-nez v3, :cond_9
:goto_8
:cond_8
return v6
:cond_9
new-instance v8, Ljava/io/File;
invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_8
sget-object v8, Lcom/pinguo/share/ShareAccess;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "processSoundPhoto, dest file path:"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getSandboxDir()Ljava/lang/String;
move-result-object v5
new-instance v8, Ljava/io/File;
new-instance v9, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, "/sound.mp3"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_ae
sget-object v8, Lcom/pinguo/share/ShareAccess;->TAG:Ljava/lang/String;
const-string/jumbo v9, "processSoundPhoto, mp3 file exists!"
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_start_54
new-instance v2, Lorg/pinguo/richpicture/RichPictureInterface;
invoke-direct {v2}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V
new-instance v0, Lorg/pinguo/richpicture/AudioInfo;
invoke-direct {v0}, Lorg/pinguo/richpicture/AudioInfo;-><init>()V
new-instance v8, Ljava/io/File;
new-instance v9, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, "/sound.mp3"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v8}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/io/File;)[B
move-result-object v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setData([B)V
invoke-static {}, Lorg/pinguo/richpicture/UUIDGenerator;->getUUIDArray()[B
move-result-object v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setUuid([B)V
const/4 v8, 0x1
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setType(I)V
const/4 v8, 0x1
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setFormatType(I)V
invoke-virtual {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getSampleRate()I
move-result v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setSampleRate(I)V
invoke-virtual {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getChannel()I
move-result v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setChannelConfig(I)V
invoke-virtual {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getAudioFormat()I
move-result v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setAudioFormat(I)V
invoke-virtual {v2, p0, v0}, Lorg/pinguo/richpicture/RichPictureInterface;->setAudioInfoToFile(Ljava/lang/String;Lorg/pinguo/richpicture/AudioInfo;)Z
:try_end_a5
.catch Ljava/lang/Exception; {:try_start_54 .. :try_end_a5} :catch_a8
move v6, v7
goto/16 :goto_8
:catch_a8
move-exception v1
sget-object v8, Lcom/pinguo/share/ShareAccess;->TAG:Ljava/lang/String;
invoke-static {v8, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_ae
new-instance v8, Ljava/io/File;
new-instance v9, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, "/sound.pcm"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_8
sget-object v8, Lcom/pinguo/share/ShareAccess;->TAG:Ljava/lang/String;
const-string/jumbo v9, "processSoundPhoto, pcm file exists!"
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v8, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;
new-instance v9, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, "/sound.pcm"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
const/16 v10, 0x63
invoke-direct {v8, v3, v9, v10}, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;-><init>(Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;Ljava/lang/String;I)V
invoke-virtual {v8}, Lcom/pinguo/camera360/save/sandbox/AudioSynCompressMp3;->synPcm2Mp3()[B
move-result-object v4
if-eqz v4, :cond_8
:try_start_f6
new-instance v2, Lorg/pinguo/richpicture/RichPictureInterface;
invoke-direct {v2}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V
new-instance v0, Lorg/pinguo/richpicture/AudioInfo;
invoke-direct {v0}, Lorg/pinguo/richpicture/AudioInfo;-><init>()V
invoke-virtual {v0, v4}, Lorg/pinguo/richpicture/AudioInfo;->setData([B)V
invoke-static {}, Lorg/pinguo/richpicture/UUIDGenerator;->getUUIDArray()[B
move-result-object v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setUuid([B)V
const/4 v8, 0x1
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setType(I)V
const/4 v8, 0x1
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setFormatType(I)V
invoke-virtual {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getSampleRate()I
move-result v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setSampleRate(I)V
invoke-virtual {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getChannel()I
move-result v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setChannelConfig(I)V
invoke-virtual {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->getAudioFormat()I
move-result v8
invoke-virtual {v0, v8}, Lorg/pinguo/richpicture/AudioInfo;->setAudioFormat(I)V
invoke-virtual {v2, p0, v0}, Lorg/pinguo/richpicture/RichPictureInterface;->setAudioInfoToFile(Ljava/lang/String;Lorg/pinguo/richpicture/AudioInfo;)Z
:try_end_12a
.catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_12a} :catch_12d
move v6, v7
goto/16 :goto_8
:catch_12d
move-exception v1
sget-object v7, Lcom/pinguo/share/ShareAccess;->TAG:Ljava/lang/String;
invoke-static {v7, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_8
.end method
.method public static showToast(Landroid/app/Activity;Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/pinguo/share/ShareAccess;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V
return-void
.end method
.method public static showToast(Landroid/app/Activity;Ljava/lang/String;I)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
const/16 v1, 0x5dc
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
return-void
.end method
.method public static startLocation(Landroid/content/Context;)V
.registers 2
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/pinguo/lib/location/PGLocationManager;->init(Landroid/content/Context;)V
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/lib/location/PGLocationManager;->start()V
return-void
.end method
.method public static statOnPause(Landroid/app/Activity;)V
.registers 1
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V
return-void
.end method
.method public static statOnResume(Landroid/app/Activity;)V
.registers 1
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
return-void
.end method
.method public static statShareLay()V
.registers 0
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareLay()V
return-void
.end method
.method public static statShareLayBtnClick(I)V
.registers 1
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareLayBtnClick(I)V
return-void
.end method
.method public static statShareNowFail(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareNowFail(Ljava/lang/String;)V
return-void
.end method
.method public static statShareNowSuccess(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareNowSuccess(Ljava/lang/String;)V
return-void
.end method
.method public static statShareSiteBindFail(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteBindFail(Ljava/lang/String;)V
return-void
.end method
.method public static statShareSiteBindSuccess(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteBindSuccess(Ljava/lang/String;)V
return-void
.end method
.method public static statShareSiteUnUse(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareSiteUnUse(Ljava/lang/String;)V
return-void
.end method
.method public static statShareThemeTemplateSelected(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareThemeTemplateSelected(Ljava/lang/String;)V
return-void
.end method
.method public static statShareThemeTemplateUsed(Ljava/lang/String;)V
.registers 1
invoke-static {p0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Share;->shareThemeTemplateUsed(Ljava/lang/String;)V
return-void
.end method
.method public static stopLocation(Landroid/content/Context;)V
.registers 2
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/lib/location/PGLocationManager;->stop()V
invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/lib/location/PGLocationManager;->destroy()V
return-void
.end method