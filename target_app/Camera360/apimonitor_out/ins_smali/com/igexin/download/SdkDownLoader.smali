.class public Lcom/igexin/download/SdkDownLoader;
.super Ljava/lang/Object;
.field static a:I
.field static b:Ljava/lang/String;
.field static c:Lcom/igexin/download/SdkDownLoader;
.field  d:Landroid/os/Handler;
.field  e:[Ljava/lang/String;
.field private f:Landroid/content/Context;
.field private g:Ljava/util/List;
.field private h:Ljava/lang/Object;
.field public updateData:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x3
sput v0, Lcom/igexin/download/SdkDownLoader;->a:I
const-string/jumbo v0, "/libs/tmp"
sput-object v0, Lcom/igexin/download/SdkDownLoader;->b:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/igexin/download/SdkDownLoader;->g:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/igexin/download/SdkDownLoader;->h:Ljava/lang/Object;
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "_id"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "_data"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "hint"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "status"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string/jumbo v2, "total_bytes"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string/jumbo v2, "current_bytes"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/igexin/download/SdkDownLoader;->e:[Ljava/lang/String;
iput-object p1, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
new-instance v0, Lcom/igexin/download/j;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/igexin/download/j;-><init>(Lcom/igexin/download/SdkDownLoader;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/igexin/download/SdkDownLoader;->d:Landroid/os/Handler;
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/igexin/download/DownloadService;
invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method
.method private a(Landroid/content/ContentValues;)I
.registers 6
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string/jumbo v1, "data_10"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
move-result-object v0
if-eqz v0, :cond_2c
invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
:goto_2b
return v0
:cond_2c
const/4 v0, -0x1
goto :goto_2b
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
.registers 8
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
if-eqz p3, :cond_a
invoke-virtual {v0, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V
:cond_a
const-string/jumbo v1, "destination"
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
if-eqz p1, :cond_1d
const-string/jumbo v1, "uri"
invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_1d
if-eqz p2, :cond_2f
const-string/jumbo v1, "\\*"
const-string/jumbo v2, ""
invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "hint"
invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_2f
if-eqz p4, :cond_37
const-string/jumbo v1, "description"
invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_37
invoke-direct {p0, v0}, Lcom/igexin/download/SdkDownLoader;->a(Landroid/content/ContentValues;)I
move-result v0
return v0
.end method
.method static synthetic a(Lcom/igexin/download/SdkDownLoader;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->h:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic b(Lcom/igexin/download/SdkDownLoader;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->g:Ljava/util/List;
return-object v0
.end method
.method public static getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;
.registers 2
sget-object v0, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/download/SdkDownLoader;
invoke-direct {v0, p0}, Lcom/igexin/download/SdkDownLoader;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;
:cond_b
sget-object v0, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;
return-object v0
.end method
.method  a(Ljava/lang/String;)Lcom/igexin/download/IDownloadCallback;
.registers 6
const/4 v1, 0x0
if-nez p1, :cond_5
move-object v0, v1
:goto_4
return-object v0
:cond_5
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->g:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/IDownloadCallback;
invoke-interface {v0}, Lcom/igexin/download/IDownloadCallback;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_b
goto :goto_4
:cond_22
move-object v0, v1
goto :goto_4
.end method
.method protected a(Ljava/util/Collection;)V
.registers 8
iget-object v2, p0, Lcom/igexin/download/SdkDownLoader;->h:Ljava/lang/Object;
monitor-enter v2
if-eqz p1, :cond_60
:try_start_5
invoke-interface {p1}, Ljava/util/Collection;->size()I
move-result v0
if-lez v0, :cond_62
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_14
:goto_14
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5e
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/DownloadInfo;
iget-object v1, p0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;
iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4e
iget-object v1, p0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;
iget v5, v0, Lcom/igexin/download/DownloadInfo;->mId:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/igexin/download/DownloadInfo;
if-eqz v1, :cond_14
invoke-virtual {v1, v0}, Lcom/igexin/download/DownloadInfo;->copyFrom(Lcom/igexin/download/DownloadInfo;)V
iget v0, v1, Lcom/igexin/download/DownloadInfo;->mId:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_14
:catchall_4b
move-exception v0
monitor-exit v2
:try_end_4d
.catchall {:try_start_5 .. :try_end_4d} :catchall_4b
throw v0
:try_start_4e
:cond_4e
invoke-virtual {v0}, Lcom/igexin/download/DownloadInfo;->clone()Lcom/igexin/download/DownloadInfo;
move-result-object v1
if-eqz v1, :cond_14
iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_14
:cond_5e
iput-object v3, p0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;
:cond_60
:goto_60
monitor-exit v2
return-void
:cond_62
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->updateData:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
:try_end_67
.catchall {:try_start_4e .. :try_end_67} :catchall_4b
goto :goto_60
.end method
.method public deleteTask(I)Z
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
int-to-long v2, p1
invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
const/4 v0, 0x1
return v0
.end method
.method public deleteTask([I)Z
.registers 6
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
array-length v0, p1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
:goto_a
array-length v3, v2
if-ge v0, v3, :cond_18
aget v3, p1, v0
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_18
sget-object v0, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
const-string/jumbo v3, "_id=?"
invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
const/4 v0, 0x1
return v0
.end method
.method public getCallback(Ljava/lang/String;)Lcom/igexin/download/IDownloadCallback;
.registers 6
const/4 v1, 0x0
if-nez p1, :cond_5
move-object v0, v1
:goto_4
return-object v0
:cond_5
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->g:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/IDownloadCallback;
invoke-interface {v0}, Lcom/igexin/download/IDownloadCallback;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_b
goto :goto_4
:cond_22
move-object v0, v1
goto :goto_4
.end method
.method public isRegistered(Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->g:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/IDownloadCallback;
invoke-interface {v0}, Lcom/igexin/download/IDownloadCallback;->getName()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public newTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
.registers 9
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
if-eqz p3, :cond_d
const-string/jumbo v1, "data_6"
invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_d
if-eqz p4, :cond_18
const-string/jumbo v1, "data_9"
const-string/jumbo v2, "wifi"
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_18
const-string/jumbo v1, "data_8"
invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
invoke-direct {p0, p1, p2, v0, v1}, Lcom/igexin/download/SdkDownLoader;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public pauseAllTask()Z
.registers 10
const/16 v8, 0xc1
const/4 v7, 0x1
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "control"
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v1, "status"
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
iget-object v1, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
const-string/jumbo v3, "status=? OR status=? OR(status=? AND control<>?)"
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
const/16 v6, 0xc0
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
const/16 v5, 0xbe
invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
aput-object v5, v4, v7
const/4 v5, 0x2
invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x3
invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return v7
.end method
.method public pauseTask(I)Z
.registers 9
const/4 v6, 0x0
const/4 v5, 0x1
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "control"
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
iget-object v1, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
int-to-long v3, p1
invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return v5
.end method
.method public queryTask(Ljava/lang/String;)Z
.registers 10
const/4 v2, 0x0
const/4 v6, 0x1
const/4 v7, 0x0
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
const-string/jumbo v3, "data_8 = ? "
new-array v4, v6, [Ljava/lang/String;
aput-object p1, v4, v7
move-object v5, v2
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_26
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v1
invoke-interface {v0}, Landroid/database/Cursor;->close()V
if-lez v1, :cond_24
move v0, v6
:goto_23
return v0
:cond_24
move v0, v7
goto :goto_23
:cond_26
move v0, v7
goto :goto_23
.end method
.method public refreshList()V
.registers 3
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, 0x2
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/igexin/download/SdkDownLoader;->d:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public registerDownloadCallback(Lcom/igexin/download/IDownloadCallback;)V
.registers 3
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->g:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->g:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_d
return-void
.end method
.method public setDownloadDir(Ljava/lang/String;)V
.registers 2
sput-object p1, Lcom/igexin/download/SdkDownLoader;->b:Ljava/lang/String;
return-void
.end method
.method public startTask(I)Z
.registers 8
const/4 v5, 0x0
const/4 v3, 0x0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "control"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v1, "numfailed"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
iget-object v1, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
int-to-long v3, p1
invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
const/4 v0, 0x1
return v0
.end method
.method public unregisterDownloadCallback(Lcom/igexin/download/IDownloadCallback;)V
.registers 3
iget-object v0, p0, Lcom/igexin/download/SdkDownLoader;->g:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public updateTask(ILjava/lang/String;Ljava/lang/String;)Z
.registers 10
const/4 v5, 0x0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/igexin/download/SdkDownLoader;->f:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
int-to-long v3, p1
invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
const/4 v0, 0x1
return v0
.end method