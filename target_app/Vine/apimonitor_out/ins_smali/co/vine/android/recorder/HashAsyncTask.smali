.class public abstract Lco/vine/android/recorder/HashAsyncTask;
.super Landroid/os/AsyncTask;
.source "HashAsyncTask.java"
.implements Lco/vine/android/recorder/RecordCompleteConsumer;
.field private final mParent:Lco/vine/android/recorder/RecordCompleteConsumer;
.method public constructor <init>(Lco/vine/android/recorder/RecordCompleteConsumer;)V
.registers 2
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p1, p0, Lco/vine/android/recorder/HashAsyncTask;->mParent:Lco/vine/android/recorder/RecordCompleteConsumer;
return-void
.end method
.method private static createChecksum(Ljava/lang/String;)[B
.registers 7
const/4 v5, 0x0
new-instance v4, Ljava/io/File;
invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v4
if-nez v4, :cond_f
new-array v4, v5, [B
:goto_e
return-object v4
:cond_f
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
const/16 v4, 0x400
new-array v0, v4, [B
const-string v4, "MD5"
invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
:cond_1e
invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
move-result v3
if-lez v3, :cond_27
invoke-virtual {v1, v0, v5, v3}, Ljava/security/MessageDigest;->update([BII)V
:cond_27
const/4 v4, -0x1
if-ne v3, v4, :cond_1e
invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
move-result-object v4
goto :goto_e
.end method
.method public static getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;
.registers 10
invoke-static {p0}, Lco/vine/android/recorder/HashAsyncTask;->createChecksum(Ljava/lang/String;)[B
move-result-object v2
const-string v5, ""
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_9
if-ge v3, v4, :cond_30
aget-byte v1, v0, v3
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
and-int/lit16 v7, v1, 0xff
add-int/lit16 v7, v7, 0x100
const/16 v8, 0x10
invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;
move-result-object v7
const/4 v8, 0x1
invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
add-int/lit8 v3, v3, 0x1
goto :goto_9
:cond_30
return-object v5
.end method
.method public static setMD5Checksum(Lco/vine/android/recorder/RecordingFile;)V
.registers 2
invoke-virtual {p0}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lco/vine/android/recorder/HashAsyncTask;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/recorder/RecordingFile;->setHash(Ljava/lang/String;)V
return-void
.end method
.method protected varargs doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
.registers 7
const/4 v2, 0x0
if-eqz p1, :cond_6
array-length v3, p1
if-nez v3, :cond_8
:cond_6
move-object v1, v2
:goto_7
return-object v1
:cond_8
array-length v3, p1
const/4 v4, 0x1
if-le v3, v4, :cond_14
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "You can only throw on file per execute."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_14
const/4 v3, 0x0
aget-object v1, p1, v3
:try_start_17
invoke-virtual {v1}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lco/vine/android/recorder/HashAsyncTask;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lco/vine/android/recorder/RecordingFile;->setHash(Ljava/lang/String;)V
:try_end_22
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23
goto :goto_7
:catch_23
move-exception v0
invoke-virtual {p0, v1, v0}, Lco/vine/android/recorder/HashAsyncTask;->onError(Lco/vine/android/recorder/RecordingFile;Ljava/lang/Exception;)V
move-object v1, v2
goto :goto_7
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lco/vine/android/recorder/RecordingFile;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/HashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
move-result-object v0
return-object v0
.end method
.method public final onComplete(Lco/vine/android/recorder/RecordingFile;)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/HashAsyncTask;->mParent:Lco/vine/android/recorder/RecordCompleteConsumer;
invoke-virtual {p0, p1, v0}, Lco/vine/android/recorder/HashAsyncTask;->onComplete(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordCompleteConsumer;)V
return-void
.end method
.method public abstract onComplete(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordCompleteConsumer;)V
.end method
.method public final onError(Lco/vine/android/recorder/RecordingFile;Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/HashAsyncTask;->mParent:Lco/vine/android/recorder/RecordCompleteConsumer;
invoke-virtual {p0, p1, p2, v0}, Lco/vine/android/recorder/HashAsyncTask;->onError(Lco/vine/android/recorder/RecordingFile;Ljava/lang/Exception;Lco/vine/android/recorder/RecordCompleteConsumer;)V
return-void
.end method
.method public abstract onError(Lco/vine/android/recorder/RecordingFile;Ljava/lang/Exception;Lco/vine/android/recorder/RecordCompleteConsumer;)V
.end method
.method protected final onPostExecute(Lco/vine/android/recorder/RecordingFile;)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/HashAsyncTask;->mParent:Lco/vine/android/recorder/RecordCompleteConsumer;
invoke-virtual {p0, p1, v0}, Lco/vine/android/recorder/HashAsyncTask;->onComplete(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordCompleteConsumer;)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lco/vine/android/recorder/RecordingFile;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/HashAsyncTask;->onPostExecute(Lco/vine/android/recorder/RecordingFile;)V
return-void
.end method