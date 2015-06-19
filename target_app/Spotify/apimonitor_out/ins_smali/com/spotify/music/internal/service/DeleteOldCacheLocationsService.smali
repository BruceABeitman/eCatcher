.class public Lcom/spotify/music/internal/service/DeleteOldCacheLocationsService;
.super Landroid/app/IntentService;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/spotify/music/internal/service/DeleteOldCacheLocationsService;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/music/internal/service/DeleteOldCacheLocationsService;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.spotify.music.DELETE_OLD_CACHE_LOCATIONS"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method private static a(Ljava/io/File;)V
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_2d
invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2b
move v0, v2
:goto_17
if-nez v0, :cond_2d
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
if-eqz v3, :cond_2d
array-length v4, v3
move v0, v1
:goto_21
if-ge v0, v4, :cond_2d
aget-object v5, v3, v0
invoke-static {v5}, Lcom/spotify/music/internal/service/DeleteOldCacheLocationsService;->a(Ljava/io/File;)V
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_2b
move v0, v1
goto :goto_17
:cond_2d
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_40
const-string v0, "Failed to delete %s"
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v1
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_40
return-void
.end method
.method protected onHandleIntent(Landroid/content/Intent;)V
.registers 6
if-eqz p1, :cond_59
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "com.spotify.music.DELETE_OLD_CACHE_LOCATIONS"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_59
invoke-virtual {p0}, Lcom/spotify/music/internal/service/DeleteOldCacheLocationsService;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
:try_start_12
const-string v1, "com.spotify.mobile.android.ui"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_18
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_18} :catch_56
move-result-object v0
:goto_19
if-nez v0, :cond_59
new-instance v0, Lcom/spotify/mobile/android/b/b;
invoke-direct {v0}, Lcom/spotify/mobile/android/b/b;-><init>()V
invoke-static {}, Lcom/spotify/mobile/android/b/b;->a()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_28
:goto_28
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_59
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_34
new-instance v2, Ljava/io/File;
const-string v3, "Android/data/com.spotify.mobile.android.ui"
invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_28
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v2
if-eqz v2, :cond_28
invoke-static {v0}, Lcom/spotify/music/internal/service/DeleteOldCacheLocationsService;->a(Ljava/io/File;)V
:try_end_4e
.catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4e} :catch_4f
goto :goto_28
:catch_4f
move-exception v0
const-string v2, "Error deleting old cache directory."
invoke-static {v2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_28
:catch_56
move-exception v0
const/4 v0, 0x0
goto :goto_19
:cond_59
return-void
.end method