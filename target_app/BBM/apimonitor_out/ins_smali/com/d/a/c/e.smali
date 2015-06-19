.class public final Lcom/d/a/c/e;
.super Ljava/lang/Object;
.source "StorageUtils.java"
.method public static a(Landroid/content/Context;)Ljava/io/File;
.registers 5
const/4 v2, 0x0
const/4 v0, 0x0
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
const-string v3, "mounted"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d
const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"
invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v1
if-nez v1, :cond_31
const/4 v1, 0x1
:goto_17
if-eqz v1, :cond_1d
invoke-static {p0}, Lcom/d/a/c/e;->c(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
:cond_1d
if-nez v0, :cond_23
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
:cond_23
if-nez v0, :cond_30
const-string v0, "Can\'t define system cache directory!"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
:cond_30
return-object v0
:cond_31
move v1, v2
goto :goto_17
.end method
.method public static b(Landroid/content/Context;)Ljava/io/File;
.registers 4
invoke-static {p0}, Lcom/d/a/c/e;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
new-instance v1, Ljava/io/File;
const-string v2, "uil-images"
invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_18
invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
move-result v2
if-nez v2, :cond_18
:goto_17
return-object v0
:cond_18
move-object v0, v1
goto :goto_17
.end method
.method private static c(Landroid/content/Context;)Ljava/io/File;
.registers 6
const/4 v4, 0x0
new-instance v1, Ljava/io/File;
new-instance v0, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
const-string v3, "Android"
invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-string v2, "data"
invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
new-instance v2, Ljava/io/File;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const-string v1, "cache"
invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_37
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_38
const-string v0, "Unable to create external cache directory"
new-array v1, v4, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V
const/4 v0, 0x0
:goto_37
:cond_37
return-object v0
:cond_38
:try_start_38
new-instance v1, Ljava/io/File;
const-string v2, ".nomedia"
invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
:try_end_42
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_43
goto :goto_37
:catch_43
move-exception v1
const-string v1, "Can\'t create \".nomedia\" file in application external cache directory"
new-array v2, v4, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/d/a/c/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_37
.end method