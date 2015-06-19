.class public abstract Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.implements Lcom/handmark/pulltorefresh/library/b;
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator; = null
.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh-LoadingLayout"
.field protected final mHeaderImage:Landroid/widget/ImageView;
.field protected final mHeaderProgress:Landroid/widget/ProgressBar;
.field private final mHeaderText:Landroid/widget/TextView;
.field private mInnerLayout:Landroid/widget/FrameLayout;
.field protected final mMode:Lcom/handmark/pulltorefresh/library/g;
.field private mPullLabel:Ljava/lang/CharSequence;
.field private mRefreshingLabel:Ljava/lang/CharSequence;
.field private mReleaseLabel:Ljava/lang/CharSequence;
.field protected final mScrollDirection:Lcom/handmark/pulltorefresh/library/m;
.field private final mSubHeaderText:Landroid/widget/TextView;
.field private mUseIntrinsicAnimation:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/view/animation/LinearInterpolator;
invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V
sput-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/m;Landroid/content/res/TypedArray;)V
.registers 13
const/4 v7, 0x7
const/4 v6, 0x6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v2, 0x3
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mMode:Lcom/handmark/pulltorefresh/library/g;
iput-object p3, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/m;
sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
invoke-virtual {p3}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_18c
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/handmark/pulltorefresh/library/ae;->pull_to_refresh_header_vertical:I
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
:goto_20
sget v0, Lcom/handmark/pulltorefresh/library/ad;->fl_inner:I
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;
sget v1, Lcom/handmark/pulltorefresh/library/ad;->pull_to_refresh_text:I
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;
sget v1, Lcom/handmark/pulltorefresh/library/ad;->pull_to_refresh_progress:I
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;
sget v1, Lcom/handmark/pulltorefresh/library/ad;->pull_to_refresh_sub_text:I
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;
sget v1, Lcom/handmark/pulltorefresh/library/ad;->pull_to_refresh_image:I
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
sget-object v1, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I
move-result v3
aget v1, v1, v3
packed-switch v1, :pswitch_data_192
sget-object v1, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;
if-ne p3, v1, :cond_14c
const/16 v1, 0x50
:goto_73
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
sget v0, Lcom/handmark/pulltorefresh/library/af;->pull_to_refresh_pull_label:I
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;
sget v0, Lcom/handmark/pulltorefresh/library/af;->pull_to_refresh_refreshing_label:I
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;
sget v0, Lcom/handmark/pulltorefresh/library/af;->pull_to_refresh_release_label:I
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;
:goto_8d
invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
if-eqz v0, :cond_9c
invoke-virtual {p4, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_9c
invoke-static {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
:cond_9c
const/16 v0, 0xa
invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
if-eqz v0, :cond_b3
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
const/16 v1, 0xa
invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
iget v0, v0, Landroid/util/TypedValue;->data:I
invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextAppearance(I)V
:cond_b3
const/16 v0, 0xb
invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
if-eqz v0, :cond_ca
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
const/16 v1, 0xb
invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
iget v0, v0, Landroid/util/TypedValue;->data:I
invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextAppearance(I)V
:cond_ca
invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
if-eqz v0, :cond_d9
invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
if-eqz v0, :cond_d9
invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V
:cond_d9
invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
if-eqz v0, :cond_e8
invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
if-eqz v0, :cond_e8
invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V
:cond_e8
const/4 v0, 0x0
invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v1
if-eqz v1, :cond_f3
invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_f3
sget-object v1, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_198
invoke-virtual {p4, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v1
if-eqz v1, :cond_14f
invoke-virtual {p4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_108
:cond_108
if-nez v0, :cond_116
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getDefaultDrawableResId()I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_116
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V
return-void
:pswitch_11d
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/handmark/pulltorefresh/library/ae;->pull_to_refresh_header_horizontal:I
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
goto/16 :goto_20
:pswitch_128
sget-object v1, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;
if-ne p3, v1, :cond_14a
const/16 v1, 0x30
:goto_12e
iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
sget v0, Lcom/handmark/pulltorefresh/library/af;->pull_to_refresh_from_bottom_pull_label:I
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;
sget v0, Lcom/handmark/pulltorefresh/library/af;->pull_to_refresh_from_bottom_refreshing_label:I
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;
sget v0, Lcom/handmark/pulltorefresh/library/af;->pull_to_refresh_from_bottom_release_label:I
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;
goto/16 :goto_8d
:cond_14a
move v1, v2
goto :goto_12e
:cond_14c
const/4 v1, 0x5
goto/16 :goto_73
:cond_14f
const/16 v1, 0x11
invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v1
if-eqz v1, :cond_108
const-string v0, "ptrDrawableTop"
const-string v1, "ptrDrawableStart"
invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x11
invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_108
:pswitch_165
const/16 v1, 0x8
invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v1
if-eqz v1, :cond_174
const/16 v0, 0x8
invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_108
:cond_174
const/16 v1, 0x12
invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v1
if-eqz v1, :cond_108
const-string v0, "ptrDrawableBottom"
const-string v1, "ptrDrawableEnd"
invoke-static {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/Utils;->warnDeprecation(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x12
invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto/16 :goto_108
nop
:pswitch_data_192
.packed-switch 0x1
:pswitch_128
.end packed-switch
:pswitch_data_198
.packed-switch 0x1
:pswitch_165
.end packed-switch
:pswitch_data_18c
.packed-switch 0x1
:pswitch_11d
.end packed-switch
.end method
.method private setSubHeaderText(Ljava/lang/CharSequence;)V
.registers 5
const/16 v2, 0x8
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;
if-eqz v0, :cond_18
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
:goto_18
:cond_18
return-void
:cond_19
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-ne v2, v0, :cond_18
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_18
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
.method public final getContentSize()I
.registers 3
sget-object v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Orientation:[I
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/m;
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/m;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1c
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I
move-result v0
:goto_13
return v0
:pswitch_14
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->mInnerLayout:Landroid/widget/FrameLayout;
invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I
move-result v0
goto :goto_13
nop
:pswitch_data_1c
.packed-switch 0x1
:pswitch_14
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