.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"
.field private static final ATTR_NAME:Ljava/lang/String; = "name"
.field private static final ATTR_PATH:Ljava/lang/String; = "path"
.field private static final COLUMNS:[Ljava/lang/String; = null
.field private static final DEVICE_ROOT:Ljava/io/File; = null
.field private static final META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"
.field private static final TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"
.field private static final TAG_EXTERNAL:Ljava/lang/String; = "external-path"
.field private static final TAG_FILES_PATH:Ljava/lang/String; = "files-path"
.field private static final TAG_ROOT_PATH:Ljava/lang/String; = "root-path"
.field private static sCache:Ljava/util/HashMap;
.field private mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_display_name"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "_size"
aput-object v2, v0, v1
sput-object v0, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;
new-instance v0, Ljava/io/File;
const-string v1, "/"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
.registers 7
array-length v3, p1
const/4 v0, 0x0
move v2, v0
move-object v1, p0
:goto_4
if-ge v2, v3, :cond_14
aget-object v4, p1, v2
if-eqz v4, :cond_15
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:goto_f
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_4
:cond_14
return-object v1
:cond_15
move-object v0, v1
goto :goto_f
.end method
.method private static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
.registers 4
const/4 v1, 0x0
new-array v0, p1, [Ljava/lang/Object;
invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method private static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
.registers 4
const/4 v1, 0x0
new-array v0, p1, [Ljava/lang/String;
invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method private static getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
.registers 6
sget-object v1, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
sget-object v0, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/content/FileProvider$PathStrategy;
:try_end_b
.catchall {:try_start_3 .. :try_end_b} :catchall_21
if-nez v0, :cond_16
:try_start_d
invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
:try_end_10
.catchall {:try_start_d .. :try_end_10} :catchall_21
.catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_18
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_10} :catch_24
move-result-object v0
:try_start_11
sget-object v2, Landroid/support/v4/content/FileProvider;->sCache:Ljava/util/HashMap;
invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_16
monitor-exit v1
return-object v0
:catch_18
move-exception v0
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"
invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catchall_21
move-exception v0
monitor-exit v1
:try_end_23
.catchall {:try_start_11 .. :try_end_23} :catchall_21
throw v0
:catch_24
move-exception v0
:try_start_25
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"
invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:try_end_2d
.catchall {:try_start_25 .. :try_end_2d} :catchall_21
.end method
.method public static getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
.registers 4
invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
move-result-object v0
invoke-interface {v0, p2}, Landroid/support/v4/content/FileProvider$PathStrategy;->getUriForFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method private static modeToMode(Ljava/lang/String;)I
.registers 4
const-string v0, "r"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
const/high16 v0, 0x1000
:goto_a
return v0
:cond_b
const-string v0, "w"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1b
const-string v0, "wt"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
:cond_1b
const/high16 v0, 0x2c00
goto :goto_a
:cond_1e
const-string v0, "wa"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_29
const/high16 v0, 0x2a00
goto :goto_a
:cond_29
const-string v0, "rw"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_34
const/high16 v0, 0x3800
goto :goto_a
:cond_34
const-string v0, "rwt"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3f
const/high16 v0, 0x3c00
goto :goto_a
:cond_3f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid mode: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
.registers 11
const/4 v1, 0x0
const/4 v8, 0x0
const/4 v7, 0x1
new-instance v2, Landroid/support/v4/content/FileProvider$SimplePathStrategy;
invoke-direct {v2, p1}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/16 v3, 0x80
invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const-string v4, "android.support.FILE_PROVIDER_PATHS"
invoke-virtual {v0, v3, v4}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
move-result-object v3
if-nez v3, :cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:goto_26
:cond_26
invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
move-result v0
if-eq v0, v7, :cond_96
const/4 v4, 0x2
if-ne v0, v4, :cond_26
invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
move-result-object v0
const-string v4, "name"
invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v5, "path"
invoke-interface {v3, v1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v6, "root-path"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_57
sget-object v0, Landroid/support/v4/content/FileProvider;->DEVICE_ROOT:Ljava/io/File;
new-array v6, v7, [Ljava/lang/String;
aput-object v5, v6, v8
invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v0
:goto_51
if-eqz v0, :cond_26
invoke-virtual {v2, v4, v0}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V
goto :goto_26
:cond_57
const-string v6, "files-path"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_6c
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v0
new-array v6, v7, [Ljava/lang/String;
aput-object v5, v6, v8
invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v0
goto :goto_51
:cond_6c
const-string v6, "cache-path"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_81
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
new-array v6, v7, [Ljava/lang/String;
aput-object v5, v6, v8
invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v0
goto :goto_51
:cond_81
const-string v6, "external-path"
invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_97
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
new-array v6, v7, [Ljava/lang/String;
aput-object v5, v6, v8
invoke-static {v0, v6}, Landroid/support/v4/content/FileProvider;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v0
goto :goto_51
:cond_96
return-object v2
:cond_97
move-object v0, v1
goto :goto_51
.end method
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/SecurityException;
const-string v1, "Provider must not be exported"
invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z
if-nez v0, :cond_1b
new-instance v0, Ljava/lang/SecurityException;
const-string v1, "Provider must grant uri permissions"
invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;
invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->getPathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/FileProvider$PathStrategy;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;
return-void
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 5
iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;
invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;
invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x2e
invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
if-ltz v1, :cond_27
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_27
:goto_26
return-object v0
:cond_27
const-string v0, "application/octet-stream"
goto :goto_26
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "No external inserts"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Landroid/support/v4/content/FileProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Landroid/support/v4/content/FileProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.registers 5
iget-object v0, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;
invoke-interface {v0, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;
move-result-object v0
invoke-static {p2}, Landroid/support/v4/content/FileProvider;->modeToMode(Ljava/lang/String;)I
move-result v1
invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v0
return-object v0
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 15
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/content/FileProvider;->mStrategy:Landroid/support/v4/content/FileProvider$PathStrategy;
invoke-interface {v1, p1}, Landroid/support/v4/content/FileProvider$PathStrategy;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;
move-result-object v3
if-nez p2, :cond_b
sget-object p2, Landroid/support/v4/content/FileProvider;->COLUMNS:[Ljava/lang/String;
:cond_b
array-length v1, p2
new-array v4, v1, [Ljava/lang/String;
array-length v1, p2
new-array v5, v1, [Ljava/lang/Object;
array-length v6, p2
move v2, v0
move v1, v0
:goto_14
if-ge v2, v6, :cond_4a
aget-object v0, p2, v2
const-string v7, "_display_name"
invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_31
const-string v0, "_display_name"
aput-object v0, v4, v1
add-int/lit8 v0, v1, 0x1
invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v7
aput-object v7, v5, v1
:goto_2c
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v0
goto :goto_14
:cond_31
const-string v7, "_size"
invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5c
const-string v0, "_size"
aput-object v0, v4, v1
add-int/lit8 v0, v1, 0x1
invoke-virtual {v3}, Ljava/io/File;->length()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v5, v1
goto :goto_2c
:cond_4a
invoke-static {v4, v1}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v0
invoke-static {v5, v1}, Landroid/support/v4/content/FileProvider;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
move-result-object v1
new-instance v2, Landroid/database/MatrixCursor;
const/4 v3, 0x1
invoke-direct {v2, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V
invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
return-object v2
:cond_5c
move v0, v1
goto :goto_2c
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 7
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "No external updates"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method