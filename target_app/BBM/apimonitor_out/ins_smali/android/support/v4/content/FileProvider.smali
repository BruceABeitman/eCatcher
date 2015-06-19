.class public Landroid/support/v4/content/FileProvider;
.super Landroid/content/ContentProvider;
.source "FileProvider.java"
.field private static final a:[Ljava/lang/String;
.field private static final b:Ljava/io/File;
.field private static c:Ljava/util/HashMap;
.field private d:Landroid/support/v4/content/a;
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
sput-object v0, Landroid/support/v4/content/FileProvider;->a:[Ljava/lang/String;
new-instance v0, Ljava/io/File;
const-string v1, "/"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v0, Landroid/support/v4/content/FileProvider;->b:Ljava/io/File;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Landroid/support/v4/content/FileProvider;->c:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
.registers 4
invoke-static {p0, p1}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/a;
move-result-object v0
invoke-interface {v0, p2}, Landroid/support/v4/content/a;->a(Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/a;
.registers 12
const/4 v2, 0x0
const/4 v9, 0x1
sget-object v3, Landroid/support/v4/content/FileProvider;->c:Ljava/util/HashMap;
monitor-enter v3
:try_start_5
sget-object v0, Landroid/support/v4/content/FileProvider;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/content/a;
:try_end_d
.catchall {:try_start_5 .. :try_end_d} :catchall_3b
if-nez v0, :cond_ef
:try_start_f
new-instance v0, Landroid/support/v4/content/b;
invoke-direct {v0, p1}, Landroid/support/v4/content/b;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/16 v4, 0x80
invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
move-result-object v1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v4
const-string v5, "android.support.FILE_PROVIDER_PATHS"
invoke-virtual {v1, v4, v5}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
move-result-object v4
if-nez v4, :cond_47
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Missing android.support.FILE_PROVIDER_PATHS meta-data"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_32
.catchall {:try_start_f .. :try_end_32} :catchall_3b
.catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_32
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_32} :catch_86
:catch_32
move-exception v0
:try_start_33
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:try_end_3b
.catchall {:try_start_33 .. :try_end_3b} :catchall_3b
:catchall_3b
move-exception v0
monitor-exit v3
throw v0
:try_start_3e
:cond_3e
invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
:try_end_41
.catchall {:try_start_3e .. :try_end_41} :catchall_3b
.catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_d4
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_41} :catch_86
move-result-object v1
:try_start_42
iget-object v6, v0, Landroid/support/v4/content/b;->a:Ljava/util/HashMap;
invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_47
invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
move-result v1
if-eq v1, v9, :cond_ea
const/4 v5, 0x2
if-ne v1, v5, :cond_47
invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
move-result-object v1
const/4 v5, 0x0
const-string v6, "name"
invoke-interface {v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
const-string v7, "path"
invoke-interface {v4, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v7, "root-path"
invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_8f
sget-object v1, Landroid/support/v4/content/FileProvider;->b:Ljava/io/File;
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
aput-object v6, v7, v8
invoke-static {v1, v7}, Landroid/support/v4/content/FileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v1
:goto_76
if-eqz v1, :cond_47
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_3e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Name must not be empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_86
.catchall {:try_start_42 .. :try_end_86} :catchall_3b
.catch Ljava/io/IOException; {:try_start_42 .. :try_end_86} :catch_32
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_86} :catch_86
:catch_86
move-exception v0
:try_start_87
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:cond_8f
:try_start_8f
:try_end_8f
.catchall {:try_start_87 .. :try_end_8f} :catchall_3b
const-string v7, "files-path"
invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_a6
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
aput-object v6, v7, v8
invoke-static {v1, v7}, Landroid/support/v4/content/FileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v1
goto :goto_76
:cond_a6
const-string v7, "cache-path"
invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_bd
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
aput-object v6, v7, v8
invoke-static {v1, v7}, Landroid/support/v4/content/FileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v1
goto :goto_76
:cond_bd
const-string v7, "external-path"
invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_f1
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
aput-object v6, v7, v8
invoke-static {v1, v7}, Landroid/support/v4/content/FileProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v1
goto :goto_76
:catch_d4
move-exception v0
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to resolve canonical path for "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_ea
:try_end_ea
.catchall {:try_start_8f .. :try_end_ea} :catchall_3b
.catch Ljava/io/IOException; {:try_start_8f .. :try_end_ea} :catch_32
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_ea} :catch_86
:try_start_ea
sget-object v1, Landroid/support/v4/content/FileProvider;->c:Ljava/util/HashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_ef
monitor-exit v3
:try_end_f0
.catchall {:try_start_ea .. :try_end_f0} :catchall_3b
return-object v0
:cond_f1
move-object v1, v2
goto :goto_76
.end method
.method private static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
.registers 7
const/4 v3, 0x0
move v2, v3
move-object v1, p0
:goto_3
if-gtz v2, :cond_13
aget-object v4, p1, v3
if-eqz v4, :cond_14
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:goto_e
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_3
:cond_13
return-object v1
:cond_14
move-object v0, v1
goto :goto_e
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
invoke-static {p1, v0}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/content/a;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/a;
return-void
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 5
iget-object v0, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/a;
invoke-interface {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/net/Uri;)Ljava/io/File;
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
iget-object v0, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/a;
invoke-interface {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/net/Uri;)Ljava/io/File;
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
.registers 6
iget-object v0, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/a;
invoke-interface {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/net/Uri;)Ljava/io/File;
move-result-object v1
const-string v0, "r"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_15
const/high16 v0, 0x1000
:goto_10
invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v0
return-object v0
:cond_15
const-string v0, "w"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_25
const-string v0, "wt"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
:cond_25
const/high16 v0, 0x2c00
goto :goto_10
:cond_28
const-string v0, "wa"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_33
const/high16 v0, 0x2a00
goto :goto_10
:cond_33
const-string v0, "rw"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3e
const/high16 v0, 0x3800
goto :goto_10
:cond_3e
const-string v0, "rwt"
invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_49
const/high16 v0, 0x3c00
goto :goto_10
:cond_49
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid mode: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 16
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v4/content/FileProvider;->d:Landroid/support/v4/content/a;
invoke-interface {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/net/Uri;)Ljava/io/File;
move-result-object v4
if-nez p2, :cond_b
sget-object p2, Landroid/support/v4/content/FileProvider;->a:[Ljava/lang/String;
:cond_b
array-length v0, p2
new-array v5, v0, [Ljava/lang/String;
array-length v0, p2
new-array v6, v0, [Ljava/lang/Object;
array-length v7, p2
move v2, v3
move v1, v3
:goto_14
if-ge v2, v7, :cond_4a
aget-object v0, p2, v2
const-string v8, "_display_name"
invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_31
const-string v0, "_display_name"
aput-object v0, v5, v1
add-int/lit8 v0, v1, 0x1
invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v1
:goto_2c
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v0
goto :goto_14
:cond_31
const-string v8, "_size"
invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5e
const-string v0, "_size"
aput-object v0, v5, v1
add-int/lit8 v0, v1, 0x1
invoke-virtual {v4}, Ljava/io/File;->length()J
move-result-wide v8
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v6, v1
goto :goto_2c
:cond_4a
new-array v0, v1, [Ljava/lang/String;
invoke-static {v5, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
new-array v2, v1, [Ljava/lang/Object;
invoke-static {v6, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
new-instance v1, Landroid/database/MatrixCursor;
const/4 v3, 0x1
invoke-direct {v1, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V
invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
return-object v1
:cond_5e
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