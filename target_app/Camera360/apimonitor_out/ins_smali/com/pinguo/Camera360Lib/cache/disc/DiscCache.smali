.class public Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
.super Ljava/lang/Object;
.source "DiscCache.java"
.field private static final ERROR_INIT_CONFIG_WITH_NULL:Ljava/lang/String; = "AsyncEngine configuration can not be initialized with null"
.field private static final ERROR_NOT_INIT:Ljava/lang/String; = "AsyncEngine must be init with configuration before using"
.field static final LOG_DESTROY:Ljava/lang/String; = "Destroy AsyncEngine"
.field static final LOG_INIT_CONFIG:Ljava/lang/String; = "Initialize AsyncEngine with configuration"
.field private static final TAG:Ljava/lang/String; = null
.field private static final WARNING_RE_INIT_CONFIG:Ljava/lang/String; = "Try to initialize AsyncEngine which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."
.field private static volatile instance:Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
.field private configuration:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;
.field private discCacheAware:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheAware;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->TAG:Ljava/lang/String;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance()Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
.registers 2
sget-object v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->instance:Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
if-nez v0, :cond_13
const-class v1, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
monitor-enter v1
:try_start_7
sget-object v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->instance:Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
if-nez v0, :cond_12
new-instance v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
invoke-direct {v0}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;-><init>()V
sput-object v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->instance:Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
:cond_12
monitor-exit v1
:cond_13
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_16
sget-object v0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->instance:Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;
return-object v0
:catchall_16
move-exception v0
:try_start_17
monitor-exit v1
:try_end_18
.catchall {:try_start_17 .. :try_end_18} :catchall_16
throw v0
.end method
.method public destroy()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->configuration:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;
iput-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->discCacheAware:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheAware;
return-void
.end method
.method public getDiscCache()Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheAware;
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->discCacheAware:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheAware;
return-object v0
.end method
.method public init(Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;)V
.registers 6
if-nez p1, :cond_b
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string/jumbo v3, "AsyncEngine configuration can not be initialized with null"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_b
iget-object v2, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->configuration:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;
if-nez v2, :cond_4d
sget-object v2, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Initialize AsyncEngine with configuration"
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->configuration:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;
invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->getCacheDir()Ljava/io/File;
move-result-object v0
invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->getFileNameGenerator()Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;
move-result-object v1
invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->getDiscCacheSize()I
move-result v2
if-lez v2, :cond_33
new-instance v2, Lcom/pinguo/Camera360Lib/cache/disc/impl/TotalSizeLimitedDiscCache;
invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->getDiscCacheSize()I
move-result v3
invoke-direct {v2, v0, v1, v3}, Lcom/pinguo/Camera360Lib/cache/disc/impl/TotalSizeLimitedDiscCache;-><init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;I)V
iput-object v2, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->discCacheAware:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheAware;
:goto_32
return-void
:cond_33
invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->getDiscCacheFileCount()I
move-result v2
if-lez v2, :cond_45
new-instance v2, Lcom/pinguo/Camera360Lib/cache/disc/impl/FileCountLimitedDiscCache;
invoke-virtual {p1}, Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;->getDiscCacheFileCount()I
move-result v3
invoke-direct {v2, v0, v1, v3}, Lcom/pinguo/Camera360Lib/cache/disc/impl/FileCountLimitedDiscCache;-><init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;I)V
iput-object v2, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->discCacheAware:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheAware;
goto :goto_32
:cond_45
new-instance v2, Lcom/pinguo/Camera360Lib/cache/disc/impl/UnlimitedDiscCache;
invoke-direct {v2, v0, v1}, Lcom/pinguo/Camera360Lib/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Lcom/pinguo/Camera360Lib/cache/disc/naming/FileNameGenerator;)V
iput-object v2, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->discCacheAware:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheAware;
goto :goto_32
:cond_4d
sget-object v2, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Try to initialize AsyncEngine which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_32
.end method
.method public isInited()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/Camera360Lib/cache/disc/DiscCache;->configuration:Lcom/pinguo/Camera360Lib/cache/disc/DiscCacheConfiguration;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method