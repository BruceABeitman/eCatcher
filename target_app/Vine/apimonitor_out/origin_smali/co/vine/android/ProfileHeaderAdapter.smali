.class public Lco/vine/android/ProfileHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfileHeaderAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ProfileHeaderAdapter$1;,
        Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;,
        Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;,
        Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;,
        Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;,
        Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final FOLLOWING:I = 0x2

.field private static final FOLLOW_REQUESTED:I = 0x3

.field private static final NOT_FOLLOWING:I = 0x1

.field private static final SPAN_FLAGS:I = 0x21

.field public static final TAB_LIKES:I = 0x1

.field public static final TAB_POST:I


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private mBlocked:Z

.field private final mBold:Lco/vine/android/widget/TypefacesSpan;

.field private mContext:Landroid/content/Context;

.field private mCurrentTab:I

.field private mDetailPageHeight:I

.field private mFollowEventSource:Ljava/lang/String;

.field private mFollowState:I

.field private final mFragment:Lco/vine/android/ProfileFragment;

.field private mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

.field private mHolderPagerDetails:Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;

.field private mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mLocked:Z

.field private mMainPageHeight:I

.field private final mNumberUnSelectedColor:I

.field private final mRegular:Lco/vine/android/widget/TypefacesSpan;

.field private mShowActionsContainer:Z

.field private mTabSelectedColor:I

.field private mUser:Lco/vine/android/api/VineUser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/ProfileFragment;ZZLjava/lang/String;ZZ)V
    .registers 16

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v5, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    iput-object p1, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    iput-object p3, p0, Lco/vine/android/ProfileHeaderAdapter;->mFragment:Lco/vine/android/ProfileFragment;

    iput-boolean p4, p0, Lco/vine/android/ProfileHeaderAdapter;->mLocked:Z

    iput-boolean p5, p0, Lco/vine/android/ProfileHeaderAdapter;->mBlocked:Z

    iput-object p6, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowEventSource:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mNumberUnSelectedColor:I

    new-instance v1, Lco/vine/android/widget/TypefacesSpan;

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mBold:Lco/vine/android/widget/TypefacesSpan;

    new-instance v1, Lco/vine/android/widget/TypefacesSpan;

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v5, v3}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mRegular:Lco/vine/android/widget/TypefacesSpan;

    iput-boolean p8, p0, Lco/vine/android/ProfileHeaderAdapter;->mShowActionsContainer:Z

    iput v5, p0, Lco/vine/android/ProfileHeaderAdapter;->mCurrentTab:I

    return-void
.end method

.method static synthetic access$102(Lco/vine/android/ProfileHeaderAdapter;Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;)Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;
    .registers 2

    iput-object p1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    return-object p1
.end method

.method static synthetic access$200(Lco/vine/android/ProfileHeaderAdapter;)Lco/vine/android/api/VineUser;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    return-object v0
.end method

.method static synthetic access$302(Lco/vine/android/ProfileHeaderAdapter;Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;)Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;
    .registers 2

    iput-object p1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerDetails:Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;

    return-object p1
.end method

.method static synthetic access$400(Lco/vine/android/ProfileHeaderAdapter;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/ProfileHeaderAdapter;->invalidateDetailHeight()V

    return-void
.end method

.method private invalidateCount(ILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V
    .registers 15

    const/16 v9, 0x22

    const/16 v8, 0x21

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-long v6, p1

    invoke-static {p2, v6, v7}, Lco/vine/android/util/Util;->numberFormat(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p2, p3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    iget-object v4, p0, Lco/vine/android/ProfileHeaderAdapter;->mBold:Lco/vine/android/widget/TypefacesSpan;

    invoke-static {v0, v4, v2, v1, v8}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    iget-object v4, p0, Lco/vine/android/ProfileHeaderAdapter;->mRegular:Lco/vine/android/widget/TypefacesSpan;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v4, v1, v5, v8}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p4, v0}, Lco/vine/android/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private invalidateCountAndTabColor(IILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V
    .registers 6

    invoke-direct {p0, p2, p3, p4, p5}, Lco/vine/android/ProfileHeaderAdapter;->invalidateCount(ILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V

    invoke-direct {p0, p1, p5}, Lco/vine/android/ProfileHeaderAdapter;->invalidateTabColor(ILandroid/widget/TextView;)V

    return-void
.end method

.method private invalidateDetailHeight()V
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerDetails:Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerDetails:Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;

    iget-object v1, v3, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->parent:Landroid/view/View;

    if-eqz v1, :cond_34

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mDetailPageHeight:I

    iget v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mMainPageHeight:I

    if-gtz v3, :cond_34

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v3, v3, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    iput v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mMainPageHeight:I

    :cond_34
    return-void
.end method

.method private invalidateTabColor(ILandroid/widget/TextView;)V
    .registers 4

    iget v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mCurrentTab:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mTabSelectedColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mNumberUnSelectedColor:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .registers 7

    const/16 v4, 0x8

    if-nez p1, :cond_31

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageAction:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageAction:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_28

    :cond_31
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageAction:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    iget-object v2, v2, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_28
.end method

.method private setupFollowButton(Landroid/widget/Button;Lco/vine/android/api/VineUser;)V
    .registers 16

    const/4 v12, 0x3

    const/high16 v11, -0x100

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v0, p2, Lco/vine/android/api/VineUser;->profileBackground:I

    sget v3, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq v0, v3, :cond_e

    if-gtz v0, :cond_1b

    :cond_e
    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090096

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_1b
    or-int/2addr v0, v11

    invoke-virtual {p2}, Lco/vine/android/api/VineUser;->hasFollowRequested()Z

    move-result v3

    if-eqz v3, :cond_58

    iput v12, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    :cond_24
    :goto_24
    iget v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    if-ne v3, v10, :cond_70

    move v3, v4

    :goto_29
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setActivated(Z)V

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    if-ne v3, v10, :cond_72

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x7f0e0102

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4a
    :goto_4a
    iget v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    if-eq v3, v12, :cond_86

    const v3, 0x7f020121

    invoke-static {v2, v0, v3, p1}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    :goto_57
    return-void

    :cond_58
    invoke-virtual {p2}, Lco/vine/android/api/VineUser;->isFollowing()Z

    move-result v3

    if-eqz v3, :cond_61

    iput v10, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    goto :goto_24

    :cond_61
    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v6

    iget-wide v8, p2, Lco/vine/android/api/VineUser;->userId:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_24

    iput v4, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    goto :goto_24

    :cond_70
    move v3, v5

    goto :goto_29

    :cond_72
    iget v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    if-ne v3, v4, :cond_4a

    or-int v3, v0, v11

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x7f0e00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    :cond_86
    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v3, 0x7f020121

    invoke-static {v2, v1, v3, p1}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    const v3, 0x7f0e0100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v3, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    goto :goto_57
.end method

.method private setupMessageButton(Landroid/widget/Button;Lco/vine/android/api/VineUser;)V
    .registers 8

    iget v0, p2, Lco/vine/android/api/VineUser;->profileBackground:I

    sget v2, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq v0, v2, :cond_8

    if-gtz v0, :cond_1a

    :cond_8
    const v2, 0xffffff

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    and-int v0, v2, v3

    :cond_1a
    const/high16 v2, -0x100

    or-int/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x3d00

    or-int/2addr v2, v0

    const v3, 0x7f0200b3

    invoke-static {v1, v2, v3, p1}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindUser(Lco/vine/android/api/VineUser;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    if-eqz v2, :cond_1a4

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    if-eqz v2, :cond_1a4

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerDetails:Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;

    if-eqz v2, :cond_1a4

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerDetails:Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v2, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    move-object/from16 v0, p1

    iget-object v2, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-static {v2}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ae

    :cond_40
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/vine/android/ProfileHeaderAdapter;->setImage(Landroid/graphics/Bitmap;)V

    :goto_46
    iget-object v2, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    check-cast v2, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->username:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v3, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget v2, v0, Lco/vine/android/api/VineUser;->profileBackground:I

    if-lez v2, :cond_75

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileBackground:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    iget v3, v0, Lco/vine/android/api/VineUser;->profileBackground:I

    const/high16 v4, -0x100

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_75
    move-object/from16 v0, p1

    iget v13, v0, Lco/vine/android/api/VineUser;->profileBackground:I

    sget v2, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq v13, v2, :cond_7f

    if-gtz v13, :cond_8e

    :cond_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    :cond_8e
    const/high16 v2, -0x100

    or-int/2addr v13, v2

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/ProfileHeaderAdapter;->mTabSelectedColor:I

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileTabArrowImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v4, 0x4c00

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1cb

    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->description:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v3, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->description:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_bc
    move-object/from16 v0, p1

    iget-object v2, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d4

    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->location:Landroid/widget/TextView;

    move-object/from16 v0, p1

    iget-object v3, v0, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->location:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d5
    move-object/from16 v0, p1

    iget-wide v2, v0, Lco/vine/android/api/VineUser;->userId:J

    iput-wide v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userId:J

    invoke-virtual/range {p1 .. p1}, Lco/vine/android/api/VineUser;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_1dd

    iget-object v2, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->verified:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_e7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mBlocked:Z

    if-nez v2, :cond_fd

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v6, v0, Lco/vine/android/api/VineUser;->userId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1e6

    :cond_fd
    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->messageButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_104
    iget-object v8, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->follow:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mBlocked:Z

    if-nez v2, :cond_11c

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v6, v0, Lco/vine/android/api/VineUser;->userId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_200

    :cond_11c
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_121
    iget-object v12, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->settings:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v6, v0, Lco/vine/android/api/VineUser;->userId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_214

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_13e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mLocked:Z

    if-eqz v2, :cond_21b

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsParent:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesParent:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->userLoopCount:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileTabArrow:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_160
    iget-object v2, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->imageFrame:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileTabArrow:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p1

    iget v2, v0, Lco/vine/android/api/VineUser;->followerCount:I

    const v3, 0x7f0d0001

    iget-object v4, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->followers:Lco/vine/android/widget/TypefacesTextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v3, v4}, Lco/vine/android/ProfileHeaderAdapter;->invalidateCount(ILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V

    move-object/from16 v0, p1

    iget v2, v0, Lco/vine/android/api/VineUser;->followingCount:I

    const v3, 0x7f0d0002

    iget-object v4, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->following:Lco/vine/android/widget/TypefacesTextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v3, v4}, Lco/vine/android/ProfileHeaderAdapter;->invalidateCount(ILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V

    iget-object v2, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->followers:Lco/vine/android/widget/TypefacesTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lco/vine/android/widget/TypefacesTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->following:Lco/vine/android/widget/TypefacesTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lco/vine/android/widget/TypefacesTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a4
    invoke-direct/range {p0 .. p0}, Lco/vine/android/ProfileHeaderAdapter;->invalidateDetailHeight()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    return-void

    :cond_1ae
    new-instance v2, Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p1

    iget-object v3, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V

    iput-object v2, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {v2, v3}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lco/vine/android/ProfileHeaderAdapter;->setImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_46

    :cond_1cb
    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->description:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bc

    :cond_1d4
    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->location:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d5

    :cond_1dd
    iget-object v2, v11, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->verified:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e7

    :cond_1e6
    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->messageButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->messageButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->messageButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lco/vine/android/ProfileHeaderAdapter;->setupMessageButton(Landroid/widget/Button;Lco/vine/android/api/VineUser;)V

    goto/16 :goto_104

    :cond_200
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lco/vine/android/ProfileHeaderAdapter;->setupFollowButton(Landroid/widget/Button;Lco/vine/android/api/VineUser;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_121

    :cond_214
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_13e

    :cond_21b
    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsParent:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesParent:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->userLoopCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileTabArrow:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v2, v0, Lco/vine/android/ProfileHeaderAdapter;->mCurrentTab:I

    if-nez v2, :cond_2a0

    const/4 v2, 0x0

    :goto_236
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileHeaderAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p1

    iget-wide v2, v0, Lco/vine/android/api/VineUser;->loopCount:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v2, v6

    if-lez v2, :cond_25d

    const-wide/32 v2, 0x7fffffff

    move-object/from16 v0, p1

    iput-wide v2, v0, Lco/vine/android/api/VineUser;->loopCount:J

    :cond_25d
    iget-object v2, v10, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->userLoopCount:Landroid/widget/TextView;

    const v3, 0x7f0d0004

    move-object/from16 v0, p1

    iget-wide v6, v0, Lco/vine/android/api/VineUser;->loopCount:J

    long-to-int v4, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Lco/vine/android/api/VineUser;->loopCount:J

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v5, v14, v15, v0}, Lco/vine/android/util/Util;->numberFormat(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    invoke-virtual {v5, v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Lco/vine/android/api/VineUser;->likeCount:I

    const v6, 0x7f0d0003

    iget-object v7, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesLabel:Lco/vine/android/widget/TypefacesTextView;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lco/vine/android/ProfileHeaderAdapter;->invalidateCountAndTabColor(IILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lco/vine/android/api/VineUser;->postCount:I

    const v6, 0x7f0d0005

    iget-object v7, v9, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsLabel:Lco/vine/android/widget/TypefacesTextView;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lco/vine/android/ProfileHeaderAdapter;->invalidateCountAndTabColor(IILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V

    goto/16 :goto_160

    :cond_2a0
    const/16 v2, 0x8

    goto :goto_236
.end method

.method public changeSelectedTab(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    sparse-switch p1, :sswitch_data_38

    :goto_a
    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsLabel:Lco/vine/android/widget/TypefacesTextView;

    invoke-direct {p0, v0, v1}, Lco/vine/android/ProfileHeaderAdapter;->invalidateTabColor(ILandroid/widget/TextView;)V

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesLabel:Lco/vine/android/widget/TypefacesTextView;

    invoke-direct {p0, v3, v1}, Lco/vine/android/ProfileHeaderAdapter;->invalidateTabColor(ILandroid/widget/TextView;)V

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileTabArrow:Landroid/view/ViewGroup;

    iget v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mCurrentTab:I

    if-nez v2, :cond_35

    :goto_20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    :sswitch_24
    iput v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mCurrentTab:I

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mFragment:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, v3}, Lco/vine/android/ProfileFragment;->changeMode(I)V

    goto :goto_a

    :sswitch_2c
    iput v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mCurrentTab:I

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mFragment:Lco/vine/android/ProfileFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->changeMode(I)V

    goto :goto_a

    :cond_35
    const/16 v0, 0x8

    goto :goto_20

    :sswitch_data_38
    .sparse-switch
        0x7f0a0190 -> :sswitch_24
        0x7f0a0194 -> :sswitch_2c
    .end sparse-switch
.end method

.method public getCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_60

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030076

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    invoke-direct {v1, p2}, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;-><init>(Lco/vine/android/ProfileHeaderAdapter;Lco/vine/android/ProfileHeaderAdapter$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dots:Lco/vine/android/widget/DotIndicators;

    invoke-virtual {v1, v0}, Lco/vine/android/widget/DotIndicators;->setFinalIcon(Z)V

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dots:Lco/vine/android/widget/DotIndicators;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lco/vine/android/widget/DotIndicators;->setNumberOfDots(I)V

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dropDownHolder:Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;->revineParent:Landroid/view/View;

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mFragment:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileActions:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mShowActionsContainer:Z

    if-eqz v2, :cond_61

    :goto_54
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileHeaderAdapter;->bindUser(Lco/vine/android/api/VineUser;)V

    :cond_60
    return-object p2

    :cond_61
    const/16 v0, 0x8

    goto :goto_54
.end method

.method public onImageLoaded(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;

    iget-object v1, v1, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;->userImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    if-eqz v0, :cond_1b

    iget-object v1, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lco/vine/android/ProfileHeaderAdapter;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1b
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2d

    iget v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mMainPageHeight:I

    if-lez v2, :cond_2d

    iget v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mDetailPageHeight:I

    iget v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mMainPageHeight:I

    if-le v2, v3, :cond_2d

    iget v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mDetailPageHeight:I

    iget v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mMainPageHeight:I

    sub-int v0, v2, v3

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v2, v2, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mMainPageHeight:I

    int-to-float v2, v2

    int-to-float v3, v0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v2, v2, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2d
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dots:Lco/vine/android/widget/DotIndicators;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, v0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dots:Lco/vine/android/widget/DotIndicators;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/DotIndicators;->setActiveDot(I)V

    :cond_11
    return-void
.end method

.method public onProfileHeaderClick(Landroid/view/View;Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)V
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_ca

    :cond_b
    :goto_b
    :sswitch_b
    return-void

    :sswitch_c
    const-string v2, "Profile"

    invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackVisitFindFriends(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lco/vine/android/SettingsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    :sswitch_1c
    iget v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-wide v4, v4, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    iput v7, p3, Lco/vine/android/api/VineUser;->following:I

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v2, v2, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->follow:Landroid/widget/Button;

    invoke-direct {p0, v2, p3}, Lco/vine/android/ProfileHeaderAdapter;->setupFollowButton(Landroid/widget/Button;Lco/vine/android/api/VineUser;)V

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowEventSource:Ljava/lang/String;

    invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackFollow(Ljava/lang/String;)V

    goto :goto_b

    :cond_43
    iget v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    if-ne v2, v6, :cond_73

    invoke-virtual {p3}, Lco/vine/android/api/VineUser;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_6e

    iget v2, p3, Lco/vine/android/api/VineUser;->followStatus:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p3, Lco/vine/android/api/VineUser;->followStatus:I

    :goto_53
    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v2, v2, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->follow:Landroid/widget/Button;

    invoke-direct {p0, v2, p3}, Lco/vine/android/ProfileHeaderAdapter;->setupFollowButton(Landroid/widget/Button;Lco/vine/android/api/VineUser;)V

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-wide v4, v4, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->userId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lco/vine/android/client/AppController;->followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b

    :cond_6e
    iput v6, p3, Lco/vine/android/api/VineUser;->following:I

    iput v6, p3, Lco/vine/android/api/VineUser;->repostsEnabled:I

    goto :goto_53

    :cond_73
    iget v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mFollowState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    goto :goto_b

    :sswitch_79
    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mFragment:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lco/vine/android/HomeTabActivity;

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mFragment:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lco/vine/android/HomeTabActivity;

    invoke-virtual {v2}, Lco/vine/android/HomeTabActivity;->resetNav()V

    :cond_8e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lco/vine/android/ProfileHeaderAdapter;->changeSelectedTab(I)V

    goto/16 :goto_b

    :sswitch_97
    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    iget-wide v2, v2, Lco/vine/android/api/VineUser;->userId:J

    iget-object v4, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_ba

    const-string v2, "Profile"

    invoke-static {v2}, Lco/vine/android/util/FlurryUtils;->trackVisitSettings(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lco/vine/android/SettingsActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    :cond_ba
    invoke-static {v7}, Lco/vine/android/util/FlurryUtils;->trackProfileImageClick(Z)V

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    iget-object v2, v2, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    const v3, 0x7f0e021e

    invoke-static {v0, v2, v3}, Lco/vine/android/ImageActivity;->start(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_b

    nop

    :sswitch_data_ca
    .sparse-switch
        0x7f0a0063 -> :sswitch_97
        0x7f0a018c -> :sswitch_c
        0x7f0a018d -> :sswitch_1c
        0x7f0a018e -> :sswitch_b
        0x7f0a0190 -> :sswitch_79
        0x7f0a0194 -> :sswitch_79
    .end sparse-switch
.end method

.method public onProfileHeaderLongClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J

    iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/4 v0, 0x1

    invoke-static {v0}, Lco/vine/android/util/FlurryUtils;->trackProfileImageClick(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;

    iget-object v1, v1, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    const v2, 0x7f0e021e

    invoke-static {v0, v1, v2}, Lco/vine/android/ImageActivity;->start(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7

    nop

    :pswitch_data_30
    .packed-switch 0x7f0a0063
        :pswitch_8
    .end packed-switch
.end method

.method public updatePostCount(II)V
    .registers 14

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v10, p0, Lco/vine/android/ProfileHeaderAdapter;->mHolder:Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;

    iget-object v0, p0, Lco/vine/android/ProfileHeaderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1f

    if-eqz v10, :cond_1f

    if-nez p2, :cond_20

    const v4, 0x7f0d0005

    iget-object v5, v10, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsLabel:Lco/vine/android/widget/TypefacesTextView;

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lco/vine/android/ProfileHeaderAdapter;->invalidateCountAndTabColor(IILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V

    iget-object v0, v10, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesLabel:Lco/vine/android/widget/TypefacesTextView;

    invoke-direct {p0, v6, v0}, Lco/vine/android/ProfileHeaderAdapter;->invalidateTabColor(ILandroid/widget/TextView;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const v8, 0x7f0d0003

    iget-object v9, v10, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesLabel:Lco/vine/android/widget/TypefacesTextView;

    move-object v4, p0

    move v5, v6

    move v6, p1

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lco/vine/android/ProfileHeaderAdapter;->invalidateCountAndTabColor(IILandroid/content/res/Resources;ILco/vine/android/widget/TypefacesTextView;)V

    iget-object v0, v10, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsLabel:Lco/vine/android/widget/TypefacesTextView;

    invoke-direct {p0, v1, v0}, Lco/vine/android/ProfileHeaderAdapter;->invalidateTabColor(ILandroid/widget/TextView;)V

    goto :goto_1f
.end method
