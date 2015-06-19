.class public final Lcom/pinguo/Camera360Lib/cache/disc/utils/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"
.field private static final EXTERNAL_STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"
.field private static final INDIVIDUAL_DIR_NAME:Ljava/lang/String; = "disk"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lcom/pinguo/Camera360Lib/cache/disc/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public static getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;
.registers 7
const/4 v0, 0x0
if-eqz p1, :cond_1a
const-string/jumbo v2, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1a
invoke-static {p0}, Lcom/pinguo/Camera360Lib/cache/disc/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_1a
invoke-static {p0}, Lcom/pinguo/Camera360Lib/cache/disc/utils/StorageUtils;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
:cond_1a
if-nez v0, :cond_20
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
:cond_20
if-nez v0, :cond_4e
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "/data/data/"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "/cache/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "Can\'t define system cache directory! \'%s\' will be used."
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v1, v3, v4
invoke-static {v2, v3}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:cond_4e
return-object v0
.end method
.method private static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
.registers 8
const/4 v6, 0x0
new-instance v1, Ljava/io/File;
new-instance v3, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v4
const-string/jumbo v5, "Android"
invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-string/jumbo v4, "data"
invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
new-instance v3, Ljava/io/File;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-string/jumbo v4, "cache"
invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_3b
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v3
if-nez v3, :cond_3c
const-string/jumbo v3, "Unable to create external cache directory"
new-array v4, v6, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x0
:goto_3b
:cond_3b
return-object v0
:try_start_3c
:cond_3c
new-instance v3, Ljava/io/File;
const-string/jumbo v4, ".nomedia"
invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
:try_end_47
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_47} :catch_48
goto :goto_3b
:catch_48
move-exception v2
const-string/jumbo v3, "Can\'t create \".nomedia\" file in application external cache directory"
new-array v4, v6, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/nostra13/universalimageloader/utils/L;->i(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_3b
.end method
.method public static getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;
.registers 4
invoke-static {p0}, Lcom/pinguo/Camera360Lib/cache/disc/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
new-instance v1, Ljava/io/File;
const-string/jumbo v2, "disk"
invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_19
invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
move-result v2
if-nez v2, :cond_19
move-object v1, v0
:cond_19
return-object v1
.end method
.method public static getOwnCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.registers 5
const/4 v0, 0x0
const-string/jumbo v1, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d
invoke-static {p0}, Lcom/pinguo/Camera360Lib/cache/disc/utils/StorageUtils;->hasExternalStoragePermission(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_1d
new-instance v0, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:cond_1d
if-eqz v0, :cond_2b
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_2f
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_2f
:cond_2b
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
:cond_2f
return-object v0
.end method
.method private static hasExternalStoragePermission(Landroid/content/Context;)Z
.registers 3
const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"
invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_b
const/4 v1, 0x1
:goto_a
return v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method