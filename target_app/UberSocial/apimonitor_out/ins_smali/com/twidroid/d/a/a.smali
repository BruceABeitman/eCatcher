.class public Lcom/twidroid/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/io/File;J)V
.registers 11
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_46
array-length v2, v1
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_46
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_18
invoke-static {v3, p1, p2}, Lcom/twidroid/d/a/a;->a(Ljava/io/File;J)V
:cond_15
:goto_15
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_18
invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v4
const-string v5, ".nomedia"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_15
invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/twidroid/d/v;->e()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_15
invoke-virtual {v3}, Ljava/io/File;->lastModified()J
move-result-wide v4
const-wide/32 v6, 0x1b77400
add-long/2addr v4, v6
cmp-long v4, v4, p1
if-gez v4, :cond_15
invoke-virtual {v3}, Ljava/io/File;->delete()Z
goto :goto_15
:cond_46
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/twidroid/d/a/b;)V
.registers 13
const/4 v1, 0x0
const/4 v8, 0x1
if-eqz p0, :cond_c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_c
if-nez p2, :cond_d
:cond_c
:goto_c
return-void
:try_start_d
:cond_d
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v0, v2, :cond_6a
sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;
invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
new-instance v1, Landroid/app/DownloadManager$Request;
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
const v0, 0x7f0c0159
invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_2f} :catch_4b
:try_start_2f
invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;
:goto_36
:try_end_36
.catch Ljava/lang/NoSuchMethodError; {:try_start_2f .. :try_end_36} :catch_59
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_4b
const/4 v0, 0x1
:try_start_37
invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;
invoke-virtual {v1, v0, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
const-string v0, "download"
invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/DownloadManager;
invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_4b
goto :goto_c
:catch_4b
move-exception v0
const-string v1, "FileUtils"
const-string v2, "Can\'t download file"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
if-eqz p3, :cond_c
invoke-interface {p3, v8}, Lcom/twidroid/d/a/b;->a(I)V
goto :goto_c
:catch_59
move-exception v0
:try_start_5a
const-string v2, "FileUtils"
const-string v3, "NoSuchMethod"
invoke-static {v2, v3, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
goto :goto_36
:cond_6a
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x8
if-lt v0, v2, :cond_e1
sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;
invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
move-object v2, v0
:goto_77
if-eqz v2, :cond_c
invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v3, ".jpg"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_a7
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v3, ".png"
invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_a7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ".jpg"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
:cond_a7
new-instance v3, Ljava/io/File;
invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const-string v4, "GET"
invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const/4 v4, 0x1
invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0x9
if-lt v4, v5, :cond_100
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
move-result v4
int-to-long v4, v4
invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J
move-result-wide v6
cmp-long v2, v4, v6
if-lez v2, :cond_100
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
if-eqz p3, :cond_c
const/4 v0, 0x0
invoke-interface {p3, v0}, Lcom/twidroid/d/a/b;->a(I)V
goto/16 :goto_c
:cond_e1
new-instance v0, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/Download/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
move-object v2, v0
goto/16 :goto_77
:cond_100
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v3
const/16 v0, 0x1000
new-array v4, v0, [B
move v0, v1
:goto_10e
invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v5, -0x1
if-eq v1, v5, :cond_11b
const/4 v5, 0x0
invoke-virtual {v2, v4, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
add-int/2addr v0, v1
goto :goto_10e
:cond_11b
invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
if-eqz p3, :cond_c
invoke-interface {p3}, Lcom/twidroid/d/a/b;->a()V
:try_end_126
.catch Ljava/lang/Exception; {:try_start_5a .. :try_end_126} :catch_4b
goto/16 :goto_c
.end method
.method public static a(Ljava/io/File;)Z
.registers 6
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;
move-result-object v2
move v0, v1
:goto_c
array-length v3, v2
if-ge v0, v3, :cond_20
new-instance v3, Ljava/io/File;
aget-object v4, v2, v0
invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v3}, Lcom/twidroid/d/a/a;->a(Ljava/io/File;)Z
move-result v3
if-nez v3, :cond_1d
:goto_1c
return v1
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_20
invoke-virtual {p0}, Ljava/io/File;->delete()Z
move-result v1
goto :goto_1c
.end method