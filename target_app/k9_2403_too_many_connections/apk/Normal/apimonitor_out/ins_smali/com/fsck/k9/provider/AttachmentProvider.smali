.class public Lcom/fsck/k9/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"
.field public static final CONTENT_URI:Landroid/net/Uri; = null
.field private static final FORMAT_RAW:Ljava/lang/String; = "RAW"
.field private static final FORMAT_THUMBNAIL:Ljava/lang/String; = "THUMBNAIL"
.method static constructor <clinit>()V
.registers 1
const-string v0, "content://com.fsck.k9.attachmentprovider"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method public static clear(Landroid/content/Context;)V
.registers 9
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v5
invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_b
if-ge v3, v4, :cond_35
aget-object v1, v0, v3
:try_start_f
sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v5, :cond_2f
const-string v5, "k9"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Deleting file "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_2f
.catch Ljava/io/IOException; {:try_start_f .. :try_end_2f} :catch_36
:goto_2f
:cond_2f
invoke-virtual {v1}, Ljava/io/File;->delete()Z
add-int/lit8 v3, v3, 0x1
goto :goto_b
:cond_35
return-void
:catch_36
move-exception v5
goto :goto_2f
.end method
.method private createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
.registers 6
const/4 v3, 0x0
:try_start_1
invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
:try_end_4
.catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_4} :catch_7
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_9
move-result-object v0
move-object v3, v0
:goto_6
return-object v3
:catch_7
move-exception v2
goto :goto_6
:catch_9
move-exception v1
goto :goto_6
.end method
.method private createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
.registers 4
const-string v0, "image/*"
invoke-static {p1, v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
invoke-direct {p0, p2}, Lcom/fsck/k9/provider/AttachmentProvider;->createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public static getAttachmentThumbnailUri(Lcom/fsck/k9/Account;JII)Landroid/net/Uri;
.registers 8
sget-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".db"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "THUMBNAIL"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static getAttachmentUri(Lcom/fsck/k9/Account;J)Landroid/net/Uri;
.registers 6
sget-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".db"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "RAW"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;
.registers 5
sget-object v0, Lcom/fsck/k9/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, "RAW"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 18
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v14
const/4 v1, 0x0
invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
const/4 v1, 0x1
invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/String;
const/4 v1, 0x2
invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
const-string v1, "THUMBNAIL"
invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_24
const-string v1, "image/png"
:goto_23
return-object v1
:cond_24
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v9}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v13
const/4 v0, 0x0
const/4 v8, 0x0
const/4 v1, 0x0
const/4 v2, 0x0
:try_start_34
invoke-static {v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string v1, "attachments"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "mime_type"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "name"
aput-object v4, v2, v3
const-string v3, "id = ?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
aput-object v11, v4, v5
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v8
invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v1, 0x0
invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v15
const/4 v1, 0x1
invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v12
invoke-interface {v8}, Landroid/database/Cursor;->close()V
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
const-string v1, "application/octet-stream"
invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_75
invoke-static {v12}, Lcom/fsck/k9/mail/internet/MimeUtility;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;
:try_end_74
.catchall {:try_start_34 .. :try_end_74} :catchall_81
move-result-object v15
:cond_75
if-eqz v8, :cond_7a
invoke-interface {v8}, Landroid/database/Cursor;->close()V
:cond_7a
if-eqz v0, :cond_7f
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_7f
move-object v1, v15
goto :goto_23
:catchall_81
move-exception v1
if-eqz v8, :cond_87
invoke-interface {v8}, Landroid/database/Cursor;->close()V
:cond_87
if-eqz v0, :cond_8c
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_8c
throw v1
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public onCreate()Z
.registers 8
const-string v1, " + Lcom/fsck/k9/provider/AttachmentProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v5
invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
move-object v0, v2
array-length v4, v0
const/4 v3, 0x0
:goto_f
if-ge v3, v4, :cond_25
aget-object v1, v0, v3
invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v5
const-string v6, ".tmp"
invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_22
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_22
add-int/lit8 v3, v3, 0x1
goto :goto_f
:cond_25
const/4 v5, 0x1
const-string v1, " - Lcom/fsck/k9/provider/AttachmentProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v5
.end method
.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.registers 26
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v15
const/16 v19, 0x0
move-object v0, v15
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
const/16 v19, 0x1
move-object v0, v15
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/String;
const/16 v19, 0x2
move-object v0, v15
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
const-string v19, "THUMBNAIL"
move-object/from16 v0, v19
move-object v1, v9
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_105
const/16 v19, 0x3
move-object v0, v15
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/String;
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v18
const/16 v19, 0x4
move-object v0, v15
move/from16 v1, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/String;
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v10
new-instance v19, Ljava/lang/StringBuilder;
invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V
const-string v20, "thmb_"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
const-string v20, "_"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
move-object/from16 v0, v19
move-object v1, v11
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v6
new-instance v7, Ljava/io/File;
invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v19
if-nez v19, :cond_f5
invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v19
move-object v0, v5
move-wide/from16 v1, v19
invoke-static {v0, v1, v2}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Ljava/lang/String;J)Landroid/net/Uri;
move-result-object v4
move-object/from16 v0, p0
move-object v1, v4
invoke-virtual {v0, v1}, Lcom/fsck/k9/provider/AttachmentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v17
:try_start_96
new-instance v12, Ljava/io/FileInputStream;
new-instance v19, Ljava/io/File;
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;
move-result-object v20
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v21
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "_att"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
move-object v2, v11
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
move-object v0, v12
move-object/from16 v1, v19
invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
move-object/from16 v0, p0
move-object/from16 v1, v17
move-object v2, v12
invoke-direct {v0, v1, v2}, Lcom/fsck/k9/provider/AttachmentProvider;->createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v16
const/16 v19, 0x1
move-object/from16 v0, v16
move/from16 v1, v18
move v2, v10
move/from16 v3, v19
invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v16
new-instance v14, Ljava/io/FileOutputStream;
invoke-direct {v14, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v20, 0x64
move-object/from16 v0, v16
move-object/from16 v1, v19
move/from16 v2, v20
move-object v3, v14
invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
:cond_f5
:try_end_f5
.catch Ljava/io/IOException; {:try_start_96 .. :try_end_f5} :catch_ff
const/high16 v19, 0x1000
move-object v0, v7
move/from16 v1, v19
invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v19
:goto_fe
return-object v19
:catch_ff
move-exception v19
move-object/from16 v13, v19
const/16 v19, 0x0
goto :goto_fe
:cond_105
new-instance v19, Ljava/io/File;
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;
move-result-object v20
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v21
move-object v1, v5
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
const-string v22, "_att"
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
move-object v2, v11
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const/high16 v20, 0x1000
invoke-static/range {v19 .. v20}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v19
goto :goto_fe
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 30
if-nez p2, :cond_12
const/4 v4, 0x2
move v0, v4
new-array v0, v0, [Ljava/lang/String;
move-object/from16 p2, v0
const/4 v4, 0x0
const-string v5, "_id"
aput-object v5, p2, v4
const/4 v4, 0x1
const-string v5, "_data"
aput-object v5, p2, v4
:cond_12
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v21
const/4 v4, 0x0
move-object/from16 v0, v21
move v1, v4
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/String;
const/4 v4, 0x1
move-object/from16 v0, v21
move v1, v4
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Ljava/lang/String;
const/4 v4, 0x2
move-object/from16 v0, v21
move v1, v4
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v15
check-cast v15, Ljava/lang/String;
invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/provider/AttachmentProvider;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4, v14}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v19
const/16 v18, 0x0
const/16 v22, -0x1
const/4 v3, 0x0
const/4 v13, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
:try_start_48
move-object/from16 v0, v19
move-object v1, v4
move v2, v5
invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
const-string v4, "attachments"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v6, 0x0
const-string v7, "name"
aput-object v7, v5, v6
const/4 v6, 0x1
const-string v7, "size"
aput-object v7, v5, v6
const-string v6, "id = ?"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/String;
const/4 v8, 0x0
aput-object v17, v7, v8
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v13
invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
:try_end_71
.catchall {:try_start_48 .. :try_end_71} :catchall_c0
move-result v4
if-nez v4, :cond_80
const/4 v4, 0x0
if-eqz v13, :cond_7a
invoke-interface {v13}, Landroid/database/Cursor;->close()V
:cond_7a
if-eqz v3, :cond_7f
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:goto_7f
:cond_7f
return-object v4
:cond_80
const/4 v4, 0x0
:try_start_81
invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v18
const/4 v4, 0x1
invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I
:try_end_89
.catchall {:try_start_81 .. :try_end_89} :catchall_c0
move-result v22
if-eqz v13, :cond_8f
invoke-interface {v13}, Landroid/database/Cursor;->close()V
:cond_8f
if-eqz v3, :cond_94
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_94
new-instance v20, Landroid/database/MatrixCursor;
move-object/from16 v0, v20
move-object/from16 v1, p2
invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
move-object/from16 v0, p2
array-length v0, v0
move v4, v0
move v0, v4
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v23, v0
const/16 v16, 0x0
move-object/from16 v0, p2
array-length v0, v0
move v12, v0
:goto_ac
move/from16 v0, v16
move v1, v12
if-ge v0, v1, :cond_f5
aget-object v11, p2, v16
const-string v4, "_id"
invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_cc
aput-object v17, v23, v16
:goto_bd
:cond_bd
add-int/lit8 v16, v16, 0x1
goto :goto_ac
:catchall_c0
move-exception v4
if-eqz v13, :cond_c6
invoke-interface {v13}, Landroid/database/Cursor;->close()V
:cond_c6
if-eqz v3, :cond_cb
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_cb
throw v4
:cond_cc
const-string v4, "_data"
invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_db
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v23, v16
goto :goto_bd
:cond_db
const-string v4, "_display_name"
invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_e6
aput-object v18, v23, v16
goto :goto_bd
:cond_e6
const-string v4, "_size"
invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_bd
invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v23, v16
goto :goto_bd
:cond_f5
move-object/from16 v0, v20
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
move-object/from16 v4, v20
goto :goto_7f
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 6
const/4 v0, 0x0
return v0
.end method