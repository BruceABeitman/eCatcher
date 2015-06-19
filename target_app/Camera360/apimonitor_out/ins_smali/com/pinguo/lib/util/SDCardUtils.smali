.class public final Lcom/pinguo/lib/util/SDCardUtils;
.super Ljava/lang/Object;
.source "SDCardUtils.java"
.field private static final ALTERNATE_SDCARD_MOUNTS:[Ljava/lang/String; = null
.field public static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null
.field private static final EXT_STORAGE_ROOT_PREFIX:Ljava/lang/String; = "/Android/data/"
.field private static final EXT_STORAGE_ROOT_SUFFIX:Ljava/lang/String; = "/files/"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/pinguo/lib/util/SDCardUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/util/SDCardUtils;->TAG:Ljava/lang/String;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
sput-object v0, Lcom/pinguo/lib/util/SDCardUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "/emmc"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "/sdcard/ext_sd"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "/sdcard-ext"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "/sdcard/sd"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string/jumbo v2, "/sdcard/sdcard"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/lib/util/SDCardUtils;->ALTERNATE_SDCARD_MOUNTS:[Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static buildDirPath(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
const-string/jumbo v1, "/Android/data/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, "/files/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/io/File;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v1
.end method
.method public static clearSDDir(Landroid/content/Context;Ljava/lang/String;)V
.registers 9
invoke-static {p0, p1}, Lcom/pinguo/lib/util/SDCardUtils;->getSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
array-length v4, v2
const/4 v3, 0x0
:goto_a
if-lt v3, v4, :cond_1b
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v3
if-nez v3, :cond_1a
sget-object v3, Lcom/pinguo/lib/util/SDCardUtils;->TAG:Ljava/lang/String;
const-string/jumbo v4, "Delete file failed!"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_1a
return-void
:cond_1b
aget-object v1, v2, v3
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v5
if-nez v5, :cond_2b
sget-object v5, Lcom/pinguo/lib/util/SDCardUtils;->TAG:Ljava/lang/String;
const-string/jumbo v6, "Delete file failed!"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
add-int/lit8 v3, v3, 0x1
goto :goto_a
.end method
.method public static getSDCardDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.registers 12
const/4 v4, 0x0
const-string/jumbo v5, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_2c
const/4 v2, 0x0
:try_start_f
const-class v5, Landroid/content/Context;
const-string/jumbo v6, "getExternalFilesDir"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Class;
const/4 v8, 0x0
const-class v9, Ljava/lang/String;
aput-object v9, v7, v8
invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p1, v5, v6
invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/io/File;
:try_end_2c
.catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_2c} :catch_44
.catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_2c} :catch_4e
.catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_2c} :catch_58
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_2c} :catch_62
:goto_2c
:cond_2c
if-nez v4, :cond_34
const/4 v3, 0x0
:goto_2f
sget-object v5, Lcom/pinguo/lib/util/SDCardUtils;->ALTERNATE_SDCARD_MOUNTS:[Ljava/lang/String;
array-length v5, v5
if-lt v3, v5, :cond_6c
:goto_34
:cond_34
if-eqz v4, :cond_43
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_43
invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
move-result v5
if-nez v5, :cond_43
const/4 v4, 0x0
:cond_43
return-object v4
:catch_44
move-exception v1
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v5
invoke-static {p0, v5, p1}, Lcom/pinguo/lib/util/SDCardUtils;->buildDirPath(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
move-result-object v4
goto :goto_2c
:catch_4e
move-exception v1
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v5
invoke-static {p0, v5, p1}, Lcom/pinguo/lib/util/SDCardUtils;->buildDirPath(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
move-result-object v4
goto :goto_2c
:catch_58
move-exception v1
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v5
invoke-static {p0, v5, p1}, Lcom/pinguo/lib/util/SDCardUtils;->buildDirPath(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
move-result-object v4
goto :goto_2c
:catch_62
move-exception v1
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v5
invoke-static {p0, v5, p1}, Lcom/pinguo/lib/util/SDCardUtils;->buildDirPath(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
move-result-object v4
goto :goto_2c
:cond_6c
new-instance v0, Ljava/io/File;
sget-object v5, Lcom/pinguo/lib/util/SDCardUtils;->ALTERNATE_SDCARD_MOUNTS:[Ljava/lang/String;
aget-object v5, v5, v3
invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v5
if-eqz v5, :cond_92
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v5
if-eqz v5, :cond_92
invoke-virtual {v0}, Ljava/io/File;->canRead()Z
move-result v5
if-eqz v5, :cond_92
invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
move-result v5
if-eqz v5, :cond_92
invoke-static {p0, v0, p1}, Lcom/pinguo/lib/util/SDCardUtils;->buildDirPath(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
move-result-object v4
goto :goto_34
:cond_92
add-int/lit8 v3, v3, 0x1
goto :goto_2f
.end method
.method public static getSDCardPath()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/pinguo/lib/util/SDCardUtils;->hasSDCard()Z
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lcom/pinguo/lib/util/SDCardUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;
if-eqz v0, :cond_11
sget-object v0, Lcom/pinguo/lib/util/SDCardUtils;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public static hasSDCard()Z
.registers 2
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "mounted"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
return v1
.end method