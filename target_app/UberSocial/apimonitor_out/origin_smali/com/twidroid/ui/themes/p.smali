.class public Lcom/twidroid/ui/themes/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "http://twidroydfactory.appspot.com"

.field public static final b:Ljava/lang/String; = "http://twidroydfactory.appspot.com/u/"

.field public static final c:Ljava/lang/String; = "http://twidroydfactory.appspot.com/u/activate"

.field public static final d:Ljava/lang/String; = "custom_theme_cache.json"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/d/v;Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/twidroid/d/v;->bb()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lcom/twidroid/d/v;Landroid/widget/ImageView;)V
    .registers 7

    if-eqz p2, :cond_8

    :try_start_2
    invoke-virtual {p1}, Lcom/twidroid/d/v;->ba()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/twidroid/d/v;->ba()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Lcom/twidroid/d/v;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/high16 v1, 0x42a0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x3f80

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x33

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    goto :goto_8

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static a(Lcom/twidroid/d/v;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/d/v;->bd()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/twidroid/d/v;->be()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_13

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    if-eqz p2, :cond_18

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_18
    invoke-virtual {p0}, Lcom/twidroid/d/v;->bg()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/twidroid/d/v;->bf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_32

    const v1, 0x3dcccccd

    const/high16 v2, -0x4080

    const/high16 v3, 0x4000

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_32
    if-eqz p2, :cond_3e

    const v1, 0x3dcccccd

    const/high16 v2, -0x4080

    const/high16 v3, 0x4000

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public static a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "userid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "themeid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "http://twidroydfactory.appspot.com/u/activate"

    invoke-static {v1, v0, v4, v4}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;

    return-void
.end method
