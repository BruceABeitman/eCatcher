.class public final Lcom/instagram/common/e/a/d;
.super Ljava/lang/Object;
.source "CacheUtil.java"
.method public static a(Ljava/io/File;)J
.registers 10
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
:cond_9
new-instance v0, Landroid/os/StatFs;
invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I
move-result v3
int-to-long v3, v3
invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v0
int-to-long v5, v0
mul-long/2addr v3, v1
mul-long/2addr v5, v1
long-to-float v0, v3
const v1, 0x3dcccccd
mul-float/2addr v0, v1
float-to-long v0, v0
const-wide/32 v2, 0x6400000
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
cmp-long v2, v0, v5
if-lez v2, :cond_46
invoke-static {p0}, Lcom/instagram/common/e/a/d;->b(Ljava/io/File;)J
move-result-wide v2
cmp-long v4, v0, v2
if-lez v4, :cond_46
sub-long/2addr v0, v2
const-wide/16 v7, 0x2
div-long v4, v5, v7
invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J
move-result-wide v0
add-long/2addr v0, v2
:cond_46
return-wide v0
.end method
.method private static a(Landroid/content/Context;)Ljava/io/File;
.registers 2
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
.registers 5
if-eqz p2, :cond_19
invoke-static {p0}, Lcom/instagram/common/e/a/d;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
:goto_6
if-nez v1, :cond_f
if-eqz p2, :cond_1e
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
:goto_e
move-object v1, v0
:cond_f
if-nez v1, :cond_23
new-instance v0, Ljava/io/IOException;
const-string v1, "Unable to open storage"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
goto :goto_6
:cond_1e
invoke-static {p0}, Lcom/instagram/common/e/a/d;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
goto :goto_e
:cond_23
if-eqz p1, :cond_2b
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:goto_2a
return-object v0
:cond_2b
move-object v0, v1
goto :goto_2a
.end method
.method private static b(Ljava/io/File;)J
.registers 8
const-wide/16 v0, 0x0
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_20
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
array-length v4, v3
const/4 v2, 0x0
:goto_e
if-ge v2, v4, :cond_20
aget-object v5, v3, v2
invoke-virtual {v5}, Ljava/io/File;->isFile()Z
move-result v6
if-eqz v6, :cond_1d
invoke-virtual {v5}, Ljava/io/File;->length()J
move-result-wide v5
add-long/2addr v0, v5
:cond_1d
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_20
return-wide v0
.end method