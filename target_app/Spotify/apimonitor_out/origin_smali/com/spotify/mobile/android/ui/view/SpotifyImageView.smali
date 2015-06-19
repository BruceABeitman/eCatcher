.class public Lcom/spotify/mobile/android/ui/view/SpotifyImageView;
.super Lcom/spotify/mobile/android/util/StatefulImageView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/net/Uri;

.field private c:Landroid/net/Uri;

.field private d:Z

.field private e:Lcom/squareup/picasso/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/StatefulImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;-><init>(Lcom/spotify/mobile/android/ui/view/SpotifyImageView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->e:Lcom/squareup/picasso/ai;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/StatefulImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;-><init>(Lcom/spotify/mobile/android/ui/view/SpotifyImageView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->e:Lcom/squareup/picasso/ai;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/util/StatefulImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView$1;-><init>(Lcom/spotify/mobile/android/ui/view/SpotifyImageView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->e:Lcom/squareup/picasso/ai;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/view/SpotifyImageView;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->c:Landroid/net/Uri;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/spotify/music/d;->M:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->d:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a:I

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a:I

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_7
    const-string v3, "A default drawable has not been set yet!"

    invoke-static {v0, v3}, Lcom/google/common/base/i;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->b:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_18
    if-eqz v1, :cond_1f

    :goto_1a
    return-void

    :cond_1b
    move v0, v2

    goto :goto_7

    :cond_1d
    move v1, v2

    goto :goto_18

    :cond_1f
    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->c:Landroid/net/Uri;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a:I

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->setImageResource(I)V

    goto :goto_1a

    :cond_31
    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a:I

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a:I

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->e:Lcom/squareup/picasso/ai;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    goto :goto_1a
.end method

.method protected onMeasure(II)V
    .registers 6

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->d:Z

    if-eqz v0, :cond_31

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_2b

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f00

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_2b
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_31
    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/util/StatefulImageView;->onMeasure(II)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->b:Landroid/net/Uri;

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/util/StatefulImageView;->setImageResource(I)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Do not use the setImageUri for spotify images!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
