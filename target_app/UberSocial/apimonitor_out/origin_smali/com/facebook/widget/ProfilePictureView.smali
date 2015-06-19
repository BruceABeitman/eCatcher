.class public Lcom/facebook/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = null

.field public static final b:I = -0x1

.field public static final c:I = -0x2

.field public static final d:I = -0x3

.field public static final e:I = -0x4

.field private static final f:I = 0x1

.field private static final g:Z = true

.field private static final h:Ljava/lang/String; = "ProfilePictureView_superState"

.field private static final i:Ljava/lang/String; = "ProfilePictureView_profileId"

.field private static final j:Ljava/lang/String; = "ProfilePictureView_presetSize"

.field private static final k:Ljava/lang/String; = "ProfilePictureView_isCropped"

.field private static final l:Ljava/lang/String; = "ProfilePictureView_bitmap"

.field private static final m:Ljava/lang/String; = "ProfilePictureView_width"

.field private static final n:Ljava/lang/String; = "ProfilePictureView_height"

.field private static final o:Ljava/lang/String; = "ProfilePictureView_refresh"


# instance fields
.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/widget/ImageView;

.field private v:I

.field private w:Lcom/facebook/widget/u;

.field private x:Lcom/facebook/widget/at;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/widget/ProfilePictureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/ProfilePictureView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->v:I

    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->v:I

    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->s:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->v:I

    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->removeAllViews()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->u:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->u:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->u:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/v;->com_facebook_profile_picture_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/widget/ProfilePictureView;->setPresetSize(I)V

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/ProfilePictureView;->s:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/widget/x;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->a(Lcom/facebook/widget/x;)V

    return-void
.end method

.method private a(Lcom/facebook/widget/x;)V
    .registers 7

    invoke-virtual {p1}, Lcom/facebook/widget/x;->a()Lcom/facebook/widget/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->w:Lcom/facebook/widget/u;

    if-ne v0, v1, :cond_38

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->w:Lcom/facebook/widget/u;

    invoke-virtual {p1}, Lcom/facebook/widget/x;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/widget/x;->b()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->x:Lcom/facebook/widget/at;

    if-eqz v0, :cond_39

    new-instance v2, Lcom/facebook/t;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in downloading profile picture for profileId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lcom/facebook/widget/at;->a(Lcom/facebook/t;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    sget-object v0, Lcom/facebook/af;->a:Lcom/facebook/af;

    const/4 v2, 0x6

    sget-object v3, Lcom/facebook/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/facebook/b/j;->a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_46
    if-eqz v0, :cond_38

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/facebook/widget/x;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->b(Z)V

    goto :goto_38
.end method

.method private a(Z)V
    .registers 4

    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    if-nez v1, :cond_1c

    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    if-nez v1, :cond_1c

    :cond_18
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->b()V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    if-nez v0, :cond_20

    if-eqz p1, :cond_1b

    :cond_20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->b(Z)V

    goto :goto_1b
.end method

.method private b()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Lcom/facebook/a/q;->com_facebook_profile_picture_blank_square:I

    :goto_8
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_14
    sget v0, Lcom/facebook/a/q;->com_facebook_profile_picture_blank_portrait:I

    goto :goto_8
.end method

.method private b(Z)V
    .registers 7

    :try_start_0
    new-instance v0, Lcom/facebook/widget/v;

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    iget v4, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    invoke-static {v2, v3, v4}, Lcom/facebook/widget/u;->a(Ljava/lang/String;II)Ljava/net/URL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/v;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    invoke-virtual {v0, p1}, Lcom/facebook/widget/v;->a(Z)Lcom/facebook/widget/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/widget/v;->a(Ljava/lang/Object;)Lcom/facebook/widget/v;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/ProfilePictureView$1;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ProfilePictureView$1;-><init>(Lcom/facebook/widget/ProfilePictureView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/v;->a(Lcom/facebook/widget/w;)Lcom/facebook/widget/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/v;->a()Lcom/facebook/widget/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->w:Lcom/facebook/widget/u;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->w:Lcom/facebook/widget/u;

    invoke-static {v1}, Lcom/facebook/widget/p;->b(Lcom/facebook/widget/u;)Z

    :cond_31
    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->w:Lcom/facebook/widget/u;

    invoke-static {v0}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/u;)V
    :try_end_36
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v0

    sget-object v1, Lcom/facebook/af;->a:Lcom/facebook/af;

    const/4 v2, 0x6

    sget-object v3, Lcom/facebook/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/b/j;->a(Lcom/facebook/af;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method private c(Z)I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->v:I

    packed-switch v1, :pswitch_data_1e

    :cond_6
    :goto_6
    return v0

    :pswitch_7
    sget v0, Lcom/facebook/a/p;->com_facebook_profilepictureview_preset_size_small:I

    :goto_9
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_6

    :pswitch_12
    sget v0, Lcom/facebook/a/p;->com_facebook_profilepictureview_preset_size_normal:I

    goto :goto_9

    :pswitch_15
    sget v0, Lcom/facebook/a/p;->com_facebook_profilepictureview_preset_size_large:I

    goto :goto_9

    :pswitch_18
    if-eqz p1, :cond_6

    sget v0, Lcom/facebook/a/p;->com_facebook_profilepictureview_preset_size_normal:I

    goto :goto_9

    nop

    :pswitch_data_1e
    .packed-switch -0x4
        :pswitch_15
        :pswitch_12
        :pswitch_7
        :pswitch_18
    .end packed-switch
.end method

.method private c()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getWidth()I

    move-result v0

    if-lt v0, v4, :cond_e

    if-ge v3, v4, :cond_f

    :cond_e
    :goto_e
    return v2

    :cond_f
    invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->c(Z)I

    move-result v1

    if-eqz v1, :cond_3b

    move v3, v1

    :goto_16
    if-gt v1, v3, :cond_2f

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_1f
    iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    if-ne v1, v3, :cond_27

    iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    if-eq v0, v3, :cond_28

    :cond_27
    move v2, v4

    :cond_28
    iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    goto :goto_e

    :cond_2d
    move v0, v2

    goto :goto_1f

    :cond_2f
    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->a()Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v3

    :goto_36
    move v1, v0

    move v0, v3

    goto :goto_1f

    :cond_39
    move v0, v2

    goto :goto_36

    :cond_3b
    move v1, v0

    goto :goto_16
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->t:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->s:Z

    return v0
.end method

.method public final getOnErrorListener()Lcom/facebook/widget/at;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->x:Lcom/facebook/widget/at;

    return-object v0
.end method

.method public final getPresetSize()I
    .registers 2

    iget v0, p0, Lcom/facebook/widget/ProfilePictureView;->v:I

    return v0
.end method

.method public final getProfileId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->w:Lcom/facebook/widget/u;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    const/4 v7, -0x2

    const/high16 v6, 0x4000

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eq v5, v6, :cond_24

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v7, :cond_24

    invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->c(Z)I

    move-result v0

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    move v1, v2

    :cond_24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eq v5, v6, :cond_43

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v7, :cond_43

    invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->c(Z)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_36
    if-eqz v2, :cond_3f

    invoke-virtual {p0, v1, v0}, Lcom/facebook/widget/ProfilePictureView;->setMeasuredDimension(II)V

    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/ProfilePictureView;->measureChildren(II)V

    :goto_3e
    return-void

    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_3e

    :cond_43
    move v2, v1

    move v1, v3

    goto :goto_36
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    if-eq v0, v1, :cond_c

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ProfilePictureView_superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ProfilePictureView_profileId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    const-string v0, "ProfilePictureView_presetSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->v:I

    const-string v0, "ProfilePictureView_isCropped"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->s:Z

    const-string v0, "ProfilePictureView_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    const-string v0, "ProfilePictureView_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    const-string v0, "ProfilePictureView_bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "ProfilePictureView_refresh"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Z)V

    goto :goto_b
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ProfilePictureView_superState"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "ProfilePictureView_profileId"

    iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ProfilePictureView_presetSize"

    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->v:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ProfilePictureView_isCropped"

    iget-boolean v2, p0, Lcom/facebook/widget/ProfilePictureView;->s:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ProfilePictureView_bitmap"

    iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "ProfilePictureView_width"

    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->r:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ProfilePictureView_height"

    iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->q:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ProfilePictureView_refresh"

    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->w:Lcom/facebook/widget/u;

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    :goto_3f
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1

    :cond_43
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public final setCropped(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/facebook/widget/ProfilePictureView;->s:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Z)V

    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/widget/at;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->x:Lcom/facebook/widget/at;

    return-void
.end method

.method public final setPresetSize(I)V
    .registers 4

    packed-switch p1, :pswitch_data_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use a predefined preset size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    iput p1, p0, Lcom/facebook/widget/ProfilePictureView;->v:I

    invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->requestLayout()V

    return-void

    nop

    :pswitch_data_12
    .packed-switch -0x4
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final setProfileId(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_11
    invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->b()V

    const/4 v0, 0x1

    :cond_15
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Z)V

    return-void
.end method
