.class public final Lcom/lenovo/anyshare/sdk/internal/k;
.super Ljava/lang/Object;
.source "RemoteFileStore.java"
.field private static a:Lcom/lenovo/channel/base/IRemoteFileStore;
.method public static declared-synchronized a()Ljava/io/File;
.registers 2
const-class v1, Lcom/lenovo/anyshare/sdk/internal/k;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/k;->a:Lcom/lenovo/channel/base/IRemoteFileStore;
invoke-interface {v0}, Lcom/lenovo/channel/base/IRemoteFileStore;->getExternalStorage()Ljava/io/File;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_b
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;
.registers 3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/k;->a:Lcom/lenovo/channel/base/IRemoteFileStore;
invoke-interface {v0, p0, p1}, Lcom/lenovo/channel/base/IRemoteFileStore;->getRemoteItemDir(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;)Ljava/io/File;
.registers 2
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/k;->a:Lcom/lenovo/channel/base/IRemoteFileStore;
invoke-interface {v0, p0}, Lcom/lenovo/channel/base/IRemoteFileStore;->createTempFileName(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;
.registers 4
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/k;->a:Lcom/lenovo/channel/base/IRemoteFileStore;
invoke-interface {v0, p0, p1, p2}, Lcom/lenovo/channel/base/IRemoteFileStore;->getRemoteItemThumbnail(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public static declared-synchronized a(Lcom/lenovo/channel/base/IRemoteFileStore;)V
.registers 3
const-class v1, Lcom/lenovo/anyshare/sdk/internal/k;
monitor-enter v1
:try_start_3
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
sput-object p0, Lcom/lenovo/anyshare/sdk/internal/k;->a:Lcom/lenovo/channel/base/IRemoteFileStore;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a(J)Z
.registers 12
const/4 v8, 0x0
sget-object v9, Lcom/lenovo/anyshare/sdk/internal/k;->a:Lcom/lenovo/channel/base/IRemoteFileStore;
invoke-interface {v9}, Lcom/lenovo/channel/base/IRemoteFileStore;->getExternalStorage()Ljava/io/File;
move-result-object v6
if-nez v6, :cond_a
:cond_9
:goto_9
return v8
:cond_a
new-instance v7, Landroid/os/StatFs;
invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v9
invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I
move-result v9
int-to-long v2, v9
invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v9
int-to-long v4, v9
mul-long v0, v4, v2
cmp-long v9, v0, p0
if-lez v9, :cond_9
const/4 v8, 0x1
goto :goto_9
.end method