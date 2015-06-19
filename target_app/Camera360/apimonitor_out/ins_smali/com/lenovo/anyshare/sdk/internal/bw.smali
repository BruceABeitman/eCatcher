.class public Lcom/lenovo/anyshare/sdk/internal/bw;
.super Ljava/lang/Object;
.source "ThumbnailLoader.java"
.field private static a:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/bw;->a:Ljava/util/Map;
return-void
.end method
.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
.registers 6
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->d(Landroid/content/Context;I)Ljava/io/InputStream;
move-result-object v0
if-nez v0, :cond_2f
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Contact["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "] has no thumbnail."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "ThumbnailLoader"
invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bn;
const/16 v3, 0x65
invoke-direct {v2, v3, v1}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v2
:cond_2f
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v2
return-object v2
.end method
.method public static a(Landroid/content/Context;III)Landroid/graphics/Bitmap;
.registers 11
const/4 v6, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
if-eqz p2, :cond_9
if-nez p3, :cond_17
:cond_9
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v3, 0x2
iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
int-to-long v3, p1
invoke-static {v2, v3, v4, v6, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v3
:goto_16
return-object v3
:cond_17
int-to-long v3, p1
const/4 v5, 0x0
invoke-static {v2, v3, v4, v6, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0, p2, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v3
goto :goto_16
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/AppItem;)Landroid/graphics/Bitmap;
.registers 4
invoke-virtual {p1}, Lcom/lenovo/content/item/AppItem;->getCategoryLocation()Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
move-result-object v0
sget-object v1, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->SDCARD:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
if-eq v0, v1, :cond_10
invoke-virtual {p1}, Lcom/lenovo/content/item/AppItem;->getCategoryLocation()Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
move-result-object v0
sget-object v1, Lcom/lenovo/content/item/AppItem$AppCategoryLocation;->ZIP:Lcom/lenovo/content/item/AppItem$AppCategoryLocation;
if-ne v0, v1, :cond_19
:cond_10
invoke-virtual {p1}, Lcom/lenovo/content/item/AppItem;->getFilePath()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bw;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_18
return-object v0
:cond_19
invoke-virtual {p1}, Lcom/lenovo/content/item/AppItem;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_18
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/ContactItem;)Landroid/graphics/Bitmap;
.registers 3
invoke-virtual {p1}, Lcom/lenovo/content/item/ContactItem;->getContactId()I
move-result v0
invoke-static {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/FileItem;)Landroid/graphics/Bitmap;
.registers 3
invoke-virtual {p1}, Lcom/lenovo/content/item/FileItem;->getFilePath()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bw;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/MusicItem;)Landroid/graphics/Bitmap;
.registers 3
invoke-virtual {p1}, Lcom/lenovo/content/item/MusicItem;->getAlbumId()I
move-result v0
invoke-static {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bw;->b(Landroid/content/Context;I)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/PhotoItem;)Landroid/graphics/Bitmap;
.registers 4
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/lenovo/content/item/PhotoItem;->getMediaId()I
move-result v0
invoke-static {p0, v0, v1, v1}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/PhotoItem;II)Landroid/graphics/Bitmap;
.registers 5
invoke-virtual {p1}, Lcom/lenovo/content/item/PhotoItem;->getMediaId()I
move-result v0
invoke-static {p0, v0, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/content/item/VideoItem;)Landroid/graphics/Bitmap;
.registers 3
invoke-virtual {p1}, Lcom/lenovo/content/item/VideoItem;->getMediaId()I
move-result v0
invoke-static {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/bw;->c(Landroid/content/Context;I)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 10
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const/4 v4, 0x0
:try_start_5
invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v2
iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v1
check-cast v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
:try_end_14
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_14} :catch_16
move-result-object v4
return-object v4
:catch_16
move-exception v0
const-string/jumbo v4, "ThumbnailLoader"
invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v4, Lcom/lenovo/anyshare/sdk/internal/bn;
const/16 v5, 0x65
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "The package "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " don\'t exist."
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v4
.end method
.method public static b(Landroid/content/Context;I)Landroid/graphics/Bitmap;
.registers 6
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->e(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_c
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_35
:cond_c
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Music album["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "] has no album art."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "ThumbnailLoader"
invoke-static {v2, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/lenovo/anyshare/sdk/internal/bn;
const/16 v3, 0x65
invoke-direct {v2, v3, v1}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v2
:cond_35
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
return-object v2
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 7
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/az;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_29
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/bn;
const/16 v2, 0x65
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "The apk "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " don\'t exist or has no thumbnail."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v1
:cond_29
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
return-object v1
.end method
.method public static c(Landroid/content/Context;I)Landroid/graphics/Bitmap;
.registers 7
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
int-to-long v1, p1
const/4 v3, 0x3
const/4 v4, 0x0
invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
return-object v1
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 16
new-instance v11, Ljava/io/File;
invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v11}, Lcom/lenovo/anyshare/sdk/internal/aq;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v7
if-nez v7, :cond_34
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v12, "File["
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "] can\'t get MIME type."
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
const-string/jumbo v11, "ThumbnailLoader"
invoke-static {v11, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v11, Lcom/lenovo/anyshare/sdk/internal/bn;
const/16 v12, 0x65
invoke-direct {v11, v12, v8}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v11
:cond_34
const-string/jumbo v11, "image/"
invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_4f
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->e(Landroid/content/Context;Ljava/lang/String;)I
move-result v6
if-lez v6, :cond_4a
const/4 v11, 0x0
const/4 v12, 0x0
invoke-static {p0, v6, v11, v12}, Lcom/lenovo/anyshare/sdk/internal/bw;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;
move-result-object v1
:cond_49
:goto_49
return-object v1
:cond_4a
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/aj;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_49
:cond_4f
const-string/jumbo v11, "video/"
invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_68
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/bw;->f(Landroid/content/Context;Ljava/lang/String;)I
move-result v6
if-lez v6, :cond_63
invoke-static {p0, v6}, Lcom/lenovo/anyshare/sdk/internal/bw;->c(Landroid/content/Context;I)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_49
:cond_63
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/aj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_49
:cond_68
const-string/jumbo v11, "application/"
invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_80
invoke-static {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/az;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v2
if-nez v2, :cond_79
const/4 v1, 0x0
goto :goto_49
:cond_79
check-cast v2, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_49
:cond_80
const/4 v1, 0x0
sget-object v11, Lcom/lenovo/anyshare/sdk/internal/bw;->a:Ljava/util/Map;
invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/graphics/Bitmap;
if-nez v1, :cond_49
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v9
new-instance v5, Landroid/content/Intent;
const-string/jumbo v11, "android.intent.action.VIEW"
invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "file"
const-string/jumbo v12, ""
const/4 v13, 0x0
invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v11
invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v11, 0x1
invoke-virtual {v9, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
const/high16 v11, 0x1
invoke-virtual {v9, v5, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v10
const/4 v4, 0x0
if-eqz v0, :cond_ec
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v11
if-lez v11, :cond_ec
const/4 v11, 0x0
invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/content/pm/ResolveInfo;
:cond_c1
:goto_c1
if-nez v4, :cond_fc
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v12, "File["
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "] has no view owner."
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
const-string/jumbo v11, "ThumbnailLoader"
invoke-static {v11, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v11, Lcom/lenovo/anyshare/sdk/internal/bn;
const/16 v12, 0x65
invoke-direct {v11, v12, v8}, Lcom/lenovo/anyshare/sdk/internal/bn;-><init>(ILjava/lang/String;)V
throw v11
:cond_ec
if-eqz v10, :cond_c1
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v11
if-lez v11, :cond_c1
const/4 v11, 0x0
invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/content/pm/ResolveInfo;
goto :goto_c1
:cond_fc
invoke-virtual {v4, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v3
check-cast v3, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v1
sget-object v11, Lcom/lenovo/anyshare/sdk/internal/bw;->a:Ljava/util/Map;
invoke-interface {v11, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_49
.end method
.method private static d(Landroid/content/Context;I)Ljava/io/InputStream;
.registers 7
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;
int-to-long v3, p1
invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v1
invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v2
return-object v2
.end method
.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
.registers 5
const/4 v1, 0x0
new-instance v2, Ljava/io/File;
invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/aq;->a(Ljava/io/File;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_d
:cond_c
:goto_c
return v1
:cond_d
const-string/jumbo v2, "image/"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_28
const-string/jumbo v2, "video/"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_28
const-string/jumbo v2, "application/"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_c
:cond_28
const/4 v1, 0x1
goto :goto_c
.end method
.method private static e(Landroid/content/Context;Ljava/lang/String;)I
.registers 9
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v1, 0x1
new-array v2, v1, [Ljava/lang/String;
const-string/jumbo v1, "_id"
aput-object v1, v2, v5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "_data=\""
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v5, "\""
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_47
:try_start_32
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_47
const/4 v1, 0x0
invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
:try_end_3c
.catchall {:try_start_32 .. :try_end_3c} :catchall_41
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_46
move-result v1
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
:goto_40
return v1
:catchall_41
move-exception v1
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v1
:catch_46
move-exception v1
:cond_47
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
const/4 v1, -0x1
goto :goto_40
.end method
.method private static e(Landroid/content/Context;I)Ljava/lang/String;
.registers 12
const/4 v9, 0x0
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v4, 0x1
new-array v2, v4, [Ljava/lang/String;
const-string/jumbo v4, "album_art"
aput-object v4, v2, v9
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "content://media/external/audio/albums/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v7
if-eqz v7, :cond_3a
invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
move-result v4
if-lez v4, :cond_3a
invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I
move-result v4
if-gtz v4, :cond_5d
:cond_3a
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "Music album["
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "] can\'t get thumbnail cursor."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
const-string/jumbo v4, "ThumbnailLoader"
invoke-static {v4, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v6, v3
:goto_5c
return-object v6
:cond_5d
invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v7}, Landroid/database/Cursor;->close()V
goto :goto_5c
.end method
.method private static f(Landroid/content/Context;Ljava/lang/String;)I
.registers 9
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const/4 v1, 0x1
new-array v2, v1, [Ljava/lang/String;
const-string/jumbo v1, "_id"
aput-object v1, v2, v5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "_data=\""
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v5, "\""
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_47
:try_start_32
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v1
if-eqz v1, :cond_47
const/4 v1, 0x0
invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
:try_end_3c
.catchall {:try_start_32 .. :try_end_3c} :catchall_41
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3c} :catch_46
move-result v1
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
:goto_40
return v1
:catchall_41
move-exception v1
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v1
:catch_46
move-exception v1
:cond_47
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
const/4 v1, -0x1
goto :goto_40
.end method