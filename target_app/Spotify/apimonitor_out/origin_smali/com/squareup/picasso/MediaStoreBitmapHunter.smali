.class final Lcom/squareup/picasso/MediaStoreBitmapHunter;
.super Lcom/squareup/picasso/h;
.source "SourceFile"


# static fields
.field private static final p:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter;->p:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/squareup/picasso/h;-><init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V

    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .registers 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    sget-object v2, Lcom/squareup/picasso/MediaStoreBitmapHunter;->p:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_30
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_c} :catch_27

    move-result-object v1

    if-eqz v1, :cond_15

    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_38
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_3a

    move-result v0

    if-nez v0, :cond_1c

    :cond_15
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1a
    move v0, v6

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_38
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_3a

    move-result v0

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    :catch_27
    move-exception v0

    move-object v0, v7

    :goto_29
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2e
    move v0, v6

    goto :goto_1b

    :catchall_30
    move-exception v0

    move-object v1, v7

    :goto_32
    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    throw v0

    :catchall_38
    move-exception v0

    goto :goto_32

    :catch_3a
    move-exception v0

    move-object v0, v1

    goto :goto_29
.end method


# virtual methods
.method final a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/squareup/picasso/MediaStoreBitmapHunter;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v0, p1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;

    invoke-static {v3, v0}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/d;->n:I

    iget-object v0, p1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v1

    :goto_20
    invoke-virtual {p1}, Lcom/squareup/picasso/ab;->c()Z

    move-result v2

    if-eqz v2, :cond_7a

    iget v2, p1, Lcom/squareup/picasso/ab;->f:I

    iget v4, p1, Lcom/squareup/picasso/ab;->g:I

    sget-object v5, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->a:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v5, v5, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    if-gt v2, v5, :cond_45

    sget-object v5, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->a:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v5, v5, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    if-gt v4, v5, :cond_45

    sget-object v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->a:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    :goto_38
    if-nez v0, :cond_57

    sget-object v4, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->c:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    if-ne v2, v4, :cond_57

    invoke-super {p0, p1}, Lcom/squareup/picasso/h;->a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_42
    :goto_42
    return-object v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_20

    :cond_45
    sget-object v5, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->b:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v5, v5, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    if-gt v2, v5, :cond_54

    sget-object v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->b:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    iget v2, v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    if-gt v4, v2, :cond_54

    sget-object v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->b:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    goto :goto_38

    :cond_54
    sget-object v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->c:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    goto :goto_38

    :cond_57
    iget-object v4, p1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->b(Lcom/squareup/picasso/ab;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v7, p1, Lcom/squareup/picasso/ab;->f:I

    iget v8, p1, Lcom/squareup/picasso/ab;->g:I

    iget v9, v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->width:I

    iget v10, v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->height:I

    invoke-static {v7, v8, v9, v10, v6}, Lcom/squareup/picasso/MediaStoreBitmapHunter;->a(IIIILandroid/graphics/BitmapFactory$Options;)V

    if-eqz v0, :cond_82

    sget-object v0, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->c:Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;

    if-ne v2, v0, :cond_7f

    :goto_74
    invoke-static {v3, v4, v5, v1, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_78
    if-nez v0, :cond_42

    :cond_7a
    invoke-super {p0, p1}, Lcom/squareup/picasso/h;->a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_42

    :cond_7f
    iget v1, v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->androidKind:I

    goto :goto_74

    :cond_82
    iget v0, v2, Lcom/squareup/picasso/MediaStoreBitmapHunter$PicassoKind;->androidKind:I

    invoke-static {v3, v4, v5, v0, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_78
.end method
