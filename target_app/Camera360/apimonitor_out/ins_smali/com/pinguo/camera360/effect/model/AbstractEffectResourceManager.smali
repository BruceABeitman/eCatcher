.class public abstract Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;
.super Ljava/lang/Object;
.source "AbstractEffectResourceManager.java"
.implements Lcom/pinguo/camera360/effect/model/IEffectResourceManager;
.field protected static final EFFECT_SUB_DIRS:[Ljava/lang/String; = null
.field public static final FRONT_IMAGE_FILE_NAME:Ljava/lang/String; = "frontImage.jpg"
.field public static final LOAD_BACKGROUND_FILE_NAME:Ljava/lang/String; = "load_background.jpg"
.field private static final TAG:Ljava/lang/String; = null
.field protected static final ZIP_FILE_RESERVE_TIME_MS:J = 0x2932e00L
.field protected mContext:Landroid/content/Context;
.field protected mEffectDirPath:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "index"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "shader"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "texture"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "icon"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->EFFECT_SUB_DIRS:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
return-void
.end method
.method public clearNewFlagInDB(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method protected copyResource(Ljava/io/File;)Z
.registers 7
sget-object v1, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Copy shader and texture to installed dir"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_start_8
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "texture"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->getEffectInstalledDir()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "texture"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v1, v2}, Lcom/pinguo/lib/util/FileUtils;->copyFolder(Ljava/io/File;Ljava/io/File;)V
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "icon"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->getEffectInstalledDir()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "icon"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v1, v2}, Lcom/pinguo/lib/util/FileUtils;->copyFolder(Ljava/io/File;Ljava/io/File;)V
:try_end_ba
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_ba} :catch_bc
const/4 v1, 0x1
:goto_bb
return v1
:catch_bc
move-exception v0
sget-object v1, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Copy shader and texture fail, exit install!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_bb
.end method
.method public download(Ljava/lang/String;Ljava/lang/String;Z)Z
.registers 16
const/4 v1, 0x0
if-eqz p3, :cond_65
iget-object v8, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
const-string/jumbo v9, "download"
invoke-static {v8, v9}, Lcom/pinguo/lib/util/SDCardUtils;->getSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v1
:goto_c
new-instance v3, Ljava/io/File;
new-instance v8, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sget-object v8, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Download zip: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "://"
invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_4e
array-length v8, v0
const/4 v9, 0x1
if-ge v8, v9, :cond_6c
:cond_4e
sget-object v8, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Param error, url:"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v8, 0x0
:goto_64
return v8
:cond_65
iget-object v8, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
goto :goto_c
:cond_6c
const/4 v8, 0x0
aget-object v4, v0, v8
sget-object v8, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Download file from "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, " to "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v8
if-eqz v8, :cond_f4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-virtual {v3}, Ljava/io/File;->lastModified()J
move-result-wide v10
sub-long v6, v8, v10
const-wide/32 v8, 0x2932e00
cmp-long v8, v6, v8
if-gez v8, :cond_d4
sget-object v8, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, " exist for "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, " ms, reuse it"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v8, 0x1
goto :goto_64
:cond_d4
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
sget-object v8, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, " exist, delete first"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:cond_f4
:try_start_f4
const-string/jumbo v8, "assets"
invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_108
const/4 v8, 0x1
aget-object v5, v0, v8
iget-object v8, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
invoke-static {v8, v5, v3}, Lcom/pinguo/lib/util/AssetsUtils;->copyAssetsFileTo(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
:goto_105
:cond_105
const/4 v8, 0x1
goto/16 :goto_64
:cond_108
const-string/jumbo v8, "http"
invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_105
invoke-static {p1, v3, v1}, Lcom/pinguo/lib/util/DownloadFileUtils;->download(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
:try_end_114
.catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_114} :catch_115
goto :goto_105
:catch_115
move-exception v2
sget-object v8, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v8, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v8, 0x0
goto/16 :goto_64
.end method
.method protected abstract getEffectInstalledDir()Ljava/io/File;
.end method
.method protected getZipFileName(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const-string/jumbo v1, ""
if-eqz p1, :cond_b
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-eqz v3, :cond_22
:cond_b
sget-object v3, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Bad url: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object v2, v1
:goto_21
return-object v2
:cond_22
const-string/jumbo v3, "/"
invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2f
array-length v3, v0
const/4 v4, 0x1
if-ge v3, v4, :cond_46
:cond_2f
sget-object v3, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Install unzip fail! Bad download url: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
move-object v2, v1
goto :goto_21
:cond_46
array-length v3, v0
add-int/lit8 v3, v3, -0x1
aget-object v1, v0, v3
const-string/jumbo v3, "\\?"
invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_5a
array-length v3, v0
if-lez v3, :cond_5a
const/4 v3, 0x0
aget-object v1, v0, v3
:cond_5a
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, ".zip"
invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_6c
const-string/jumbo v1, ""
:cond_6c
move-object v2, v1
goto :goto_21
.end method
.method protected abstract initEffectInstalledDir()V
.end method
.method public install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public isSDCardAvalable()Z
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
const-string/jumbo v2, "download"
invoke-static {v1, v2}, Lcom/pinguo/lib/util/SDCardUtils;->getSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
if-nez v0, :cond_d
const/4 v1, 0x0
:goto_c
return v1
:cond_d
const/4 v1, 0x1
goto :goto_c
.end method
.method protected parseEffect(Ljava/io/File;Ljava/lang/String;I)Lcom/pinguo/camera360/effect/model/entity/Effect;
.registers 13
sget-object v6, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Parse effect json: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
const/4 v4, 0x0
:try_start_1b
invoke-static {p1}, Lcom/pinguo/lib/util/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
move-result-object v4
new-instance v3, Lcom/google/gson/Gson;
invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V
new-instance v6, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager$2;
invoke-direct {v6, p0}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager$2;-><init>(Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;)V
invoke-virtual {v6}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager$2;->getType()Ljava/lang/reflect/Type;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v6
move-object v0, v6
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
move-object v2, v0
iput-object p2, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
iput p3, v2, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
:try_end_39
.catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_39} :catch_3a
return-object v2
:catch_3a
move-exception v1
sget-object v6, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v7, "Parse effect json fail!"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v6, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method protected parseEffectType(Ljava/io/File;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
.registers 10
sget-object v5, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Parse effect type json: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
:try_start_1a
invoke-static {p1}, Lcom/pinguo/lib/util/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
move-result-object v3
new-instance v2, Lcom/google/gson/Gson;
invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
new-instance v5, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager$1;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager$1;-><init>(Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;)V
invoke-virtual {v5}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager$1;->getType()Ljava/lang/reflect/Type;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;
:try_end_32
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_33
return-object v1
:catch_33
move-exception v0
sget-object v5, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v6, "Parse effect type json fail!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v5, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v5, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v0
.end method
.method public parseMetaJson(Ljava/lang/String;Ljava/io/File;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
.registers 11
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->parseEffectType(Ljava/io/File;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v3
iget-object v5, v3, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effectNames:[Ljava/lang/String;
if-eqz v5, :cond_e
const/4 v4, 0x0
:goto_9
iget-object v5, v3, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effectNames:[Ljava/lang/String;
array-length v5, v5
if-lt v4, v5, :cond_f
:cond_e
return-object v3
:cond_f
iget-object v5, v3, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effectNames:[Ljava/lang/String;
aget-object v2, v5, v4
new-instance v1, Ljava/io/File;
invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, ".json"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v1, p1, v4}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->parseEffect(Ljava/io/File;Ljava/lang/String;I)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->addEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
add-int/lit8 v4, v4, 0x1
goto :goto_9
.end method
.method protected publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
.registers 7
if-eqz p1, :cond_12
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
mul-int/lit8 v2, p2, 0x64
div-int/2addr v2, p3
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-interface {p1, v0}, Lcom/pinguo/camera360/base/BaseModel$Callback;->onExecute([Ljava/lang/Object;)V
:cond_12
return-void
.end method
.method public unzip(Ljava/lang/String;Z)Ljava/io/File;
.registers 12
const/4 v1, 0x0
const/4 v5, 0x0
if-eqz p2, :cond_3a
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
const-string/jumbo v7, "download"
invoke-static {v6, v7}, Lcom/pinguo/lib/util/SDCardUtils;->getSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v1
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
const-string/jumbo v7, "unzipped"
invoke-static {v6, v7}, Lcom/pinguo/lib/util/SDCardUtils;->getSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v5
:goto_16
const-string/jumbo v6, "\\."
invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_23
array-length v6, v0
const/4 v7, 0x1
if-ge v6, v7, :cond_47
:cond_23
sget-object v6, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Unzip fail, bad effect pack file name: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
:goto_39
return-object v4
:cond_3a
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
iget-object v6, p0, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->mContext:Landroid/content/Context;
invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v5
goto :goto_16
:cond_47
const/4 v6, 0x0
aget-object v3, v0, v6
new-instance v4, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_9f
invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_9f
invoke-static {v4}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
sget-object v6, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Target dir: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " exists, delete it before unzipping"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:cond_9f
new-instance v2, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/util/UnzipUtils;->unzip(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_39
.end method