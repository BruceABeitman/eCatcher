.class public Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;
.super Ljava/lang/Object;
.source "AnyShareFileStore.java"
.implements Lcom/lenovo/channel/base/IRemoteFileStore;
.field private static synthetic $SWITCH_TABLE$com$lenovo$content$base$ContentType:[I = null
.field private static final DIR_EXTERNAL_APP:Ljava/lang/String; = "apps/"
.field private static final DIR_EXTERNAL_CONTACT:Ljava/lang/String; = "contacts/"
.field public static final DIR_EXTERNAL_FILE:Ljava/lang/String; = "files/"
.field private static final DIR_EXTERNAL_MUSIC:Ljava/lang/String; = "audios/"
.field private static final DIR_EXTERNAL_PICTURE:Ljava/lang/String; = "pictures/"
.field private static final DIR_EXTERNAL_TEMP:Ljava/lang/String; = ".tmp/"
.field private static final DIR_EXTERNAL_THUMBNAIL:Ljava/lang/String; = ".thumbnails/"
.field private static final DIR_EXTERNAL_VIDEO:Ljava/lang/String; = "videos/"
.field public static final NEAR_PIC_FILE_NAME:Ljava/lang/String; = "NearbyTransfer"
.field private static final TAG:Ljava/lang/String; = "RemoteFileStore"
.field private mContext:Landroid/content/Context;
.field private mExternalAppRootDir:Ljava/io/File;
.field private mExternalTempDir:Ljava/io/File;
.field private mExternalThumbnailDir:Ljava/io/File;
.field private mSdcardRootDir:Ljava/io/File;
.method static synthetic $SWITCH_TABLE$com$lenovo$content$base$ContentType()[I
.registers 3
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->$SWITCH_TABLE$com$lenovo$content$base$ContentType:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lcom/lenovo/content/base/ContentType;->values()[Lcom/lenovo/content/base/ContentType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_start_15
:goto_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_72
sget-object v1, Lcom/lenovo/content/base/ContentType;->CALLLOG:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_70
:try_start_1e
:goto_1e
sget-object v1, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_6e
:goto_27
:try_start_27
sget-object v1, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_6c
sget-object v1, Lcom/lenovo/content/base/ContentType;->MMS:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/16 v2, 0x9
aput v2, v0, v1
:try_end_3a
.catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3a} :catch_6a
:try_start_3a
:goto_3a
sget-object v1, Lcom/lenovo/content/base/ContentType;->MUSIC:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_43
.catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_43} :catch_68
:goto_43
:try_start_43
sget-object v1, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_4c
:try_start_4c
:try_end_4c
.catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4c} :catch_66
sget-object v1, Lcom/lenovo/content/base/ContentType;->SMS:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:goto_56
:try_start_56
:try_end_56
.catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_56} :catch_64
sget-object v1, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_5f
:try_end_5f
.catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_5f} :catch_62
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->$SWITCH_TABLE$com$lenovo$content$base$ContentType:[I
goto :goto_4
:catch_62
move-exception v1
goto :goto_5f
:catch_64
move-exception v1
goto :goto_56
:catch_66
move-exception v1
goto :goto_4c
:catch_68
move-exception v1
goto :goto_43
:catch_6a
move-exception v1
goto :goto_3a
:catch_6c
move-exception v1
goto :goto_30
:catch_6e
move-exception v1
goto :goto_27
:catch_70
move-exception v1
goto :goto_1e
:catch_72
move-exception v1
goto :goto_15
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mContext:Landroid/content/Context;
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->initAppDirs()V
return-void
.end method
.method private gc()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->getExternalTempDir()Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
return-void
.end method
.method private initAppDirs()V
.registers 7
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "NearbyTransfer"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/io/File;
invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_30
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
:cond_30
new-instance v3, Ljava/io/File;
iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
const-string/jumbo v5, ".tmp/"
invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalTempDir:Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalTempDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_49
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalTempDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
:try_start_49
:cond_49
new-instance v1, Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalThumbnailDir:Ljava/io/File;
const-string/jumbo v4, ".nomedia"
invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_5c
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
:try_end_5c
.catch Ljava/io/IOException; {:try_start_49 .. :try_end_5c} :catch_100
:goto_5c
:cond_5c
new-instance v3, Ljava/io/File;
iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
const-string/jumbo v5, ".thumbnails/"
invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalThumbnailDir:Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalThumbnailDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_75
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalThumbnailDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
:try_start_75
:cond_75
new-instance v1, Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalThumbnailDir:Ljava/io/File;
const-string/jumbo v4, ".nomedia"
invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_88
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
:cond_88
:try_end_88
.catch Ljava/io/IOException; {:try_start_75 .. :try_end_88} :catch_fe
:goto_88
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
const-string/jumbo v4, "apps/"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_9b
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_9b
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
const-string/jumbo v4, "pictures/"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_ae
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_ae
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
const-string/jumbo v4, "audios/"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_c1
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_c1
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
const-string/jumbo v4, "videos/"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_d4
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_d4
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
const-string/jumbo v4, "files/"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_e7
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_e7
new-instance v2, Ljava/io/File;
iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
const-string/jumbo v4, "contacts/"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_fa
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
:cond_fa
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->gc()V
return-void
:catch_fe
move-exception v3
goto :goto_88
:catch_100
move-exception v3
goto/16 :goto_5c
.end method
.method public createTempFileName(Ljava/lang/String;)Ljava/io/File;
.registers 5
move-object v0, p1
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_23
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v2
invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ".tmp"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_23
new-instance v1, Ljava/io/File;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->getExternalTempDir()Ljava/io/File;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v1
.end method
.method public getExternalStorage()Ljava/io/File;
.registers 3
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "mounted"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mSdcardRootDir:Ljava/io/File;
:goto_13
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mSdcardRootDir:Ljava/io/File;
return-object v0
:cond_16
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mSdcardRootDir:Ljava/io/File;
goto :goto_13
.end method
.method public getExternalTempDir()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalTempDir:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalTempDir:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalTempDir:Ljava/io/File;
return-object v0
.end method
.method public getRemoteItemDir(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->getRemoteItemDir(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public getRemoteItemDir(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.registers 7
const/4 v0, 0x0
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->$SWITCH_TABLE$com$lenovo$content$base$ContentType()[I
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_2e
:goto_e
new-instance v1, Ljava/io/File;
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalAppRootDir:Ljava/io/File;
invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v1
:pswitch_16
const-string/jumbo v0, "pictures/"
goto :goto_e
:pswitch_1a
const-string/jumbo v0, "apps/"
goto :goto_e
:pswitch_1e
const-string/jumbo v0, "audios/"
goto :goto_e
:pswitch_22
const-string/jumbo v0, "videos/"
goto :goto_e
:pswitch_26
const-string/jumbo v0, "contacts/"
goto :goto_e
:pswitch_2a
const-string/jumbo v0, "files/"
goto :goto_e
:pswitch_data_2e
.packed-switch 0x1
:pswitch_1e
:pswitch_22
:pswitch_16
:pswitch_1a
:pswitch_26
:pswitch_2a
.end packed-switch
.end method
.method public getRemoteItemThumbnail(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;
.registers 8
:try_start_0
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "UTF-8"
invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p2}, Lcom/lenovo/content/base/ContentType;->name()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_2d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2d} :catch_38
move-result-object v1
new-instance v2, Ljava/io/File;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->getThumbnailDir()Ljava/io/File;
move-result-object v3
invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:goto_37
return-object v2
:catch_38
move-exception v0
const-string/jumbo v2, "RemoteFileStore"
const-string/jumbo v3, ""
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v2, 0x0
goto :goto_37
.end method
.method public getThumbnailDir()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalThumbnailDir:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalThumbnailDir:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/AnyShareFileStore;->mExternalThumbnailDir:Ljava/io/File;
return-object v0
.end method