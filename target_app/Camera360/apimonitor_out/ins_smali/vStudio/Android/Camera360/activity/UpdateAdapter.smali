.class public final LvStudio/Android/Camera360/activity/UpdateAdapter;
.super Ljava/lang/Object;
.source "UpdateAdapter.java"
.field private static final BUFFER_SIZE:I = 0x2000
.field private static final KEY_LIGHT_COLOR:Ljava/lang/String; = "d76c0f4354ae1e34cb471e64f6419b56"
.field private static final PACK_JSON:Ljava/lang/String; = "/pack.json"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, LvStudio/Android/Camera360/activity/UpdateAdapter;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static generateIDCameraMode()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
.registers 4
const/4 v3, 0x0
new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>()V
const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"
iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
const-string/jumbo v1, "\u8bc1\u4ef6\u7167\u76f8\u673a"
iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;
const-string/jumbo v1, "\u6c42\u804c\u6c42\u5b66\u6c42\u996d\u7968\uff0c\u5c31\u7528\u6700\u7f8e\u8bc1\u4ef6\u7167"
iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;
iput v3, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->version:I
const-string/jumbo v1, "{\"engineMax\":2147483647,\"engineMin\":10,\"preferPregen\":false,\"sdkMax\":2147483647,\"sdkMin\":520}"
iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;
const/4 v1, 0x4
iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I
const/4 v1, 0x1
iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installation:I
const-wide v1, 0x144d85d15d8L
iput-wide v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
iput v3, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I
return-object v0
.end method
.method private static generateIDCameraProduct()Lcom/pinguo/camera360/shop/model/entity/Product;
.registers 3
new-instance v0, Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-direct {v0}, Lcom/pinguo/camera360/shop/model/entity/Product;-><init>()V
const-string/jumbo v1, "e46227d3cf94f4bbab8edb68d0c8d68e"
iput-object v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
const-string/jumbo v1, "\u8bc1\u4ef6\u7167\u76f8\u673a"
iput-object v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;
const-string/jumbo v1, "52babe45b937952314a262fd"
iput-object v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->categoryId:Ljava/lang/String;
const/4 v1, 0x1
iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
const-wide v1, 0x144d85d15d8L
iput-wide v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installTime:J
return-object v0
.end method
.method private static generateSonyCameraMode()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
.registers 4
const/4 v3, 0x1
new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>()V
const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"
iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
const-string/jumbo v1, "Sony Camera"
iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;
const-string/jumbo v1, "Camera360 for sony lens"
iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;
const/4 v1, 0x0
iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->version:I
const-string/jumbo v1, "{\"engineMax\":2147483647,\"engineMin\":10,\"preferPregen\":false,\"sdkMax\":2147483647,\"sdkMin\":545}"
iput-object v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;
const/4 v1, 0x5
iput v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I
iput v3, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installation:I
const-wide v1, 0x1482f1b7a62L
iput-wide v1, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
iput v3, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I
return-object v0
.end method
.method private static generateSonyCameraProduct()Lcom/pinguo/camera360/shop/model/entity/Product;
.registers 3
new-instance v0, Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-direct {v0}, Lcom/pinguo/camera360/shop/model/entity/Product;-><init>()V
const-string/jumbo v1, "7b3b6b04486f12d95690f533f5253a74"
iput-object v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
const-string/jumbo v1, "Sony Camera"
iput-object v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;
const-string/jumbo v1, "52babe45b937952314a262fd"
iput-object v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->categoryId:Ljava/lang/String;
const/4 v1, 0x1
iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
const-wide v1, 0x1482f1b7a62L
iput-wide v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installTime:J
return-object v0
.end method
.method private static getContext(Ljava/io/InputStream;)Ljava/lang/String;
.registers 8
const/16 v4, 0x2000
new-array v0, v4, [B
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
:goto_9
:try_start_9
invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
move-result v2
const/4 v4, -0x1
if-ne v2, v4, :cond_20
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
:try_start_13
:try_end_13
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_25
:goto_13
new-instance v4, Ljava/lang/String;
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v5
const-string/jumbo v6, "UTF-8"
invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:goto_1f
:try_end_1f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_1f} :catch_27
return-object v4
:cond_20
const/4 v4, 0x0
:try_start_21
invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_24
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25
goto :goto_9
:catch_25
move-exception v4
goto :goto_13
:catch_27
move-exception v1
const/4 v4, 0x0
goto :goto_1f
.end method
.method protected static installDefaultData(Landroid/content/Context;)Z
.registers 14
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-string/jumbo v9, "shop.db"
invoke-virtual {p0, v9}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
new-instance v9, Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v10
invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
sget-object v9, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "Begin install default data: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
sget-object v9, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "t1: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
sub-long/2addr v11, v0
invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_start_58
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->canNotUseIDCamera()Z
move-result v9
if-eqz v9, :cond_224
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
const v10, 0x7f060005
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v9
new-instance v10, Ljava/io/File;
new-instance v11, Ljava/lang/StringBuilder;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "shop.db"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v9, v10}, Lcom/pinguo/lib/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
:goto_85
sget-object v9, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "t2: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
sub-long/2addr v11, v0
invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
const v10, 0x7f060002
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v9
new-instance v10, Ljava/io/File;
new-instance v11, Ljava/lang/StringBuilder;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "effect.db"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v9, v10}, Lcom/pinguo/lib/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
sget-object v9, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "t3: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
sub-long/2addr v11, v0
invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->canNotUseIDCamera()Z
move-result v9
if-eqz v9, :cond_250
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
const v10, 0x7f060001
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v9
new-instance v10, Ljava/io/File;
new-instance v11, Ljava/lang/StringBuilder;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "camera.db"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v9, v10}, Lcom/pinguo/lib/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
:goto_10d
sget-object v9, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "t4: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
sub-long/2addr v11, v0
invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v9, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v10
invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "effect"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "installed"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "icon"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
new-instance v3, Ljava/io/File;
new-instance v9, Ljava/lang/StringBuilder;
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, "default.zip"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v9
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "icon"
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "default.zip"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10, v3}, Lcom/pinguo/lib/util/AssetsUtils;->copyAssetsFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
sget-object v9, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "t5: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
sub-long/2addr v11, v0
invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v9
new-instance v10, Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v11
invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/util/UnzipUtils;->unzip(Ljava/lang/String;Ljava/lang/String;)V
sget-object v9, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "t6: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
sub-long/2addr v11, v0
invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sget-object v9, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "End install default data: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->installSonyCameraOfCameraDb()V
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->installSonyCameraOfShopDb()V
sub-long v9, v5, v0
const-wide/16 v11, 0x2710
cmp-long v9, v9, v11
if-gez v9, :cond_222
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
:cond_222
const/4 v9, 0x1
:goto_223
return v9
:cond_224
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
const v10, 0x7f060004
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v9
new-instance v10, Ljava/io/File;
new-instance v11, Ljava/lang/StringBuilder;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "shop.db"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v9, v10}, Lcom/pinguo/lib/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
goto/16 :goto_85
:catch_24d
move-exception v4
const/4 v9, 0x0
goto :goto_223
:cond_250
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
const/high16 v10, 0x7f06
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v9
new-instance v10, Ljava/io/File;
new-instance v11, Ljava/lang/StringBuilder;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "camera.db"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v9, v10}, Lcom/pinguo/lib/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
:try_end_276
.catch Ljava/lang/Exception; {:try_start_58 .. :try_end_276} :catch_24d
goto/16 :goto_10d
.end method
.method protected static installIDCameraOfCameraDb()V
.registers 17
new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v12
const-string/jumbo v13, "camera.db"
const/4 v14, 0x0
const/4 v15, 0x1
invoke-direct {v0, v12, v13, v14, v15}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->generateIDCameraMode()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
move-result-object v1
sget-object v12, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v13, "Update database"
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
:try_start_1d
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v4
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
const-string/jumbo v12, "SELECT installTime FROM camera_mode WHERE installation = 1 order by installTime asc"
const/4 v13, 0x0
invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v3
if-eqz v3, :cond_35
const/4 v7, 0x0
:goto_2f
invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
move-result v12
if-nez v12, :cond_97
:goto_35
:cond_35
const-string/jumbo v12, "SELECT COUNT(*) FROM camera_mode WHERE key = ?"
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/String;
const/4 v14, 0x0
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
aput-object v15, v13, v14
invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v2
if-eqz v2, :cond_7e
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v12, 0x0
invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I
move-result v12
if-eqz v12, :cond_115
const/4 v6, 0x1
:goto_51
if-eqz v6, :cond_118
const-string/jumbo v12, "UPDATE camera_mode SET installation = ?, installTime = ?, isNew = ? WHERE key = ?"
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
const/4 v15, 0x1
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x1
iget-wide v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x2
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x3
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
aput-object v15, v13, v14
invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_7b
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
:cond_7e
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_81
.catchall {:try_start_1d .. :try_end_81} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_81} :catch_cf
if-eqz v2, :cond_86
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_86
if-eqz v3, :cond_8b
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_8b
if-eqz v4, :cond_96
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v12
if-eqz v12, :cond_96
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_96
:goto_96
return-void
:try_start_97
:cond_97
const-string/jumbo v12, "installTime"
invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v12
invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v12
const-wide/16 v14, 0xa
add-long/2addr v12, v14
iput-wide v12, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
const/4 v12, 0x3
if-ne v7, v12, :cond_111
const-string/jumbo v12, "installTime"
invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v12
invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v8
invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
move-result v12
if-eqz v12, :cond_f3
const-string/jumbo v12, "installTime"
invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v12
invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v10
add-long v12, v8, v10
const-wide/16 v14, 0x2
div-long/2addr v12, v14
iput-wide v12, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
:try_end_cd
.catchall {:try_start_97 .. :try_end_cd} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_97 .. :try_end_cd} :catch_cf
goto/16 :goto_35
:catch_cf
move-exception v5
:try_start_d0
sget-object v12, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v13, "Update database exception occurs"
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v12, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
invoke-static {v12, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_dd
.catchall {:try_start_d0 .. :try_end_dd} :catchall_fa
if-eqz v2, :cond_e2
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_e2
if-eqz v3, :cond_e7
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_e7
if-eqz v4, :cond_96
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v12
if-eqz v12, :cond_96
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
goto :goto_96
:cond_f3
const-wide/16 v12, 0xa
add-long/2addr v12, v8
:try_start_f6
iput-wide v12, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
:try_end_f8
.catchall {:try_start_f6 .. :try_end_f8} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f8} :catch_cf
goto/16 :goto_35
:catchall_fa
move-exception v12
if-eqz v2, :cond_100
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_100
if-eqz v3, :cond_105
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_105
if-eqz v4, :cond_110
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v13
if-eqz v13, :cond_110
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_110
throw v12
:cond_111
add-int/lit8 v7, v7, 0x1
goto/16 :goto_2f
:cond_115
const/4 v6, 0x0
goto/16 :goto_51
:try_start_118
:cond_118
const-string/jumbo v12, "INSERT INTO camera_mode VALUES(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
const/16 v13, 0xe
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
aput-object v15, v13, v14
const/4 v14, 0x1
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;
aput-object v15, v13, v14
const/4 v14, 0x2
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;
aput-object v15, v13, v14
const/4 v14, 0x3
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->version:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x4
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;
aput-object v15, v13, v14
const/4 v14, 0x5
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x6
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x7
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installation:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0x8
iget-wide v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0x9
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0xa
const/4 v15, 0x0
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0xb
const/4 v15, 0x0
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0xc
const-string/jumbo v15, ""
aput-object v15, v13, v14
const/16 v14, 0xd
const-string/jumbo v15, ""
aput-object v15, v13, v14
invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_18e
.catchall {:try_start_118 .. :try_end_18e} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_118 .. :try_end_18e} :catch_cf
goto/16 :goto_7b
.end method
.method protected static installIDCameraOfShopDb()V
.registers 15
const/4 v14, 0x1
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->generateIDCameraProduct()Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v7
sget-object v10, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->camera:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-virtual {v10}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;
move-result-object v8
new-instance v9, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v10
const-string/jumbo v11, "shop.db"
const/4 v12, 0x0
invoke-direct {v9, v10, v11, v12, v14}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
const/4 v1, 0x0
const/4 v0, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
:try_start_1e
invoke-virtual {v9}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
const-string/jumbo v10, "SELECT key,type,installation,installTime FROM product_installation WHERE key=? and type=?"
const/4 v11, 0x2
new-array v11, v11, [Ljava/lang/String;
const/4 v12, 0x0
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x1
aput-object v8, v11, v12
invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v3
if-eqz v3, :cond_b2
const/4 v10, 0x2
invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v4
if-ne v14, v4, :cond_72
sget-object v10, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Product is already installed, key="
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v12, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_5b
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_61
.catchall {:try_start_1e .. :try_end_61} :catchall_fd
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_61} :catch_93
if-eqz v0, :cond_66
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_66
if-eqz v1, :cond_71
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v10
if-eqz v10, :cond_71
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_71
:goto_71
return-void
:try_start_72
:cond_72
const-string/jumbo v10, "UPDATE product_installation set installation=?, installTime=? WHERE key=? and type=?"
const/4 v11, 0x4
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
const/4 v13, 0x1
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x1
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x2
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x3
aput-object v8, v11, v12
invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_92
.catchall {:try_start_72 .. :try_end_92} :catchall_fd
.catch Ljava/lang/Exception; {:try_start_72 .. :try_end_92} :catch_93
goto :goto_5b
:catch_93
move-exception v2
:try_start_94
sget-object v10, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v11, "Update product installation fail!"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v10, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
invoke-static {v10, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_a1
.catchall {:try_start_94 .. :try_end_a1} :catchall_fd
if-eqz v0, :cond_a6
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_a6
if-eqz v1, :cond_71
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v10
if-eqz v10, :cond_71
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
goto :goto_71
:cond_b2
:try_start_b2
const-string/jumbo v10, "INSERT INTO product_installation values(null,?,?,?,?,?,?,?,?,?,?)"
const/16 v11, 0xa
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x1
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x2
aput-object v8, v11, v12
const/4 v12, 0x3
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->categoryId:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x4
const/4 v13, 0x1
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x6
const/4 v13, 0x0
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x7
const/4 v13, 0x0
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/16 v12, 0x8
const-string/jumbo v13, ""
aput-object v13, v11, v12
const/16 v12, 0x9
const-string/jumbo v13, ""
aput-object v13, v11, v12
invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_fb
.catchall {:try_start_b2 .. :try_end_fb} :catchall_fd
.catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_fb} :catch_93
goto/16 :goto_5b
:catchall_fd
move-exception v10
if-eqz v0, :cond_103
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_103
if-eqz v1, :cond_10e
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v11
if-eqz v11, :cond_10e
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_10e
throw v10
.end method
.method private static installNewEffectToDB(Lcom/pinguo/camera360/effect/model/entity/Effect;Landroid/database/sqlite/SQLiteDatabase;)V
.registers 14
const/4 v9, 0x5
new-array v4, v9, [Ljava/lang/String;
const/4 v9, 0x0
const-string/jumbo v10, "zh_CN"
aput-object v10, v4, v9
const/4 v9, 0x1
const-string/jumbo v10, "zh_HK"
aput-object v10, v4, v9
const/4 v9, 0x2
const-string/jumbo v10, "zh_TW"
aput-object v10, v4, v9
const/4 v9, 0x3
const-string/jumbo v10, "en_US"
aput-object v10, v4, v9
const/4 v9, 0x4
const-string/jumbo v10, "th_TH"
aput-object v10, v4, v9
const/4 v9, 0x5
new-array v6, v9, [Ljava/lang/String;
const/4 v3, 0x0
iget-object v9, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
if-eqz v9, :cond_8b
const-string/jumbo v9, ""
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v9
if-nez v9, :cond_8b
iget-object v9, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
const-string/jumbo v10, "\n"
invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v8
array-length v9, v8
if-lez v9, :cond_4f
const/4 v9, 0x0
const/4 v10, 0x0
aget-object v10, v8, v10
invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
aput-object v10, v6, v9
const/4 v3, 0x1
:cond_4f
array-length v9, v8
const/4 v10, 0x1
if-le v9, v10, :cond_5e
const/4 v9, 0x1
const/4 v10, 0x1
aget-object v10, v8, v10
invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
aput-object v10, v6, v9
const/4 v3, 0x2
:cond_5e
array-length v9, v8
const/4 v10, 0x2
if-le v9, v10, :cond_6d
const/4 v9, 0x2
const/4 v10, 0x2
aget-object v10, v8, v10
invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
aput-object v10, v6, v9
const/4 v3, 0x3
:cond_6d
array-length v9, v8
const/4 v10, 0x3
if-le v9, v10, :cond_7c
const/4 v9, 0x3
const/4 v10, 0x3
aget-object v10, v8, v10
invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
aput-object v10, v6, v9
const/4 v3, 0x4
:cond_7c
array-length v9, v8
const/4 v10, 0x4
if-le v9, v10, :cond_8b
const/4 v9, 0x4
const/4 v10, 0x4
aget-object v10, v8, v10
invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
aput-object v10, v6, v9
const/4 v3, 0x5
:cond_8b
const-string/jumbo v1, "INSERT INTO effect (key,locale,name,description,version,requirementStr,icon,realRender,preCmdStr,gpuCmdStr,cpuCmd,textureStr,typeKey,idxInType,packKey,idxInPack,installation,installTime,isNew,resInt1,resInt2) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
const/4 v0, 0x0
:goto_8f
if-lt v0, v3, :cond_92
return-void
:cond_92
aget-object v2, v4, v0
aget-object v5, v6, v0
const/16 v9, 0x15
new-array v7, v9, [Ljava/lang/String;
const/4 v9, 0x0
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
aput-object v10, v7, v9
const/4 v9, 0x1
aput-object v2, v7, v9
const/4 v9, 0x2
aput-object v5, v7, v9
const/4 v9, 0x3
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
aput-object v10, v7, v9
const/4 v9, 0x4
iget v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->version:I
invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v10
aput-object v10, v7, v9
const/4 v9, 0x5
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
aput-object v10, v7, v9
const/4 v9, 0x6
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;
aput-object v10, v7, v9
const/4 v9, 0x7
iget v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->realRender:I
invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v10
aput-object v10, v7, v9
const/16 v9, 0x8
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
aput-object v10, v7, v9
const/16 v9, 0x9
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
aput-object v10, v7, v9
const/16 v9, 0xa
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
aput-object v10, v7, v9
const/16 v9, 0xb
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
aput-object v10, v7, v9
const/16 v9, 0xc
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
aput-object v10, v7, v9
const/16 v9, 0xd
iget v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v10
aput-object v10, v7, v9
const/16 v9, 0xe
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
aput-object v10, v7, v9
const/16 v9, 0xf
iget v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v10
aput-object v10, v7, v9
const/16 v9, 0x10
const-string/jumbo v10, "1"
aput-object v10, v7, v9
const/16 v9, 0x11
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v10
invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v10
aput-object v10, v7, v9
const/16 v9, 0x12
iget v10, p0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v10
aput-object v10, v7, v9
const/16 v9, 0x13
const-string/jumbo v10, "0"
aput-object v10, v7, v9
const/16 v9, 0x14
const-string/jumbo v10, "0"
aput-object v10, v7, v9
invoke-virtual {p1, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto/16 :goto_8f
.end method
.method protected static installSonyCameraOfCameraDb()V
.registers 17
new-instance v0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v12
const-string/jumbo v13, "camera.db"
const/4 v14, 0x0
const/4 v15, 0x1
invoke-direct {v0, v12, v13, v14, v15}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->generateSonyCameraMode()Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
move-result-object v1
sget-object v12, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v13, "Update database"
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
:try_start_1d
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v4
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
const-string/jumbo v12, "SELECT installTime FROM camera_mode WHERE installation = 1 order by installTime asc"
const/4 v13, 0x0
invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v3
if-eqz v3, :cond_35
const/4 v7, 0x0
:goto_2f
invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
move-result v12
if-nez v12, :cond_97
:goto_35
:cond_35
const-string/jumbo v12, "SELECT COUNT(*) FROM camera_mode WHERE key = ?"
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/String;
const/4 v14, 0x0
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
aput-object v15, v13, v14
invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v2
if-eqz v2, :cond_7e
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v12, 0x0
invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I
move-result v12
if-eqz v12, :cond_115
const/4 v6, 0x1
:goto_51
if-eqz v6, :cond_118
const-string/jumbo v12, "UPDATE camera_mode SET installation = ?, installTime = ?, isNew = ? WHERE key = ?"
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
const/4 v15, 0x1
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x1
iget-wide v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x2
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x3
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
aput-object v15, v13, v14
invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_7b
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
:cond_7e
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_81
.catchall {:try_start_1d .. :try_end_81} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_81} :catch_cf
if-eqz v2, :cond_86
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_86
if-eqz v3, :cond_8b
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_8b
if-eqz v4, :cond_96
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v12
if-eqz v12, :cond_96
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_96
:goto_96
return-void
:try_start_97
:cond_97
const-string/jumbo v12, "installTime"
invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v12
invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v12
const-wide/16 v14, 0xa
add-long/2addr v12, v14
iput-wide v12, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
const/4 v12, 0x4
if-ne v7, v12, :cond_111
const-string/jumbo v12, "installTime"
invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v12
invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v8
invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
move-result v12
if-eqz v12, :cond_f3
const-string/jumbo v12, "installTime"
invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v12
invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v10
add-long v12, v8, v10
const-wide/16 v14, 0x2
div-long/2addr v12, v14
iput-wide v12, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
:try_end_cd
.catchall {:try_start_97 .. :try_end_cd} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_97 .. :try_end_cd} :catch_cf
goto/16 :goto_35
:catch_cf
move-exception v5
:try_start_d0
sget-object v12, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v13, "Update database exception occurs"
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v12, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
invoke-static {v12, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_dd
.catchall {:try_start_d0 .. :try_end_dd} :catchall_fa
if-eqz v2, :cond_e2
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_e2
if-eqz v3, :cond_e7
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_e7
if-eqz v4, :cond_96
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v12
if-eqz v12, :cond_96
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
goto :goto_96
:cond_f3
const-wide/16 v12, 0xa
add-long/2addr v12, v8
:try_start_f6
iput-wide v12, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
:try_end_f8
.catchall {:try_start_f6 .. :try_end_f8} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_f8} :catch_cf
goto/16 :goto_35
:catchall_fa
move-exception v12
if-eqz v2, :cond_100
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_100
if-eqz v3, :cond_105
invoke-interface {v3}, Landroid/database/Cursor;->close()V
:cond_105
if-eqz v4, :cond_110
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v13
if-eqz v13, :cond_110
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_110
throw v12
:cond_111
add-int/lit8 v7, v7, 0x1
goto/16 :goto_2f
:cond_115
const/4 v6, 0x0
goto/16 :goto_51
:try_start_118
:cond_118
const-string/jumbo v12, "INSERT INTO camera_mode VALUES(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
const/16 v13, 0xe
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;
aput-object v15, v13, v14
const/4 v14, 0x1
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->name:Ljava/lang/String;
aput-object v15, v13, v14
const/4 v14, 0x2
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->description:Ljava/lang/String;
aput-object v15, v13, v14
const/4 v14, 0x3
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->version:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x4
iget-object v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->requirements:Ljava/lang/String;
aput-object v15, v13, v14
const/4 v14, 0x5
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->icon:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x6
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->idx:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x7
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installation:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0x8
iget-wide v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->installTime:J
invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0x9
iget v15, v1, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->isNew:I
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0xa
const/4 v15, 0x0
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0xb
const/4 v15, 0x0
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/16 v14, 0xc
const-string/jumbo v15, ""
aput-object v15, v13, v14
const/16 v14, 0xd
const-string/jumbo v15, ""
aput-object v15, v13, v14
invoke-virtual {v4, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_18e
.catchall {:try_start_118 .. :try_end_18e} :catchall_fa
.catch Ljava/lang/Exception; {:try_start_118 .. :try_end_18e} :catch_cf
goto/16 :goto_7b
.end method
.method protected static installSonyCameraOfShopDb()V
.registers 15
const/4 v14, 0x1
invoke-static {}, LvStudio/Android/Camera360/activity/UpdateAdapter;->generateSonyCameraProduct()Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v7
sget-object v10, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->camera:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-virtual {v10}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;
move-result-object v8
const-string/jumbo v10, "test"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "productType="
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v9, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v10
const-string/jumbo v11, "shop.db"
const/4 v12, 0x0
invoke-direct {v9, v10, v11, v12, v14}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
const/4 v1, 0x0
const/4 v0, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
:try_start_34
invoke-virtual {v9}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
const-string/jumbo v10, "SELECT key,type,installation,installTime FROM product_installation WHERE key=? and type=?"
const/4 v11, 0x2
new-array v11, v11, [Ljava/lang/String;
const/4 v12, 0x0
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x1
aput-object v8, v11, v12
invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
move-result v3
if-eqz v3, :cond_c8
const/4 v10, 0x2
invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v4
if-ne v14, v4, :cond_88
sget-object v10, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Product is already installed, key="
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v12, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_71
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_77
.catchall {:try_start_34 .. :try_end_77} :catchall_113
.catch Ljava/lang/Exception; {:try_start_34 .. :try_end_77} :catch_a9
if-eqz v0, :cond_7c
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_7c
if-eqz v1, :cond_87
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v10
if-eqz v10, :cond_87
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_87
:goto_87
return-void
:cond_88
:try_start_88
const-string/jumbo v10, "UPDATE product_installation set installation=?, installTime=? WHERE key=? and type=?"
const/4 v11, 0x4
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
const/4 v13, 0x1
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x1
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x2
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x3
aput-object v8, v11, v12
invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_a8
.catchall {:try_start_88 .. :try_end_a8} :catchall_113
.catch Ljava/lang/Exception; {:try_start_88 .. :try_end_a8} :catch_a9
goto :goto_71
:catch_a9
move-exception v2
:try_start_aa
sget-object v10, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v11, "Update product installation fail!"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v10, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
invoke-static {v10, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_b7
.catchall {:try_start_aa .. :try_end_b7} :catchall_113
if-eqz v0, :cond_bc
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_bc
if-eqz v1, :cond_87
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v10
if-eqz v10, :cond_87
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
goto :goto_87
:try_start_c8
:cond_c8
const-string/jumbo v10, "INSERT INTO product_installation values(null,?,?,?,?,?,?,?,?,?,?)"
const/16 v11, 0xa
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x1
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x2
aput-object v8, v11, v12
const/4 v12, 0x3
iget-object v13, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->categoryId:Ljava/lang/String;
aput-object v13, v11, v12
const/4 v12, 0x4
const/4 v13, 0x1
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x6
const/4 v13, 0x0
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x7
const/4 v13, 0x0
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/16 v12, 0x8
const-string/jumbo v13, ""
aput-object v13, v11, v12
const/16 v12, 0x9
const-string/jumbo v13, ""
aput-object v13, v11, v12
invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_111
.catchall {:try_start_c8 .. :try_end_111} :catchall_113
.catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_111} :catch_a9
goto/16 :goto_71
:catchall_113
move-exception v10
if-eqz v0, :cond_119
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_119
if-eqz v1, :cond_124
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v11
if-eqz v11, :cond_124
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_124
throw v10
.end method
.method private static unZipEffect(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
new-instance v6, LvStudio/Android/Camera360/activity/UpdateAdapter$1;
invoke-direct {v6}, LvStudio/Android/Camera360/activity/UpdateAdapter$1;-><init>()V
invoke-virtual {v6}, LvStudio/Android/Camera360/activity/UpdateAdapter$1;->getType()Ljava/lang/reflect/Type;
move-result-object v3
new-instance v1, Lcom/google/gson/Gson;
invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V
:cond_e
:goto_e
invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
move-result-object v4
if-nez v4, :cond_18
invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
return-void
:cond_18
invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z
move-result v6
if-nez v6, :cond_e
invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_e
const-string/jumbo v6, ".json"
invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_e
const-string/jumbo v6, "/index/"
invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_e
const-string/jumbo v6, "/pack.json"
invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_e
invoke-static {p1}, LvStudio/Android/Camera360/activity/UpdateAdapter;->getContext(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_e
:try_start_45
invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iput-object p4, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
const/4 v6, 0x0
iput v6, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
iget v6, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
add-int/lit8 v6, v6, -0x1
iput v6, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
iget v6, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
int-to-long v6, v6
iput-wide v6, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_5e
.catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5e} :catch_5f
goto :goto_e
:catch_5f
move-exception v6
goto :goto_e
.end method
.method protected static updateInstalledLight(Landroid/content/Context;)V
.registers 14
const/4 v12, 0x1
const/4 v11, 0x0
new-instance v4, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
const-string/jumbo v10, "effect.db"
invoke-direct {v4, p0, v10, v11, v12}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
invoke-virtual {v4}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
:try_start_e
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
const-string/jumbo v10, "SELECT key,packKey,locale FROM effect WHERE packKey IN (\'d76c0f4354ae1e34cb471e64f6419b56\') GROUP BY packKey"
const/4 v11, 0x0
invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
:goto_1e
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v10
if-nez v10, :cond_74
const-string/jumbo v10, "d76c0f4354ae1e34cb471e64f6419b56"
invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_6a
const-string/jumbo v10, "DELETE FROM effect WHERE packKey=\'d76c0f4354ae1e34cb471e64f6419b56\'"
invoke-virtual {v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v10, "d76c0f4354ae1e34cb471e64f6419b56"
invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/util/List;
:try_end_3c
.catchall {:try_start_e .. :try_end_3c} :catchall_82
const/4 v8, 0x0
:try_start_3d
new-instance v9, Ljava/util/zip/ZipInputStream;
invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v10
const-string/jumbo v11, "c360_lightcolor.zip"
invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v10
invoke-direct {v9, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_4d
.catchall {:try_start_3d .. :try_end_4d} :catchall_95
.catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4d} :catch_87
const/4 v10, 0x0
:try_start_4e
const-string/jumbo v11, "d76c0f4354ae1e34cb471e64f6419b56"
invoke-static {p0, v9, v5, v10, v11}, LvStudio/Android/Camera360/activity/UpdateAdapter;->unZipEffect(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
:try_end_54
.catchall {:try_start_4e .. :try_end_54} :catchall_ab
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_54} :catch_ae
if-eqz v9, :cond_b1
:try_start_56
invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
:try_end_59
.catchall {:try_start_56 .. :try_end_59} :catchall_82
.catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_9c
move-object v8, v9
:goto_5a
:cond_5a
:try_start_5a
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_5e
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-nez v11, :cond_9f
const-string/jumbo v10, "UPDATE effect_type SET isNew=1 WHERE key=\'C360_LightColor\'"
invoke-virtual {v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
:cond_6a
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_70
.catchall {:try_start_5a .. :try_end_70} :catchall_82
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
return-void
:cond_74
const/4 v10, 0x1
:try_start_75
invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_81
.catchall {:try_start_75 .. :try_end_81} :catchall_82
goto :goto_1e
:catchall_82
move-exception v10
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
throw v10
:catch_87
move-exception v2
:goto_88
:try_start_88
sget-object v10, LvStudio/Android/Camera360/activity/UpdateAdapter;->TAG:Ljava/lang/String;
invoke-static {v10, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_8d
.catchall {:try_start_88 .. :try_end_8d} :catchall_95
if-eqz v8, :cond_5a
:try_start_8f
invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
:try_end_92
.catchall {:try_start_8f .. :try_end_92} :catchall_82
.catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93
goto :goto_5a
:catch_93
move-exception v10
goto :goto_5a
:catchall_95
move-exception v10
:goto_96
if-eqz v8, :cond_9b
:try_start_98
invoke-virtual {v8}, Ljava/util/zip/ZipInputStream;->close()V
:goto_9b
:try_end_9b
.catchall {:try_start_98 .. :try_end_9b} :catchall_82
.catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_a9
:cond_9b
:try_start_9b
throw v10
:catch_9c
move-exception v10
move-object v8, v9
goto :goto_5a
:cond_9f
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-static {v3, v1}, LvStudio/Android/Camera360/activity/UpdateAdapter;->installNewEffectToDB(Lcom/pinguo/camera360/effect/model/entity/Effect;Landroid/database/sqlite/SQLiteDatabase;)V
:try_end_a8
.catchall {:try_start_9b .. :try_end_a8} :catchall_82
goto :goto_5e
:catch_a9
move-exception v11
goto :goto_9b
:catchall_ab
move-exception v10
move-object v8, v9
goto :goto_96
:catch_ae
move-exception v2
move-object v8, v9
goto :goto_88
:cond_b1
move-object v8, v9
goto :goto_5a
.end method