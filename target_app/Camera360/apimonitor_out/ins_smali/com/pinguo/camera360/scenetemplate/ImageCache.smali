.class public Lcom/pinguo/camera360/scenetemplate/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.registers 6
const-string/jumbo v1, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_32
invoke-static {p0}, Lcom/pinguo/camera360/scenetemplate/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
:goto_15
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
return-object v1
:cond_32
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
goto :goto_15
.end method
.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
.registers 5
invoke-static {}, Lcom/pinguo/lib/util/BuildVersionUtils;->hasFroyo()Z
move-result v2
if-eqz v2, :cond_d
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_d
:goto_c
return-object v1
:cond_d
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "/Android/data/"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "/cache/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_c
.end method