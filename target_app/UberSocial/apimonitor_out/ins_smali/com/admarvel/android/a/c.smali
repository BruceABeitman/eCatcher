.class public Lcom/admarvel/android/a/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private static a:J
.method static constructor <clinit>()V
.registers 2
const-wide/32 v0, 0x337f9800
sput-wide v0, Lcom/admarvel/android/a/c;->a:J
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
:try_start_0
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string v1, "mounted"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "adm_tracker_dir"
invoke-static {v3}, Lcom/admarvel/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_57
invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_3a
if-ge v0, v2, :cond_57
aget-object v3, v1, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-virtual {v3}, Ljava/io/File;->lastModified()J
move-result-wide v6
sub-long/2addr v4, v6
sget-wide v6, Lcom/admarvel/android/a/c;->a:J
cmp-long v4, v4, v6
if-lez v4, :cond_50
invoke-virtual {v3}, Ljava/io/File;->delete()Z
:try_end_50
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_53
:cond_50
add-int/lit8 v0, v0, 0x1
goto :goto_3a
:catch_53
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_57
const/4 v0, 0x0
return-object v0
.end method