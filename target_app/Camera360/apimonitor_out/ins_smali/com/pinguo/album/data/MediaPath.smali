.class public Lcom/pinguo/album/data/MediaPath;
.super Ljava/lang/Object;
.source "MediaPath.java"
.field private static final TAG:Ljava/lang/String; = "Path"
.field private final mIdentity:Ljava/lang/String;
.field private mObject:Ljava/lang/ref/WeakReference;
.field private mOptionIdentity:Ljava/lang/String;
.field private final mPrefix:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/data/MediaPath;->mPrefix:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/album/data/MediaPath;->mIdentity:Ljava/lang/String;
return-void
.end method
.method public static getTypeFromString(Ljava/lang/String;)I
.registers 2
const-string/jumbo v0, "all"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
const/4 v0, 0x6
:goto_a
return v0
:cond_b
const-string/jumbo v0, "image"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x2
goto :goto_a
:cond_16
const-string/jumbo v0, "video"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
const/4 v0, 0x4
goto :goto_a
:cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getIdentity()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/MediaPath;->mIdentity:Ljava/lang/String;
return-object v0
.end method
.method public getMediaType()I
.registers 6
const/4 v4, 0x2
const-string/jumbo v1, "Path"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, " mPrefix:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/album/data/MediaPath;->mPrefix:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/album/data/MediaPath;->mPrefix:Ljava/lang/String;
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v1, v0
if-ge v1, v4, :cond_2f
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-virtual {p0}, Lcom/pinguo/album/data/MediaPath;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2f
const-string/jumbo v1, "Path"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, " name[1]:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-object v3, v0, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
aget-object v1, v0, v4
invoke-static {v1}, Lcom/pinguo/album/data/MediaPath;->getTypeFromString(Ljava/lang/String;)I
move-result v1
return v1
.end method
.method public getObject()Lcom/pinguo/album/data/MediaObject;
.registers 3
const-class v1, Lcom/pinguo/album/data/MediaPath;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/album/data/MediaPath;->mObject:Ljava/lang/ref/WeakReference;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_8
monitor-exit v1
return-object v0
:cond_a
iget-object v0, p0, Lcom/pinguo/album/data/MediaPath;->mObject:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/data/MediaObject;
goto :goto_8
:catchall_13
move-exception v0
monitor-exit v1
:try_end_15
.catchall {:try_start_3 .. :try_end_15} :catchall_13
throw v0
.end method
.method public getOptionIdentity()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/MediaPath;->mOptionIdentity:Ljava/lang/String;
return-object v0
.end method
.method public getPrefix()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/MediaPath;->mPrefix:Ljava/lang/String;
return-object v0
.end method
.method public setObject(Lcom/pinguo/album/data/MediaObject;)V
.registers 4
const-class v1, Lcom/pinguo/album/data/MediaPath;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/album/data/MediaPath;->mObject:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/album/data/MediaPath;->mObject:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1c
const/4 v0, 0x0
:goto_10
invoke-static {v0}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/pinguo/album/data/MediaPath;->mObject:Ljava/lang/ref/WeakReference;
monitor-exit v1
return-void
:cond_1c
const/4 v0, 0x1
goto :goto_10
:catchall_1e
move-exception v0
monitor-exit v1
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_1e
throw v0
.end method
.method public setOptionIdentity(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/data/MediaPath;->mOptionIdentity:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
const-class v2, Lcom/pinguo/album/data/MediaPath;
monitor-enter v2
:try_start_3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "Path Prefix:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/album/data/MediaPath;->mPrefix:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v1, "Path Identity:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lcom/pinguo/album/data/MediaPath;->mIdentity:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
monitor-exit v2
return-object v1
:catchall_26
move-exception v1
monitor-exit v2
:try_end_28
.catchall {:try_start_3 .. :try_end_28} :catchall_26
throw v1
.end method