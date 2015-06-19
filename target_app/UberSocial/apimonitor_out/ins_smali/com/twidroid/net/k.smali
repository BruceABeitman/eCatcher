.class public Lcom/twidroid/net/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected static final a:Ljava/lang/String; = "lastFileCacheCleanupTime"
.field public static b:Ljava/lang/String; = null
.field private static final c:I = 0x2
.field private static d:Landroid/app/Application; = null
.field private static e:Ljava/util/HashMap; = null
.field private static f:Ljava/util/Map; = null
.field private static g:Ljava/util/concurrent/Executor; = null
.field private static final h:J = 0x1b7740L
.field private static final i:J = 0xea60L
.field private static final j:Ljava/lang/String; = "WaaxImageCache"
.field private static k:J = 0x0L
.field private static final l:J = 0x5265c00L
.field private static m:J
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/net/k;->e:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
sput-object v0, Lcom/twidroid/net/k;->f:Ljava/util/Map;
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v0
sput-object v0, Lcom/twidroid/net/k;->g:Ljava/util/concurrent/Executor;
const-wide/16 v0, -0x1
sput-wide v0, Lcom/twidroid/net/k;->k:J
const-wide/16 v0, 0x0
sput-wide v0, Lcom/twidroid/net/k;->m:J
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/twidroid/net/k;->b:Ljava/lang/String;
return-object v0
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const-string v0, "FALLBACK_FILE"
if-nez p0, :cond_c
const-string v1, "WaaxImageCache"
const-string v2, "imagePath is null, this is abnormal."
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_b
return-object v0
:cond_c
invoke-static {p0}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_b
.end method
.method public static a(Landroid/app/Application;)V
.registers 8
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Context must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
sput-object p0, Lcom/twidroid/net/k;->d:Landroid/app/Application;
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string v1, "removed"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_87
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/data/twidroyd/facebook/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2f
sput-object v0, Lcom/twidroid/net/k;->b:Ljava/lang/String;
const-string v0, "WaaxImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Cache dir: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/twidroid/net/k;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
const-string v3, "lastFileCacheCleanupTime"
const-wide/16 v4, 0x0
invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
sput-wide v3, Lcom/twidroid/net/k;->m:J
sget-wide v3, Lcom/twidroid/net/k;->m:J
sub-long v3, v1, v3
const-wide/32 v5, 0x5265c00
cmp-long v3, v3, v5
if-lez v3, :cond_a3
const-string v3, "WaaxImageCache"
const-string v4, "Cleaning cache..."
invoke-static {v3, v4}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/twidroid/net/k;->a(Landroid/content/Context;)V
const-string v3, "WaaxImageCache"
const-string v4, "cleanup done!"
invoke-static {v3, v4}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v3, "lastFileCacheCleanupTime"
invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:goto_86
return-void
:cond_87
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2f
:cond_a3
const-string v0, "WaaxImageCache"
const-string v1, "No need to clean cache for now."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_86
.end method
.method private static a(Landroid/content/Context;)V
.registers 3
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_f
invoke-static {v0}, Lcom/twidroid/net/k;->a(Ljava/io/File;)Z
:goto_f
:cond_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
goto :goto_f
.end method
.method public static a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V
.registers 12
const/4 v1, 0x0
if-eqz p1, :cond_4d
invoke-virtual {p1}, Lcom/twidroid/net/j;->a()Z
move-result v0
if-eqz v0, :cond_4d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "_small"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sget-wide v4, Lcom/twidroid/net/k;->k:J
sub-long/2addr v2, v4
const-wide/32 v4, 0xea60
cmp-long v2, v2, v4
if-lez v2, :cond_35
sget-object v2, Lcom/twidroid/net/k;->e:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sput-wide v2, Lcom/twidroid/net/k;->k:J
:cond_35
sget-object v2, Lcom/twidroid/net/k;->f:Ljava/util/Map;
monitor-enter v2
:try_start_38
sget-object v3, Lcom/twidroid/net/k;->f:Ljava/util/Map;
invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4f
sget-object v1, Lcom/twidroid/net/k;->f:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashSet;
invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
monitor-exit v2
:goto_4c
return-void
:cond_4d
move-object v0, p0
goto :goto_1c
:cond_4f
monitor-exit v2
:try_end_50
.catchall {:try_start_38 .. :try_end_50} :catchall_9a
invoke-static {v0}, Lcom/twidroid/net/k;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
sget-object v5, Lcom/twidroid/net/k;->b:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_d2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-virtual {v3}, Ljava/io/File;->lastModified()J
move-result-wide v6
sub-long/2addr v4, v6
const-wide/32 v6, 0x1b7740
cmp-long v4, v4, v6
if-gez v4, :cond_cd
sget-object v2, Lcom/twidroid/net/k;->e:Ljava/util/HashMap;
invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9d
sget-object v1, Lcom/twidroid/net/k;->e:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-interface {p2, v0, v1, p0}, Lcom/twidroid/net/l;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4c
:catchall_9a
move-exception v0
:try_start_9b
monitor-exit v2
:try_end_9c
.catchall {:try_start_9b .. :try_end_9c} :catchall_9a
throw v0
:cond_9d
const/4 v2, 0x0
move v8, v1
move-object v1, v2
move v2, v8
:goto_a1
const/4 v4, 0x2
if-ge v2, v4, :cond_f3
:try_start_a4
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
sget-object v4, Lcom/twidroid/net/k;->e:Ljava/util/HashMap;
invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_b1
.catch Ljava/lang/OutOfMemoryError; {:try_start_a4 .. :try_end_b1} :catch_ba
move-object v0, v1
:goto_b2
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-interface {p2, v0, v1, p0}, Lcom/twidroid/net/l;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4c
:catch_ba
move-exception v4
const-string v4, "WaaxImageCache"
const-string v5, "Out of memory error occured. Clearing cache and retrying..."
invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
sget-object v4, Lcom/twidroid/net/k;->e:Ljava/util/HashMap;
invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
invoke-static {}, Ljava/lang/System;->gc()V
add-int/lit8 v2, v2, 0x1
goto :goto_a1
:cond_cd
sget-object v3, Lcom/twidroid/net/k;->e:Ljava/util/HashMap;
invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_d2
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
sget-object v4, Lcom/twidroid/net/k;->f:Ljava/util/Map;
invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v3, Lcom/twidroid/net/d/e;
new-instance v4, Lcom/twidroid/net/k$1;
invoke-direct {v4, v0, p1, v2}, Lcom/twidroid/net/k$1;-><init>(Ljava/lang/String;Lcom/twidroid/net/j;Ljava/lang/String;)V
invoke-direct {v3, v4}, Lcom/twidroid/net/d/e;-><init>(Lcom/twidroid/net/d/f;)V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
aput-object p0, v0, v1
invoke-virtual {v3, v0}, Lcom/twidroid/net/d/e;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto/16 :goto_4c
:cond_f3
move-object v0, v1
goto :goto_b2
.end method
.method private static a(Ljava/io/File;)Z
.registers 6
const/4 v1, 0x0
if-eqz p0, :cond_22
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_22
invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;
move-result-object v2
move v0, v1
:goto_e
array-length v3, v2
if-ge v0, v3, :cond_22
new-instance v3, Ljava/io/File;
aget-object v4, v2, v0
invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v3}, Lcom/twidroid/net/k;->a(Ljava/io/File;)Z
move-result v3
if-nez v3, :cond_1f
:goto_1e
return v1
:cond_1f
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_22
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v1
goto :goto_1e
.end method
.method static synthetic b()Ljava/util/Map;
.registers 1
sget-object v0, Lcom/twidroid/net/k;->f:Ljava/util/Map;
return-object v0
.end method
.method static synthetic c()Ljava/util/HashMap;
.registers 1
sget-object v0, Lcom/twidroid/net/k;->e:Ljava/util/HashMap;
return-object v0
.end method