.class public Lcom/tencent/stat/a;
.super Ljava/lang/Object;
.field private static b:Lcom/tencent/stat/a;
.field private a:Lcom/tencent/stat/common/StatLogger;
.field private c:Z
.field private d:Z
.field private e:Z
.field private f:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/tencent/stat/a;->b:Lcom/tencent/stat/a;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
iput-object v0, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;
iput-boolean v1, p0, Lcom/tencent/stat/a;->c:Z
iput-boolean v1, p0, Lcom/tencent/stat/a;->d:Z
iput-boolean v1, p0, Lcom/tencent/stat/a;->e:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;
invoke-direct {p0, p1}, Lcom/tencent/stat/a;->b(Landroid/content/Context;)Z
move-result v0
iput-boolean v0, p0, Lcom/tencent/stat/a;->c:Z
invoke-direct {p0, p1}, Lcom/tencent/stat/a;->d(Landroid/content/Context;)Z
move-result v0
iput-boolean v0, p0, Lcom/tencent/stat/a;->d:Z
invoke-direct {p0, p1}, Lcom/tencent/stat/a;->c(Landroid/content/Context;)Z
move-result v0
iput-boolean v0, p0, Lcom/tencent/stat/a;->e:Z
return-void
.end method
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/stat/a;
.registers 3
const-class v1, Lcom/tencent/stat/a;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/tencent/stat/a;->b:Lcom/tencent/stat/a;
if-nez v0, :cond_e
new-instance v0, Lcom/tencent/stat/a;
invoke-direct {v0, p0}, Lcom/tencent/stat/a;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/tencent/stat/a;->b:Lcom/tencent/stat/a;
:cond_e
sget-object v0, Lcom/tencent/stat/a;->b:Lcom/tencent/stat/a;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method private b(Landroid/content/Context;)Z
.registers 4
const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"
invoke-static {p1, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "Check permission failed: android.permission.WRITE_EXTERNAL_STORAGE"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
const/4 v0, 0x0
:goto_12
return v0
:cond_13
const/4 v0, 0x1
goto :goto_12
.end method
.method private c(Landroid/content/Context;)Z
.registers 4
const-string/jumbo v0, "android.permission.WRITE_SETTINGS"
invoke-static {p1, v0}, Lcom/tencent/stat/common/k;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v1, "Check permission failed: android.permission.WRITE_SETTINGS"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
const/4 v0, 0x0
:goto_12
return v0
:cond_13
const/4 v0, 0x1
goto :goto_12
.end method
.method private d(Landroid/content/Context;)Z
.registers 4
invoke-static {}, Lcom/tencent/stat/common/k;->d()I
move-result v0
const/16 v1, 0xe
if-ge v0, v1, :cond_d
invoke-direct {p0, p1}, Lcom/tencent/stat/a;->b(Landroid/content/Context;)Z
move-result v0
:goto_c
return v0
:cond_d
const/4 v0, 0x1
goto :goto_c
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;
invoke-static {v0, p1, p2}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
return v0
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;
invoke-static {v0, p1, p2}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c(Ljava/lang/String;Ljava/lang/String;)Z
.registers 7
const/4 v0, 0x0
iget-boolean v1, p0, Lcom/tencent/stat/a;->c:Z
if-nez v1, :cond_6
:goto_5
return v0
:try_start_6
:cond_6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "Tencent/mta"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/tencent/stat/common/d;->a(Ljava/lang/String;)Ljava/io/File;
new-instance v1, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
const-string/jumbo v3, "Tencent/mta/.mid.txt"
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
if-eqz v1, :cond_64
new-instance v2, Ljava/io/FileWriter;
invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
new-instance v1, Ljava/io/BufferedWriter;
invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
const-string/jumbo v2, "\n"
invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
:cond_64
:try_end_64
.catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_64} :catch_66
const/4 v0, 0x1
goto :goto_5
:catch_66
move-exception v1
iget-object v2, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
goto :goto_5
.end method
.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/tencent/stat/a;->c:Z
if-nez v0, :cond_7
move-object v0, v1
:goto_6
return-object v0
:try_start_7
:cond_7
new-instance v0, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
const-string/jumbo v3, "Tencent/mta/.mid.txt"
invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
if-eqz v0, :cond_4a
invoke-static {v0}, Lcom/tencent/stat/common/d;->a(Ljava/io/File;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_1d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string/jumbo v3, ","
invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v3, v0
const/4 v4, 0x2
if-ne v3, v4, :cond_1d
const/4 v3, 0x0
aget-object v3, v0, v3
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1d
const/4 v2, 0x1
aget-object v0, v0, v2
:try_end_40
.catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_40} :catch_41
.catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_40} :catch_4c
goto :goto_6
:catch_41
move-exception v0
iget-object v0, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;
const-string/jumbo v2, "Tencent/mta/.mid.txt not found."
invoke-virtual {v0, v2}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
:goto_4a
:cond_4a
move-object v0, v1
goto :goto_6
:catch_4c
move-exception v0
iget-object v2, p0, Lcom/tencent/stat/a;->a:Lcom/tencent/stat/common/StatLogger;
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
goto :goto_4a
.end method
.method public e(Ljava/lang/String;Ljava/lang/String;)Z
.registers 4
iget-boolean v0, p0, Lcom/tencent/stat/a;->e:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
const/4 v0, 0x1
goto :goto_5
.end method
.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
iget-boolean v0, p0, Lcom/tencent/stat/a;->e:Z
if-nez v0, :cond_5
:goto_4
return-object p2
:cond_5
iget-object v0, p0, Lcom/tencent/stat/a;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
goto :goto_4
.end method