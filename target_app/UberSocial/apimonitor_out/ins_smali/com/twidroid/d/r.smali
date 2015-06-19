.class public Lcom/twidroid/d/r;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:Ljava/lang/String; = "http://twitpic.com/"
.field static final b:Ljava/lang/String; = "http://www.twitpic.com/"
.field static final c:Ljava/lang/String; = "http://mypict.me/"
.field static final d:Ljava/lang/String; = "http://yfrog.com/"
.field static final e:Ljava/lang/String; = "http://pic.gd/"
.field static final f:Ljava/lang/String; = "http://www.pic.gd/"
.field static final g:Ljava/lang/String; = "http://tweetphoto.com/"
.field static final h:Ljava/lang/String; = "http://tweetpho.to/ "
.field static final i:Ljava/lang/String; = "http://dev.tweetphoto.com/"
.field static final j:Ljava/lang/String; = "http://plixi.com/p/ "
.field static final k:Ljava/lang/String; = "http://lockerz.com/s/ "
.field static final l:Ljava/lang/String; = "http://uat.nonprodlockerz.com/s/"
.field static final m:Ljava/lang/String; = "http://flic.kr/p/"
.field static final n:Ljava/lang/String; = "http://mobypicture.com/"
.field static final o:Ljava/lang/String; = "http://moby.to/"
.field static final p:Ljava/lang/String; = "http://api.mobypicture.com"
.field static final q:Ljava/lang/String; = "http://twitvid.com/"
.field static final r:Ljava/lang/String; = "http://twitgoo.com/"
.field static final s:Ljava/lang/String; = "http://twitsnap.com/"
.field static final t:Ljava/lang/String; = "http://i.imgur.com/"
.field static final u:Ljava/lang/String; = "http://instagr.am/p/"
.field public static final v:Lcom/twidroid/d/s;
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/twidroid/d/s;
const-string v1, ""
const-string v2, ""
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/d/s;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/d/r$1;)V
sput-object v0, Lcom/twidroid/d/r;->v:Lcom/twidroid/d/s;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/app/Activity;Ljava/lang/String;)I
.registers 8
const/4 v2, 0x0
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
move-object v0, p0
move-object v3, v2
move-object v4, v2
move-object v5, v2
invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_26
invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
move-result v0
if-lez v0, :cond_26
invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
const-string v0, "orientation"
invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_25
return v0
:cond_26
const/4 v0, 0x0
goto :goto_25
.end method
.method public static a(Landroid/os/ParcelFileDescriptor;I)I
.registers 6
const/4 v2, 0x1
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v1
const/4 v3, 0x0
invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-lez p1, :cond_27
if-gt v1, p1, :cond_1a
if-le v0, p1, :cond_27
:cond_1a
if-le v0, v1, :cond_25
:goto_1c
move v1, v0
move v0, v2
:goto_1e
if-le v1, p1, :cond_28
div-int/lit8 v1, v1, 0x2
mul-int/lit8 v0, v0, 0x2
goto :goto_1e
:cond_25
move v0, v1
goto :goto_1c
:cond_27
move v0, v2
:cond_28
return v0
.end method
.method public static a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
.registers 8
const/4 v1, 0x0
:try_start_1
invoke-static {p0, p1}, Lcom/twidroid/d/r;->a(Landroid/app/Activity;Ljava/lang/String;)I
:try_end_4
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_40
.catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_4} :catch_43
move-result v2
:try_start_5
invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
const-string v4, "r"
invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
:try_end_12
.catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_12} :catch_3d
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_40
.catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_12} :catch_43
move-result-object v0
:goto_13
if-nez v0, :cond_20
:try_start_15
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/high16 v3, 0x1000
invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v0
:cond_20
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
invoke-static {v0, p2}, Lcom/twidroid/d/r;->a(Landroid/os/ParcelFileDescriptor;I)I
move-result v4
iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v0
const/4 v4, 0x0
invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_3c
if-eqz v2, :cond_3c
invoke-static {v0, v2}, Lcom/twidroid/d/r;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
:try_end_3b
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_3b} :catch_40
.catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_3b} :catch_43
move-result-object v0
:goto_3c
:cond_3c
return-object v0
:catch_3d
move-exception v0
move-object v0, v1
goto :goto_13
:catch_40
move-exception v0
move-object v0, v1
goto :goto_3c
:catch_43
move-exception v0
move-object v0, v1
goto :goto_3c
.end method
.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.registers 9
const/4 v1, 0x0
if-nez p1, :cond_4
:goto_3
return-object p0
:cond_4
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v0, p1
invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move-object v0, p0
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v0
if-eq v0, p0, :cond_21
invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
:cond_21
move-object p0, v0
goto :goto_3
.end method
.method public static a(Ljava/lang/String;I)Lcom/twidroid/d/s;
.registers 9
const/16 v3, 0x2e
const/4 v1, 0x0
if-nez p0, :cond_8
sget-object v0, Lcom/twidroid/d/r;->v:Lcom/twidroid/d/s;
:goto_7
return-object v0
:cond_8
if-gtz p1, :cond_d
sget-object v0, Lcom/twidroid/d/r;->v:Lcom/twidroid/d/s;
goto :goto_7
:cond_d
const-string v0, "http://twitpic.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_51
const-string v0, "http://twitpic.com/"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://twitpic.com/show/mini/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "http://twitpic.com/show/large/ "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
:goto_47
if-eqz v3, :cond_35c
if-eqz v2, :cond_35c
new-instance v0, Lcom/twidroid/d/s;
invoke-direct {v0, v3, v2, v1}, Lcom/twidroid/d/s;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/d/r$1;)V
goto :goto_7
:cond_51
const-string v0, "http://www.twitpic.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8c
const-string v0, "http://www.twitpic.com/"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://twitpic.com/show/mini/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "http://twitpic.com/show/large/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto :goto_47
:cond_8c
const-string v0, "http://mypict.me/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d2
const-string v0, "http://mypict.me/show.php?id="
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://mypict.me/getthumb.php?id="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "http://mypict.me/getthumb.php?id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "&size="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_d2
const-string v0, "http://yfrog.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_104
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ".th.jpg"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ":iphone"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_104
const-string v0, "http://twitvid.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_123
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ":thumb"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v2, v0
move-object v3, v0
goto/16 :goto_47
:cond_123
const-string v0, "http://mobypicture.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_133
const-string v0, "http://moby.to/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_171
:cond_133
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "http://api.mobypicture.com?t="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "&s=thumbnail&k=HKi6yNfpSxJO8zxt&format=plain"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://api.mobypicture.com?t= "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "&s=medium&k=HKi6yNfpSxJO8zxt&format=plain"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_171
const-string v0, "http://tweetpho.to/ "
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/thumb"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "/medium"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_1a3
const-string v0, "http://pic.gd/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1db
const-string v0, "http://www.pic.gd/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1db
const-string v0, "http://tweetphoto.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1db
const-string v0, "http://dev.tweetphoto.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1db
const-string v0, "http://plixi.com/p/ "
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1db
const-string v0, "http://lockerz.com/s/ "
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1db
const-string v0, "http://uat.nonprodlockerz.com/s/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_205
:cond_1db
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "http://pic.gd//imagefromurl?size=thumbnail& url="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://pic.gd//imagefromurl?size=mobile& url="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_205
const-string v0, "http://flic.kr/p/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_24d
const-string v0, "http://flic.kr/p/"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://flic.kr/p/img/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "_s.jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "http://flic.kr/p/img/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "_m.jpg"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_24d
const-string v0, "http://twitgoo.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_27f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/thumb"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "/img"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_27f
const-string v0, "http://twitsnap.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2bb
const-string v0, "http://twitsnap.com/"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "http://twitsnap.com/mini/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "http://twitsnap.com/snap/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_2bb
const-string v0, "http://i.imgur.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_32a
const-string v0, "http://i.imgur.com/"
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_364
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_364
invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v2
if-lez v2, :cond_364
invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I
move-result v3
const/4 v2, 0x0
invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "http://i.imgur.com/"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, "s"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "http://i.imgur.com/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "m"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_326
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_32a
const-string v0, "http://instagr.am/p/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_360
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "media/?size=t"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "media/?size=l"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v3, v2
move-object v2, v0
goto/16 :goto_47
:cond_35c
sget-object v0, Lcom/twidroid/d/r;->v:Lcom/twidroid/d/s;
goto/16 :goto_7
:cond_360
move-object v2, v1
move-object v3, v1
goto/16 :goto_47
:cond_364
move-object v0, v1
move-object v2, v1
goto :goto_326
.end method
.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
.registers 7
const/4 v3, -0x1
const/4 v1, 0x0
if-eqz p0, :cond_10
if-eqz p2, :cond_10
if-eqz p1, :cond_10
const-string v0, ""
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
:cond_10
move-object v0, v1
:cond_11
:goto_11
return-object v0
:cond_12
invoke-static {}, Lcom/twidroid/d/r;->a()Z
move-result v0
if-eqz v0, :cond_6d
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v2, ".jpg"
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v3, :cond_43
const-string v2, ".png"
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-ne v2, v3, :cond_43
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
if-ne p2, v0, :cond_65
const-string v0, ".jpg"
:goto_3b
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_43
new-instance v3, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const/4 v0, 0x0
if-eqz p2, :cond_68
:try_start_4f
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_54
.catchall {:try_start_4f .. :try_end_54} :catchall_79
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_6f
const/16 v0, 0x64
:try_start_56
invoke-virtual {p0, p2, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
:try_end_5c
.catchall {:try_start_56 .. :try_end_5c} :catchall_85
.catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5c} :catch_87
move-result-object v0
if-eqz v2, :cond_11
:try_start_5f
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_62
.catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63
goto :goto_11
:catch_63
move-exception v1
goto :goto_11
:cond_65
const-string v0, ".png"
goto :goto_3b
:cond_68
if-eqz v1, :cond_6d
:try_start_6a
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
:goto_6d
:cond_6d
:try_end_6d
.catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_81
move-object v0, v1
goto :goto_11
:catch_6f
move-exception v0
move-object v0, v1
:goto_71
if-eqz v0, :cond_6d
:try_start_73
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
:try_end_76
.catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
goto :goto_6d
:catch_77
move-exception v0
goto :goto_6d
:catchall_79
move-exception v0
move-object v2, v1
:goto_7b
if-eqz v2, :cond_80
:try_start_7d
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_80
.catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_83
:goto_80
:cond_80
throw v0
:catch_81
move-exception v0
goto :goto_6d
:catch_83
move-exception v1
goto :goto_80
:catchall_85
move-exception v0
goto :goto_7b
:catch_87
move-exception v0
move-object v0, v2
goto :goto_71
.end method
.method public static a()Z
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_17
const-string v3, "mounted"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_17
move v2, v0
move v3, v0
:goto_12
if-eqz v3, :cond_27
if-eqz v2, :cond_27
:goto_16
return v0
:cond_17
if-eqz v2, :cond_24
const-string v3, "mounted_ro"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_24
move v2, v1
move v3, v0
goto :goto_12
:cond_24
move v2, v1
move v3, v1
goto :goto_12
:cond_27
move v0, v1
goto :goto_16
.end method
.method public static a(Ljava/lang/String;)Z
.registers 2
const-string v0, "http://pic.gd/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
const-string v0, "http://www.pic.gd/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
const-string v0, "http://tweetphoto.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
const-string v0, "http://tweetpho.to/ "
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
const-string v0, "http://dev.tweetphoto.com/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
const-string v0, "http://plixi.com/p/ "
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
const-string v0, "http://lockerz.com/s/ "
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_40
const-string v0, "http://uat.nonprodlockerz.com/s/"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
:cond_40
const/4 v0, 0x1
:goto_41
return v0
:cond_42
const/4 v0, 0x0
goto :goto_41
.end method
.method public static b(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x1
const-string v1, "http://twitpic.com/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
const-string v1, "http://mypict.me/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://yfrog.com/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://api.mobypicture.com"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://twitvid.com/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://pic.gd/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://www.pic.gd/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://tweetphoto.com/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://tweetpho.to/ "
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://dev.tweetphoto.com/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://plixi.com/p/ "
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://lockerz.com/s/ "
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://uat.nonprodlockerz.com/s/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://twitsnap.com/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://flic.kr/p/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://twitgoo.com/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://i.imgur.com/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const-string v1, "http://instagr.am/p/"
invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
const/4 v0, 0x0
goto/16 :goto_9
.end method