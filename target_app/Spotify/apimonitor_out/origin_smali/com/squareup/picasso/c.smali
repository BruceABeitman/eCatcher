.class final Lcom/squareup/picasso/c;
.super Lcom/squareup/picasso/d;
.source "SourceFile"


# static fields
.field private static final o:I


# instance fields
.field private final p:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x16

    sput v0, Lcom/squareup/picasso/c;->o:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/squareup/picasso/d;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/j;Lcom/squareup/picasso/e;Lcom/squareup/picasso/af;Lcom/squareup/picasso/a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/c;->p:Landroid/content/res/AssetManager;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/squareup/picasso/c;->f:Lcom/squareup/picasso/ab;

    invoke-static {v0}, Lcom/squareup/picasso/c;->b(Lcom/squareup/picasso/ab;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/c;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v2

    if-eqz v2, :cond_25

    :try_start_d
    iget-object v2, p0, Lcom/squareup/picasso/c;->p:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_34

    invoke-static {v1}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/squareup/picasso/c;->f:Lcom/squareup/picasso/ab;

    iget v1, v1, Lcom/squareup/picasso/ab;->f:I

    iget-object v2, p0, Lcom/squareup/picasso/c;->f:Lcom/squareup/picasso/ab;

    iget v2, v2, Lcom/squareup/picasso/ab;->g:I

    invoke-static {v1, v2, v0}, Lcom/squareup/picasso/c;->a(IILandroid/graphics/BitmapFactory$Options;)V

    :cond_25
    iget-object v1, p0, Lcom/squareup/picasso/c;->p:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_2c
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_39

    move-result-object v0

    invoke-static {v1}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    return-object v0

    :catchall_34
    move-exception v0

    invoke-static {v1}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_39
    move-exception v0

    invoke-static {v1}, Lcom/squareup/picasso/am;->a(Ljava/io/InputStream;)V

    throw v0
.end method


# virtual methods
.method final a(Lcom/squareup/picasso/ab;)Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p1, Lcom/squareup/picasso/ab;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/squareup/picasso/c;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/picasso/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method final a()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .registers 2

    sget-object v0, Lcom/squareup/picasso/Picasso$LoadedFrom;->b:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method
