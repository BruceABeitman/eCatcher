.class public abstract Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/ILoadingLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I = null

.field private static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I = null

.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh-LoadingLayout"


# instance fields
.field protected final mHeaderImage:Landroid/widget/ImageView;

.field protected final mHeaderProgress:Landroid/widget/ProgressBar;

.field private final mHeaderText:Landroid/widget/TextView;

.field private mInnerLayout:Landroid/widget/FrameLayout;

.field protected final mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field protected final mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field private final mSubHeaderText:Landroid/widget/TextView;

.field private mUseIntrinsicAnimation:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I
    .registers 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method static synthetic $SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I
    .registers 3

    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .registers 12

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mMode:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I

    move-result-object v5

    invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_19e

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_vertical:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_1d
    sget v5, Lcom/handmark/pulltorefresh/library/R$id;->fl_inner:I

    invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_text:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_progress:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_sub_text:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    sget v6, Lcom/handmark/pulltorefresh/library/R$id;->pull_to_refresh_image:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I

    move-result-object v5

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1a4

    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_15b

    const/16 v5, 0x50

    :goto_72
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_pull_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_refreshing_label_start:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_release_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    :goto_8c
    const/4 v5, 0x3

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9d

    const/4 v5, 0x3

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9d

    invoke-static {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_9d
    const/16 v5, 0xc

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b4

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const/16 v5, 0xc

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextAppearance(I)V

    :cond_b4
    const/16 v5, 0xd

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_cb

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const/16 v5, 0xd

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextAppearance(I)V

    :cond_cb
    const/4 v5, 0x4

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_dc

    const/4 v5, 0x4

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_dc

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_dc
    const/4 v5, 0x5

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_ed

    const/4 v5, 0x5

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_ed

    invoke-direct {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    :cond_ed
    const/4 v2, 0x0

    const/16 v5, 0x8

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_fc

    const/16 v5, 0x8

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_fc
    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode()[I

    move-result-object v5

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1aa

    const/16 v5, 0x9

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_15e

    const/16 v5, 0x9

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_117
    :goto_117
    if-nez v2, :cond_125

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_125
    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V

    return-void

    :pswitch_12c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/handmark/pulltorefresh/library/R$layout;->pull_to_refresh_header_horizontal:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1d

    :pswitch_137
    sget-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_159

    const/16 v5, 0x30

    :goto_13d
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_pull_label:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_from_bottom_refreshing_label_end:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    sget v5, Lcom/handmark/pulltorefresh/library/R$string;->pull_to_refresh_release_label_end:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    goto/16 :goto_8c

    :cond_159
    const/4 v5, 0x3

    goto :goto_13d

    :cond_15b
    const/4 v5, 0x5

    goto/16 :goto_72

    :cond_15e
    const/16 v5, 0x13

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_117

    const-string/jumbo v5, "ptrDrawableTop"

    const-string/jumbo v6, "ptrDrawableStart"

    invoke-static {v5, v6}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x13

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_117

    :pswitch_176
    const/16 v5, 0xa

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_185

    const/16 v5, 0xa

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_117

    :cond_185
    const/16 v5, 0x14

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_117

    const-string/jumbo v5, "ptrDrawableBottom"

    const-string/jumbo v6, "ptrDrawableEnd"

    invoke-static {v5, v6}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x14

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_117

    :pswitch_data_19e
    .packed-switch 0x2
        :pswitch_12c
    .end packed-switch

    :pswitch_data_1a4
    .packed-switch 0x3
        :pswitch_137
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x3
        :pswitch_176
    .end packed-switch
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .registers 4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_11

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method private setSubTextAppearance(I)V
    .registers 4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_d
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method private setTextAppearance(I)V
    .registers 4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1a
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public final getContentSize()I
    .registers 3

    invoke-static {}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->$SWITCH_TABLE$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation()[I

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_15
    return v0

    :pswitch_16
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_15

    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_16
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final hideAllViews()V
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_28
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method protected abstract onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onPull(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onPullImpl(F)V

    :cond_7
    return-void
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->pullToRefreshImpl()V

    return-void
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_1a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_25
    return-void

    :cond_26
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshingImpl()V

    goto :goto_1a
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->releaseToRefreshImpl()V

    return-void
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_20
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->resetImpl()V

    goto :goto_20

    :cond_3c
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_37
.end method

.method protected abstract resetImpl()V
.end method

.method public final setHeight(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setWidth(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->requestLayout()V

    return-void
.end method

.method public final showInvisibleViews()V
    .registers 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_f

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_29

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_29
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_36

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_36
    return-void
.end method
