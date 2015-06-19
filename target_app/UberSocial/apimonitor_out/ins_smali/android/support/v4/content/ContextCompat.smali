.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"
.field private static final DIR_CACHE:Ljava/lang/String; = "cache"
.field private static final DIR_DATA:Ljava/lang/String; = "data"
.field private static final DIR_FILES:Ljava/lang/String; = "files"
.field private static final DIR_OBB:Ljava/lang/String; = "obb"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
.registers 7
array-length v3, p1
const/4 v0, 0x0
move v2, v0
move-object v1, p0
:goto_4
if-ge v2, v3, :cond_1c
aget-object v4, p1, v2
if-nez v1, :cond_14
new-instance v0, Ljava/io/File;
invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:goto_f
add-int/lit8 v1, v2, 0x1
move v2, v1
move-object v1, v0
goto :goto_4
:cond_14
if-eqz v4, :cond_1d
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
goto :goto_f
:cond_1c
return-object v1
:cond_1d
move-object v0, v1
goto :goto_f
.end method
.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_d
invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/16 v1, 0x8
if-lt v0, v1, :cond_1b
invoke-static {p0}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
:goto_15
new-array v1, v5, [Ljava/io/File;
aput-object v0, v1, v4
move-object v0, v1
goto :goto_c
:cond_1b
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/String;
const-string v2, "Android"
aput-object v2, v1, v4
const-string v2, "data"
aput-object v2, v1, v5
const/4 v2, 0x2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "cache"
aput-object v3, v1, v2
invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v0
goto :goto_15
.end method
.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_d
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/16 v1, 0x8
if-lt v0, v1, :cond_1b
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
:goto_15
new-array v1, v5, [Ljava/io/File;
aput-object v0, v1, v4
move-object v0, v1
goto :goto_c
:cond_1b
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/String;
const-string v2, "Android"
aput-object v2, v1, v4
const-string v2, "data"
aput-object v2, v1, v5
const/4 v2, 0x2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "files"
aput-object v3, v1, v2
const/4 v2, 0x4
aput-object p1, v1, v2
invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v0
goto :goto_15
.end method
.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_d
invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/16 v1, 0xb
if-lt v0, v1, :cond_1b
invoke-static {p0}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
:goto_15
new-array v1, v5, [Ljava/io/File;
aput-object v0, v1, v4
move-object v0, v1
goto :goto_c
:cond_1b
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/String;
const-string v2, "Android"
aput-object v2, v1, v4
const-string v2, "obb"
aput-object v2, v1, v5
const/4 v2, 0x2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v0
goto :goto_15
.end method
.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
move-result v0
return v0
.end method
.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
.registers 6
const/4 v0, 0x1
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x10
if-lt v1, v2, :cond_b
invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V
:goto_a
return v0
:cond_b
const/16 v2, 0xb
if-lt v1, v2, :cond_13
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V
goto :goto_a
:cond_13
const/4 v0, 0x0
goto :goto_a
.end method