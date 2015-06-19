.class public final Lcom/flurry/sdk/fa;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/fa;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Z)Ljava/io/File;
.registers 5
const/4 v0, 0x0
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v1
invoke-virtual {v1}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v1
if-eqz p0, :cond_29
const-string v2, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_29
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x13
if-ge v2, v3, :cond_25
const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"
invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v2
if-nez v2, :cond_29
:cond_25
invoke-virtual {v1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
:cond_29
if-nez v0, :cond_2f
invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v0
:cond_2f
return-object v0
.end method
.method public static a(Ljava/io/File;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x4
if-nez p0, :cond_b
sget-object v0, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
const-string v1, "No persistent file specified."
invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:goto_a
return-void
:cond_b
if-nez p1, :cond_2d
sget-object v0, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No data specified; deleting persistent file: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/io/File;->delete()Z
goto :goto_a
:cond_2d
sget-object v0, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Writing persistent data: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
:try_start_4a
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_4f
.catchall {:try_start_4a .. :try_end_4f} :catchall_68
.catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4f} :catch_5a
:try_start_4f
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
:try_end_56
.catchall {:try_start_4f .. :try_end_56} :catchall_6e
.catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_56} :catch_70
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
goto :goto_a
:catch_5a
move-exception v0
move-object v1, v2
:goto_5c
const/4 v2, 0x6
:try_start_5d
sget-object v3, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
const-string v4, "Error writing persistent file"
invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_64
.catchall {:try_start_5d .. :try_end_64} :catchall_6e
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
goto :goto_a
:catchall_68
move-exception v0
move-object v1, v2
:goto_6a
invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
:catchall_6e
move-exception v0
goto :goto_6a
:catch_70
move-exception v0
goto :goto_5c
.end method
.method public static a(Ljava/io/File;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object v2
if-eqz v2, :cond_4
invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v2
if-nez v2, :cond_13
move v0, v1
goto :goto_4
:cond_13
invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
move-result v3
if-nez v3, :cond_39
invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
move-result v3
if-nez v3, :cond_39
const/4 v1, 0x6
sget-object v3, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Unable to create persistent dir: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v3, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_4
:cond_39
move v0, v1
goto :goto_4
.end method
.method public static b(Z)Ljava/io/File;
.registers 5
invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;
move-result-object v1
const/4 v0, 0x0
if-eqz p0, :cond_29
const-string v2, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_29
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x13
if-ge v2, v3, :cond_25
const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"
invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v2
if-nez v2, :cond_29
:cond_25
invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v0
:cond_29
if-nez v0, :cond_2f
invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
:cond_2f
return-object v0
.end method
.method public static b(Ljava/io/File;)Z
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
invoke-static {v3}, Lcom/flurry/sdk/fa;->b(Ljava/io/File;)Z
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
.method public static c(Ljava/io/File;)Ljava/lang/String;
.registers 8
const/4 v4, 0x4
const/4 v0, 0x0
if-eqz p0, :cond_a
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_12
:cond_a
sget-object v1, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
const-string v2, "Persistent file doesn\'t exist."
invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:cond_11
:goto_11
return-object v0
:cond_12
sget-object v1, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Loading persistent data: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
:try_start_2e
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_33
.catchall {:try_start_2e .. :try_end_33} :catchall_64
.catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_6d
:try_start_33
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const/16 v3, 0x400
new-array v3, v3, [B
:goto_3c
invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I
move-result v4
if-lez v4, :cond_60
new-instance v5, Ljava/lang/String;
const/4 v6, 0x0
invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_4b
.catchall {:try_start_33 .. :try_end_4b} :catchall_6b
.catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_4b} :catch_4c
goto :goto_3c
:catch_4c
move-exception v1
:goto_4d
const/4 v3, 0x6
:try_start_4e
sget-object v4, Lcom/flurry/sdk/fa;->a:Ljava/lang/String;
const-string v5, "Error when loading persistent file"
invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_55
.catchall {:try_start_4e .. :try_end_55} :catchall_6b
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
move-object v1, v0
:goto_59
if-eqz v1, :cond_11
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_11
:cond_60
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
goto :goto_59
:catchall_64
move-exception v1
move-object v2, v0
move-object v0, v1
:goto_67
invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
throw v0
:catchall_6b
move-exception v0
goto :goto_67
:catch_6d
move-exception v1
move-object v2, v0
goto :goto_4d
.end method