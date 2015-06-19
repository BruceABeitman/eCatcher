.class public Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;
.super Landroid/widget/ImageView;
.source "PGEditRoundedImageView.java"


# static fields
.field private static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType:[I = null

.field public static final DEFAULT_BORDER_WIDTH:I = 0x0

.field public static final DEFAULT_RADIUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:I

.field private mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrgBitmap:Landroid/graphics/Bitmap;

.field private mOval:Z

.field private mRoundBackground:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
    .registers 3

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_66

    :goto_15
    :try_start_15
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_64

    :goto_1e
    :try_start_1e
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_62

    :goto_27
    :try_start_27
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_60

    :goto_30
    :try_start_30
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_5e

    :goto_39
    :try_start_39
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_5c

    :goto_42
    :try_start_42
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_5a

    :goto_4b
    :try_start_4b
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_58

    :goto_55
    sput-object v0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    goto :goto_4

    :catch_58
    move-exception v1

    goto :goto_55

    :catch_5a
    move-exception v1

    goto :goto_4b

    :catch_5c
    move-exception v1

    goto :goto_42

    :catch_5e
    move-exception v1

    goto :goto_39

    :catch_60
    move-exception v1

    goto :goto_30

    :catch_62
    move-exception v1

    goto :goto_27

    :catch_64
    move-exception v1

    goto :goto_1e

    :catch_66
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    const/high16 v0, -0x100

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mRoundBackground:Z

    iput-boolean v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOval:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    const/high16 v5, -0x100

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mRoundBackground:Z

    iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOval:Z

    sget-object v2, LvStudio/Android/Camera360/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-ltz v1, :cond_28

    sget-object v2, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_28
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    if-gez v2, :cond_3c

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    :cond_3c
    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    if-gez v2, :cond_42

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    :cond_42
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_53

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    :cond_53
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mRoundBackground:Z

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOval:Z

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Z)V
    .registers 9

    const/4 v4, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    instance-of v3, p1, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    if-eqz v3, :cond_38

    check-cast p1, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    move-result-object v5

    iget-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mRoundBackground:Z

    if-nez v3, :cond_32

    if-eqz p2, :cond_32

    move v3, v4

    :goto_17
    int-to-float v3, v3

    invoke-virtual {v5, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->setCornerRadius(F)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    move-result-object v3

    iget-boolean v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mRoundBackground:Z

    if-nez v5, :cond_35

    if-eqz p2, :cond_35

    :goto_22
    invoke-virtual {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->setBorderWidth(I)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    move-result-object v3

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    move-result-object v3

    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOval:Z

    invoke-virtual {v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->setOval(Z)Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    goto :goto_3

    :cond_32
    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    goto :goto_17

    :cond_35
    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    goto :goto_22

    :cond_38
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    const/4 v0, 0x0

    :goto_44
    if-ge v0, v1, :cond_3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_44
.end method

.method private updateBackgroundDrawableAttrs()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private updateDrawableAttrs()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    return v0
.end method

.method public getCornerRadius()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isOval()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOval:Z

    return v0
.end method

.method public isRoundBackground()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mRoundBackground:Z

    return v0
.end method

.method rotate(F)V
    .registers 9

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_24
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateBackgroundDrawableAttrs()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBorderColor(I)V
    .registers 3

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->setBorderColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_1b

    :goto_b
    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateBackgroundDrawableAttrs()V

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->invalidate()V

    goto :goto_8

    :cond_1b
    const/high16 v0, -0x100

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_b
.end method

.method public setBorderWidth(I)V
    .registers 3

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mBorderWidth:I

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->invalidate()V

    goto :goto_4
.end method

.method public setCornerRadius(I)V
    .registers 3

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mCornerRadius:I

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateBackgroundDrawableAttrs()V

    goto :goto_4
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_12

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;

    invoke-direct {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateDrawableAttrs()V

    :goto_c
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_c
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->setOrgBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_18

    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateDrawableAttrs()V

    :goto_12
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_12
.end method

.method public setImageResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOrgBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOrgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOval(Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mOval:Z

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->invalidate()V

    return-void
.end method

.method public setRoundBackground(Z)V
    .registers 3

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mRoundBackground:Z

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->invalidate()V

    goto :goto_4
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_27

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1e
    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateDrawableAttrs()V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->updateBackgroundDrawableAttrs()V

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRoundedImageView;->invalidate()V

    :cond_27
    return-void

    :pswitch_28
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1e

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method
