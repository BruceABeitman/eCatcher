.class public Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;
.super Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;
.source "TryEffectResourceManager.java"
.field private static final TAG:Ljava/lang/String;
.field protected mDBHelper:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public destroy()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;
sget-object v0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "Destroy and dbhelper is closed."
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_14
return-void
.end method
.method public getEffectInstalledDir()Ljava/io/File;
.registers 4
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mEffectDirPath:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "try"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_30
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->initEffectInstalledDir()V
:cond_30
return-object v0
.end method
.method public init()V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "effect"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mEffectDirPath:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->initEffectInstalledDir()V
new-instance v0, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mContext:Landroid/content/Context;
const-string/jumbo v2, "try.db"
const/4 v3, 0x0
const/4 v4, 0x1
invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;
sget-object v0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v1, "Initialized."
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected initEffectInstalledDir()V
.registers 4
const/4 v0, 0x0
:goto_1
sget-object v1, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->EFFECT_SUB_DIRS:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_7
return-void
:cond_7
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mEffectDirPath:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "try"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->EFFECT_SUB_DIRS:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
.registers 16
const/4 v9, 0x1
const/16 v12, 0x9
const/4 v8, 0x0
if-nez p1, :cond_f
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "Try install failed, param effectPackage is null. exit install!"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_e
return v8
:cond_f
invoke-virtual {p0, p2, v9, v12}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->isSDCardAvalable()Z
move-result v3
iget-object v6, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->downloadPath:Ljava/lang/String;
invoke-virtual {p0, v6}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->getZipFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_24
invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
move-result v10
if-eqz v10, :cond_3a
:cond_24
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "Install fail! Bad download url: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
:cond_3a
invoke-virtual {p0, v6, v7, v3}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->download(Ljava/lang/String;Ljava/lang/String;Z)Z
move-result v10
if-nez v10, :cond_5d
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "Download package fail: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, ", exit install!"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e
:cond_5d
const/4 v10, 0x2
invoke-virtual {p0, p2, v10, v12}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
:try_start_61
invoke-virtual {p0, v7, v3}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->unzip(Ljava/lang/String;Z)Ljava/io/File;
:try_end_64
.catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_91
move-result-object v5
if-eqz v5, :cond_73
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_73
invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z
move-result v10
if-nez v10, :cond_a1
:cond_73
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "Unzip fail: "
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, ", exit install!"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_e
:catch_91
move-exception v0
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "unzip fail, exit install!"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v9, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_e
:cond_a1
const/4 v10, 0x3
invoke-virtual {p0, p2, v10, v12}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
new-instance v4, Ljava/io/File;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "index"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string/jumbo v11, "pack.json"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v2, 0x0
:try_start_d6
iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
invoke-virtual {p0, v10, v4}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->parseMetaJson(Ljava/lang/String;Ljava/io/File;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v1
if-eqz v1, :cond_e0
iget-object v2, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
:goto_e0
:try_end_e0
.catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e0} :catch_f4
.catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e0} :catch_104
:cond_e0
const/4 v10, 0x4
invoke-virtual {p0, p2, v10, v12}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
invoke-virtual {p0, v5}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->copyResource(Ljava/io/File;)Z
move-result v10
if-nez v10, :cond_109
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "Copy effect resource fail, exit install!"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_e
:catch_f4
move-exception v0
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "Parse meta data fail, exit install!"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v9, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_e
:catch_104
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_e0
:cond_109
const/4 v10, 0x6
invoke-virtual {p0, p2, v10, v12}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->updateDB(Ljava/util/List;)Z
move-result v10
if-nez v10, :cond_11d
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "Update database fail, exit install!"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_e
:cond_11d
const/4 v8, 0x7
invoke-virtual {p0, p2, v8, v12}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
invoke-static {v5}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
const/16 v8, 0x8
invoke-virtual {p0, p2, v8, v12}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v8
invoke-virtual {v8, v9}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->invalidTryEffectDict(Z)V
move v8, v9
goto/16 :goto_e
.end method
.method public declared-synchronized loadEffectDict(Ljava/util/Locale;)Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;
.registers 15
monitor-enter p0
:try_start_1
sget-object v10, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Load effect dict with locale: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Lcom/pinguo/lib/util/LocaleSupport;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v8
new-instance v3, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;
invoke-direct {v3}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;-><init>()V
new-instance v10, Ljava/io/File;
new-instance v11, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->getEffectInstalledDir()Ljava/io/File;
move-result-object v12
invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "icon"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
:try_end_53
.catchall {:try_start_1 .. :try_end_53} :catchall_180
move-result-object v7
const/4 v2, 0x0
const/4 v1, 0x0
:try_start_56
iget-object v10, p0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;
invoke-virtual {v10}, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
const-string/jumbo v10, "SELECT key,locale,name,description,version,requirementStr,icon,realRender,preCmdStr,gpuCmdStr,cpuCmd,textureStr,packKey,idxInPack,installation,installTime,isNew FROM try_effect WHERE locale = ?"
const/4 v11, 0x1
new-array v11, v11, [Ljava/lang/String;
const/4 v12, 0x0
aput-object v8, v11, v12
invoke-virtual {v2, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
:goto_69
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
:try_end_6c
.catchall {:try_start_56 .. :try_end_6c} :catchall_183
.catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6c} :catch_168
move-result v10
if-nez v10, :cond_98
if-eqz v1, :cond_74
:try_start_71
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_74
if-eqz v2, :cond_7f
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v10
if-eqz v10, :cond_7f
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:goto_7f
:cond_7f
new-instance v0, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict$TryEffectComparator;
invoke-direct {v0}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict$TryEffectComparator;-><init>()V
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->getEffectPackMap()Ljava/util/Map;
move-result-object v10
invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v10
invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_90
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
:try_end_93
.catchall {:try_start_71 .. :try_end_93} :catchall_180
move-result v10
if-nez v10, :cond_195
monitor-exit p0
return-object v3
:cond_98
:try_start_98
new-instance v5, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-direct {v5}, Lcom/pinguo/camera360/effect/model/entity/Effect;-><init>()V
const/4 v10, 0x0
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
const/4 v10, 0x1
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
const/4 v10, 0x2
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
const/4 v10, 0x3
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
const/4 v10, 0x4
invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v10
iput v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->version:I
const/4 v10, 0x5
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "file://"
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const/4 v11, 0x6
invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;
const/4 v10, 0x7
invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v10
iput v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->realRender:I
const/16 v10, 0x8
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
const/16 v10, 0x9
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
const/16 v10, 0xa
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
const/16 v10, 0xb
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
const/16 v10, 0xc
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
iput-object v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
const/16 v10, 0xd
invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v10
iput v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
const/16 v10, 0xe
invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v10
iput v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->installation:I
const/16 v10, 0xf
invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v10
iput-wide v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
const/16 v10, 0x10
invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v10
iput v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->getEffectPackMap()Ljava/util/Map;
move-result-object v10
iget-object v11, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/util/List;
if-nez v6, :cond_157
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->getEffectPackMap()Ljava/util/Map;
move-result-object v10
iget-object v11, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_157
const/4 v10, 0x1
iput-boolean v10, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->isTry:Z
invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->getEffectMap()Ljava/util/Map;
move-result-object v10
iget-object v11, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_166
.catchall {:try_start_98 .. :try_end_166} :catchall_183
.catch Ljava/lang/Exception; {:try_start_98 .. :try_end_166} :catch_168
goto/16 :goto_69
:catch_168
move-exception v4
:try_start_169
sget-object v10, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v10, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_16e
.catchall {:try_start_169 .. :try_end_16e} :catchall_183
if-eqz v1, :cond_173
:try_start_170
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_173
if-eqz v2, :cond_7f
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v10
if-eqz v10, :cond_7f
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:try_end_17e
.catchall {:try_start_170 .. :try_end_17e} :catchall_180
goto/16 :goto_7f
:catchall_180
move-exception v10
monitor-exit p0
throw v10
:catchall_183
move-exception v10
if-eqz v1, :cond_189
:try_start_186
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_189
if-eqz v2, :cond_194
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v11
if-eqz v11, :cond_194
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_194
throw v10
:cond_195
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->getEffectPackMap()Ljava/util/Map;
move-result-object v10
invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/util/List;
invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:try_end_1a8
.catchall {:try_start_186 .. :try_end_1a8} :catchall_180
goto/16 :goto_90
.end method
.method public uninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected updateDB(Ljava/util/List;)Z
.registers 19
if-eqz p1, :cond_8
invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
move-result v9
if-nez v9, :cond_12
:cond_8
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "Param error, update database fail!"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v9, 0x0
:goto_11
return v9
:cond_12
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "Update database"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
const/4 v1, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
:try_start_20
move-object/from16 v0, p0
iget-object v9, v0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;
invoke-virtual {v9}, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_2f
:cond_2f
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_4d
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_3b
.catchall {:try_start_20 .. :try_end_3b} :catchall_180
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3b} :catch_91
if-eqz v1, :cond_40
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_40
if-eqz v2, :cond_4b
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v9
if-eqz v9, :cond_4b
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_4b
const/4 v9, 0x1
goto :goto_11
:cond_4d
:try_start_4d
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/effect/model/entity/Effect;
const-string/jumbo v9, "SELECT COUNT(*) FROM try_effect WHERE key = ?"
const/4 v11, 0x1
new-array v11, v11, [Ljava/lang/String;
const/4 v12, 0x0
iget-object v13, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
aput-object v13, v11, v12
invoke-virtual {v2, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_2f
invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
move-result v9
if-lez v9, :cond_2f
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v9, 0x0
invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
if-nez v9, :cond_b2
const/4 v5, 0x0
:goto_75
if-eqz v5, :cond_b4
const-string/jumbo v9, "UPDATE try_effect SET installation=? WHERE key = ?"
const/4 v11, 0x2
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
const/4 v13, 0x1
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
const/4 v12, 0x1
iget-object v13, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
aput-object v13, v11, v12
invoke-virtual {v2, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_8d
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:try_end_90
.catchall {:try_start_4d .. :try_end_90} :catchall_180
.catch Ljava/lang/Exception; {:try_start_4d .. :try_end_90} :catch_91
goto :goto_2f
:catch_91
move-exception v3
:try_start_92
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "Update database exception occurs"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v9, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v9, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_9f
.catchall {:try_start_92 .. :try_end_9f} :catchall_180
if-eqz v1, :cond_a4
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_a4
if-eqz v2, :cond_af
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v9
if-eqz v9, :cond_af
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_af
const/4 v9, 0x0
goto/16 :goto_11
:cond_b2
const/4 v5, 0x1
goto :goto_75
:cond_b4
:try_start_b4
sget-object v11, Lcom/pinguo/lib/util/LocaleSupport;->sSupportLocales:[Ljava/util/Locale;
array-length v12, v11
const/4 v9, 0x0
:goto_b8
if-ge v9, v12, :cond_8d
aget-object v6, v11, v9
invoke-virtual {v4, v6}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getLocaleObject(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v3
const-string/jumbo v13, "INSERT INTO try_effect values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
const/16 v14, 0x15
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/4 v15, 0x1
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/4 v15, 0x2
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/4 v15, 0x3
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/4 v15, 0x4
iget v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->version:I
move/from16 v16, v0
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
const/4 v15, 0x5
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/4 v15, 0x6
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/4 v15, 0x7
iget v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->realRender:I
move/from16 v16, v0
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
const/16 v15, 0x8
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/16 v15, 0x9
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/16 v15, 0xa
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/16 v15, 0xb
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/16 v15, 0xc
iget-object v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
move-object/from16 v16, v0
aput-object v16, v14, v15
const/16 v15, 0xd
iget v0, v3, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
move/from16 v16, v0
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
const/16 v15, 0xe
const/16 v16, 0x1
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
const/16 v15, 0xf
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v16
aput-object v16, v14, v15
const/16 v15, 0x10
const/16 v16, 0x0
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
const/16 v15, 0x11
const/16 v16, 0x0
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
const/16 v15, 0x12
const/16 v16, 0x0
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
const/16 v15, 0x13
const-string/jumbo v16, ""
aput-object v16, v14, v15
const/16 v15, 0x14
const-string/jumbo v16, ""
aput-object v16, v14, v15
invoke-virtual {v2, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_17c
.catchall {:try_start_b4 .. :try_end_17c} :catchall_180
.catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_17c} :catch_91
add-int/lit8 v9, v9, 0x1
goto/16 :goto_b8
:catchall_180
move-exception v9
if-eqz v1, :cond_186
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_186
if-eqz v2, :cond_191
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v10
if-eqz v10, :cond_191
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_191
throw v9
.end method