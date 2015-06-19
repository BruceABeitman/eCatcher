.class Lcom/squareup/picasso/h;
.super Lcom/squareup/picasso/d;
.source "SourceFile"


# instance fields
.field final o:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/d;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V

    iput-object p1, p0, Lcom/squareup/picasso/h;->o:Landroid/content/Context;

    return-void
.end method

.method private c(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/squareup/picasso/h;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/squareup/picasso/h;->b(Lcom/squareup/picasso/ab;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/h;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    if-eqz v3, :cond_25

    :try_start_11
    iget-object v3, p1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_34

    invoke-static {v1}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    iget v1, p1, Lcom/squareup/picasso/ab;->f:I

    iget v3, p1, Lcom/squareup/picasso/ab;->g:I

    invoke-static {v1, v3, v2}, Lcom/squareup/picasso/h;->a(IILandroid/graphics/BitmapFactory$Options;)V

    :cond_25
    iget-object v1, p1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_2c
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_39

    move-result-object v1

    invoke-static {v0}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    return-object v1

    :catchall_34
    move-exception v0

    invoke-static {v1}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_39
    move-exception v1

    invoke-static {v0}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    throw v1
.end method


# virtual methods
.method a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/picasso/h;->c(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method final a()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .registers 2

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method
