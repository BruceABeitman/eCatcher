.class public final Lcom/instagram/creation/video/l/g;
.super Ljava/lang/Object;
.source "VideoImportUtil.java"
.method private static a(Ljava/lang/String;Lcom/instagram/creation/video/i/a;)Landroid/os/Bundle;
.registers 6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "pendingMediaKey"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "ARGUMENT_IMPORT_PATH"
invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "ARGUMENT_IMPORT_DURATION_MS"
invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->a()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
return-object v0
.end method
.method private static a(Ljava/lang/String;J)Lcom/instagram/creation/b/a/a;
.registers 7
new-instance v0, Lcom/instagram/creation/b/a/a;
invoke-direct {v0}, Lcom/instagram/creation/b/a/a;-><init>()V
invoke-virtual {v0, p0}, Lcom/instagram/creation/b/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;
invoke-virtual {v0, p1, p2}, Lcom/instagram/creation/b/a/a;->a(J)Lcom/instagram/creation/b/a/a;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;
const/16 v1, 0x3a98
long-to-int v2, p1
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;
const/high16 v1, 0x3f00
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(F)Lcom/instagram/creation/b/a/a;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;
:try_start_22
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Lcom/instagram/creation/video/l/c;->a(Ljava/io/File;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->b(I)Lcom/instagram/creation/b/a/a;
:goto_2e
:try_end_2e
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_2e} :catch_4e
new-instance v1, Landroid/media/MediaMetadataRetriever;
invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
const/16 v2, 0x12
invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
const/16 v3, 0x13
invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v2, v1}, Lcom/instagram/creation/b/a/a;->b(II)V
return-object v0
:catch_4e
move-exception v1
goto :goto_2e
.end method
.method public static a(Landroid/content/Context;I)Lcom/instagram/creation/b/a/b;
.registers 5
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/b/a/b;->b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
move-result-object v0
const/4 v1, 0x0
const/4 v2, -0x1
invoke-static {v1, v2, p0}, Lcom/instagram/creation/video/l/j;->a(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->i(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/instagram/creation/b/a/b;->a(I)V
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.registers 11
const/4 v7, 0x0
const/4 v4, 0x1
const/4 v5, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_3f
invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
move-result v0
if-eqz v0, :cond_3f
invoke-static {p1}, Lcom/instagram/creation/video/l/g;->a(Landroid/net/Uri;)Z
move-result v0
if-eqz v0, :cond_3f
invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
aget-object v6, v0, v4
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
new-array v2, v4, [Ljava/lang/String;
const-string v3, "_data"
aput-object v3, v2, v7
const-string v3, "_id=?"
new-array v4, v4, [Ljava/lang/String;
aput-object v6, v4, v7
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
move-object v1, v0
:goto_38
if-nez v1, :cond_4d
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v0
:goto_3e
return-object v0
:cond_3f
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object v4, p1
move-object v6, v5
move-object v7, v5
move-object v8, v5
invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
move-object v1, v0
goto :goto_38
:cond_4d
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
const-string v0, "_data"
invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_5b
const-string v0, "video_invalid_url"
goto :goto_3e
:cond_5b
invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_3e
.end method
.method private static a()V
.registers 1
sget v0, Lcom/facebook/az;->video_import_unsupported_file_type:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
return-void
.end method
.method public static a(Landroid/app/Activity;)V
.registers 4
invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->video_import_remote_url:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-virtual {p0}, Landroid/app/Activity;->finish()V
return-void
.end method
.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;Lcom/instagram/creation/video/i/a;ZZ)V
.registers 8
new-instance v0, Lcom/instagram/base/a/a/a;
invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
invoke-static {p1, p2}, Lcom/instagram/creation/video/l/g;->a(Ljava/lang/String;Lcom/instagram/creation/video/i/a;)Landroid/os/Bundle;
move-result-object v1
const-string v2, "directShare"
invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
sget-object v2, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;
invoke-static {v1, v2}, Lcom/instagram/creation/video/f/ar;->a(Landroid/os/Bundle;Lcom/instagram/creation/video/f/av;)V
new-instance v2, Lcom/instagram/creation/video/f/ar;
invoke-direct {v2}, Lcom/instagram/creation/video/f/ar;-><init>()V
invoke-virtual {v0, v2, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
if-nez p3, :cond_20
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->b()Lcom/instagram/base/a/a/a;
:cond_20
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
return-void
.end method
.method private static a(J)Z
.registers 4
const-wide/16 v0, 0xbb8
cmp-long v0, p0, v0
if-ltz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private static a(Landroid/net/Uri;)Z
.registers 3
const-string v0, "com.android.providers.media.documents"
invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static a(Landroid/os/Bundle;)Z
.registers 2
const-string v0, "pendingMediaKey"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
const-string v0, "ARGUMENT_IMPORT_PATH"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
const-string v0, "ARGUMENT_IMPORT_DURATION_MS"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public static a(Landroid/os/Bundle;Lcom/instagram/creation/b/a/b;)Z
.registers 7
const-string v0, "ARGUMENT_IMPORT_PATH"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "ARGUMENT_IMPORT_DURATION_MS"
const-wide/16 v2, -0x1
invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/instagram/creation/video/l/g;->a(Ljava/lang/String;J)Lcom/instagram/creation/b/a/a;
move-result-object v0
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v3}, Lcom/instagram/creation/b/a/b;->b(Ljava/util/List;)V
invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/a;)V
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->k()I
move-result v3
invoke-virtual {p1, v3}, Lcom/instagram/creation/b/a/b;->d(I)V
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->l()I
move-result v3
invoke-virtual {p1, v3}, Lcom/instagram/creation/b/a/b;->e(I)V
const-string v3, "ARGUMENT_IMPORT_PATH"
invoke-virtual {p0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
const-string v3, "ARGUMENT_IMPORT_DURATION_MS"
invoke-virtual {p0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/instagram/creation/b/a/a;->i()I
move-result v0
int-to-long v3, v0
cmp-long v0, v1, v3
if-lez v0, :cond_43
const/4 v0, 0x1
:goto_42
return v0
:cond_43
const/4 v0, 0x0
goto :goto_42
.end method
.method public static a(Lcom/instagram/creation/video/i/a;)Z
.registers 6
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/creation/video/i/a;->a()J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-gez v1, :cond_f
invoke-static {}, Lcom/instagram/creation/video/l/g;->a()V
:goto_e
return v0
:cond_f
invoke-virtual {p0}, Lcom/instagram/creation/video/i/a;->a()J
move-result-wide v1
invoke-static {v1, v2}, Lcom/instagram/creation/video/l/g;->a(J)Z
move-result v1
if-nez v1, :cond_1d
invoke-static {}, Lcom/instagram/creation/video/l/g;->b()V
goto :goto_e
:cond_1d
invoke-virtual {p0}, Lcom/instagram/creation/video/i/a;->a()J
move-result-wide v1
invoke-static {v1, v2}, Lcom/instagram/creation/video/l/g;->b(J)Z
move-result v1
if-nez v1, :cond_38
const-string v1, "Import long clip"
invoke-virtual {p0}, Lcom/instagram/creation/video/i/a;->a()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/instagram/creation/video/l/g;->c()V
goto :goto_e
:cond_38
const/4 v0, 0x1
goto :goto_e
.end method
.method public static a([DI)[D
.registers 16
const/4 v9, 0x0
rem-int/lit8 v0, p1, 0x2
if-nez v0, :cond_29
div-int/lit8 v0, p1, 0x2
:goto_7
new-array v11, v0, [D
move v10, v9
:goto_a
if-ge v10, p1, :cond_36
int-to-double v6, p1
array-length v0, p0
add-int/lit8 v0, v0, -0x1
aget-wide v2, p0, v0
array-length v12, p0
move v8, v9
:goto_14
if-ge v8, v12, :cond_2e
aget-wide v0, p0, v8
int-to-double v4, v10
sub-double/2addr v4, v0
invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D
move-result-wide v4
cmpg-double v13, v4, v6
if-gez v13, :cond_37
move-wide v2, v4
:goto_23
add-int/lit8 v4, v8, 0x1
move v8, v4
move-wide v6, v2
move-wide v2, v0
goto :goto_14
:cond_29
div-int/lit8 v0, p1, 0x2
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_2e
div-int/lit8 v0, v10, 0x2
aput-wide v2, v11, v0
add-int/lit8 v0, v10, 0x2
move v10, v0
goto :goto_a
:cond_36
return-object v11
:cond_37
move-wide v0, v2
move-wide v2, v6
goto :goto_23
.end method
.method private static b()V
.registers 1
sget v0, Lcom/facebook/az;->video_import_too_short:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
return-void
.end method
.method private static b(J)Z
.registers 4
const-wide/32 v0, 0x927c0
cmp-long v0, p0, v0
if-gtz v0, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method private static c()V
.registers 1
sget v0, Lcom/facebook/az;->video_import_too_long:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
return-void
.end method