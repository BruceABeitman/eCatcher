.class public Lco/vine/android/ConversationAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ConversationAdapter.java"

# interfaces
.implements Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
.implements Lco/vine/android/player/HasVideoPlayerAdapter;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ConversationAdapter$ConversationViewHolder;,
        Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;,
        Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;,
        Lco/vine/android/ConversationAdapter$BlurRunnable;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_COUNT:I = 0x2

.field private static final VIEW_TYPE_ME:I = 0x1

.field private static final VIEW_TYPE_YOU:I


# instance fields
.field private final mActivity:Lco/vine/android/ConversationActivity;

.field private final mAppController:Lco/vine/android/client/AppController;

.field private final mAvatarMargin:F

.field private final mAvatars:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBlurHandler:Landroid/os/Handler;

.field private mBlurHandlerThread:Landroid/os/HandlerThread;

.field private final mBlurQueueRunnable:Ljava/lang/Runnable;

.field private mBlurTempBitmap:Landroid/graphics/Bitmap;

.field private final mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

.field private mCurrentBlurBitmap:Landroid/graphics/Bitmap;

.field private mCurrentBlurImageView:Landroid/widget/ImageView;

.field private mCurrentPlaying:I

.field private final mDarkGreySpan:Lco/vine/android/widget/ColoredSpan;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdToPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPlayer:Lco/vine/android/player/SdkVideoView;

.field private final mListView:Landroid/widget/ListView;

.field private final mMessages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lco/vine/android/api/VinePrivateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mMuted:Z

.field private final mMyColor:I

.field private mMyUserId:J

.field private final mPaths:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

.field private final mPlayers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lco/vine/android/player/SdkVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private mRsBlur:Lco/vine/android/recorder/RsBlur;

.field private final mScreenWidth:I

.field private final mSeekInfoManager:Lco/vine/android/util/SeekInfoManager;

.field private final mSharedDescSize:F

.field private mShouldBePlaying:I

.field private final mSidePadding:F

.field private mSingleLoopPosition:I

.field private final mSpanClicker:Lco/vine/android/VineSpanClicker;

.field private final mThumbnails:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrlReverse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVanishedIdDateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoAttr:Landroid/util/AttributeSet;

.field private final mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/ConversationAdapter$ConversationViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mViewedPorterDuffFilterSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/PorterDuffColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mVineDateFormatter:Lco/vine/android/util/VineDateFormatter;

.field private final mWaitingBg:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method public constructor <init>(Lco/vine/android/ConversationActivity;Lco/vine/android/client/AppController;Landroid/widget/ListView;JI)V
    .registers 14

    const/4 v6, 0x0

    const/high16 v3, -0x8000

    invoke-direct {p0, p1, v6, p6}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mPaths:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mUrlReverse:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mThumbnails:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mAvatars:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mVanishedIdDateMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mViewedPorterDuffFilterSet:Landroid/util/SparseArray;

    iput v3, p0, Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I

    iput v3, p0, Lco/vine/android/ConversationAdapter;->mShouldBePlaying:I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mWaitingBg:Landroid/graphics/drawable/ColorDrawable;

    new-instance v2, Lco/vine/android/ConversationAdapter$2;

    invoke-direct {v2, p0}, Lco/vine/android/ConversationAdapter$2;-><init>(Lco/vine/android/ConversationAdapter;)V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    new-instance v2, Lco/vine/android/ConversationAdapter$6;

    invoke-direct {v2, p0}, Lco/vine/android/ConversationAdapter$6;-><init>(Lco/vine/android/ConversationAdapter;)V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mBlurQueueRunnable:Ljava/lang/Runnable;

    iput-wide p4, p0, Lco/vine/android/ConversationAdapter;->mMyUserId:J

    iput-object p1, p0, Lco/vine/android/ConversationAdapter;->mActivity:Lco/vine/android/ConversationActivity;

    new-instance v2, Lco/vine/android/VineSpanClicker;

    invoke-direct {v2, p1}, Lco/vine/android/VineSpanClicker;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mSpanClicker:Lco/vine/android/VineSpanClicker;

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mSpanClicker:Lco/vine/android/VineSpanClicker;

    const-string v3, "ConversationAdapter"

    invoke-virtual {v2, v3}, Lco/vine/android/VineSpanClicker;->setFlurryEventSource(Ljava/lang/String;)V

    iput-object p2, p0, Lco/vine/android/ConversationAdapter;->mAppController:Lco/vine/android/client/AppController;

    new-instance v2, Lco/vine/android/util/SeekInfoManager;

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v2, v3}, Lco/vine/android/util/SeekInfoManager;-><init>(Lco/vine/android/client/AppController;)V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mSeekInfoManager:Lco/vine/android/util/SeekInfoManager;

    iput-object p3, p0, Lco/vine/android/ConversationAdapter;->mListView:Landroid/widget/ListView;

    invoke-static {p1}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, p0, Lco/vine/android/ConversationAdapter;->mScreenWidth:I

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "profile_background"

    sget v3, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lco/vine/android/ConversationAdapter;->mMyColor:I

    invoke-virtual {p1}, Lco/vine/android/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lco/vine/android/ConversationAdapter;->mSharedDescSize:F

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lco/vine/android/ConversationAdapter;->mSidePadding:F

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0b007c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lco/vine/android/ConversationAdapter;->mAvatarMargin:F

    new-instance v2, Lco/vine/android/widget/TypefacesSpan;

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    new-instance v2, Lco/vine/android/widget/ColoredSpan;

    const v3, 0x7f09007b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Lco/vine/android/widget/ColoredSpan;-><init>(I)V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mDarkGreySpan:Lco/vine/android/widget/ColoredSpan;

    new-instance v2, Lco/vine/android/util/VineDateFormatter;

    invoke-direct {v2, v1}, Lco/vine/android/util/VineDateFormatter;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lco/vine/android/ConversationAdapter;->mVineDateFormatter:Lco/vine/android/util/VineDateFormatter;

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mVineDateFormatter:Lco/vine/android/util/VineDateFormatter;

    invoke-virtual {v2}, Lco/vine/android/util/VineDateFormatter;->refreshDates()V

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mVineDateFormatter:Lco/vine/android/util/VineDateFormatter;

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    invoke-virtual {v2, v3}, Lco/vine/android/util/VineDateFormatter;->addSpanForDateSection(Landroid/text/style/TypefaceSpan;)V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/ConversationAdapter;)Lco/vine/android/ConversationActivity;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mActivity:Lco/vine/android/ConversationActivity;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/ConversationAdapter;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lco/vine/android/ConversationAdapter;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mCurrentBlurBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1100(Lco/vine/android/ConversationAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lco/vine/android/ConversationAdapter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lco/vine/android/ConversationAdapter;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mBlurTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1302(Lco/vine/android/ConversationAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationAdapter;->mBlurTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lco/vine/android/ConversationAdapter;)Lco/vine/android/recorder/RsBlur;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mRsBlur:Lco/vine/android/recorder/RsBlur;

    return-object v0
.end method

.method static synthetic access$1402(Lco/vine/android/ConversationAdapter;Lco/vine/android/recorder/RsBlur;)Lco/vine/android/recorder/RsBlur;
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationAdapter;->mRsBlur:Lco/vine/android/recorder/RsBlur;

    return-object p1
.end method

.method static synthetic access$1500(Lco/vine/android/ConversationAdapter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/ConversationAdapter;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/ConversationAdapter;I)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/ConversationAdapter;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/ConversationAdapter;)I
    .registers 2

    iget v0, p0, Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I

    return v0
.end method

.method static synthetic access$500(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/VideoViewInterface;I)Lco/vine/android/util/SeekInfoManager$SeekInfo;
    .registers 4

    invoke-direct {p0, p1, p2}, Lco/vine/android/ConversationAdapter;->getSeekInfoMarkAsRead(Lco/vine/android/player/VideoViewInterface;I)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/VideoViewInterface;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lco/vine/android/ConversationAdapter;->onLoopFinished(Lco/vine/android/player/VideoViewInterface;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/SdkVideoView;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/ConversationAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    return-void
.end method

.method static synthetic access$800(Lco/vine/android/ConversationAdapter;)I
    .registers 2

    iget v0, p0, Lco/vine/android/ConversationAdapter;->mSingleLoopPosition:I

    return v0
.end method

.method static synthetic access$802(Lco/vine/android/ConversationAdapter;I)I
    .registers 2

    iput p1, p0, Lco/vine/android/ConversationAdapter;->mSingleLoopPosition:I

    return p1
.end method

.method static synthetic access$900(Lco/vine/android/ConversationAdapter;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mCurrentBlurImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getSeekInfo(I)Lco/vine/android/util/SeekInfoManager$SeekInfo;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VinePrivateMessage;

    if-eqz v0, :cond_11

    iget-boolean v2, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-nez v2, :cond_12

    sget-object v1, Lco/vine/android/util/SeekInfoManager;->NO_LOOP_LIMIT:Lco/vine/android/util/SeekInfoManager$SeekInfo;

    :cond_11
    :goto_11
    return-object v1

    :cond_12
    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mSeekInfoManager:Lco/vine/android/util/SeekInfoManager;

    invoke-virtual {v2, v1, v0}, Lco/vine/android/util/SeekInfoManager;->getSeekInfo(Lco/vine/android/player/VideoViewInterface;Lco/vine/android/api/VinePrivateMessage;)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v1

    goto :goto_11
.end method

.method private getSeekInfoMarkAsRead(Lco/vine/android/player/VideoViewInterface;I)Lco/vine/android/util/SeekInfoManager$SeekInfo;
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VinePrivateMessage;

    if-eqz v0, :cond_11

    iget-boolean v2, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-nez v2, :cond_12

    sget-object v1, Lco/vine/android/util/SeekInfoManager;->NO_LOOP_LIMIT:Lco/vine/android/util/SeekInfoManager$SeekInfo;

    :cond_11
    :goto_11
    return-object v1

    :cond_12
    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mSeekInfoManager:Lco/vine/android/util/SeekInfoManager;

    invoke-virtual {v2, v1, v0}, Lco/vine/android/util/SeekInfoManager;->getSeekInfo(Lco/vine/android/player/VideoViewInterface;Lco/vine/android/api/VinePrivateMessage;)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v1

    if-nez v1, :cond_11

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mSeekInfoManager:Lco/vine/android/util/SeekInfoManager;

    invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lco/vine/android/util/SeekInfoManager;->markAsRead(ILco/vine/android/api/VinePrivateMessage;)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v1

    goto :goto_11
.end method

.method private getViewAt(I)Landroid/view/View;
    .registers 10

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v2

    sub-int v3, p1, v0

    if-ltz v3, :cond_18

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_3b

    :cond_18
    const-string v4, "Unable to get view for desired position, because it\'s not being displayed on screen: {} {} {}."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_3a
    return-object v4

    :cond_3b
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_3a
.end method

.method private hasPlayerPlaying()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPaused()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private initMessage(Landroid/database/Cursor;)Lco/vine/android/api/VinePrivateMessage;
    .registers 5

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    new-instance v1, Lco/vine/android/api/VinePrivateMessage;

    invoke-direct {v1, p1}, Lco/vine/android/api/VinePrivateMessage;-><init>(Landroid/database/Cursor;)V

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method private initVideoView(ILco/vine/android/ConversationAdapter$ConversationViewHolder;)V
    .registers 5

    iget-object v0, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setAutoShow(Z)V

    new-instance v1, Lco/vine/android/ConversationAdapter$3;

    invoke-direct {v1, p0, p2, p1}, Lco/vine/android/ConversationAdapter$3;-><init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/ConversationAdapter$ConversationViewHolder;I)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnPreparedListener(Lco/vine/android/player/VideoViewInterface$OnPreparedListener;)V

    new-instance v1, Lco/vine/android/ConversationAdapter$4;

    invoke-direct {v1, p0, v0}, Lco/vine/android/ConversationAdapter$4;-><init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/SdkVideoView;)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnErrorListener(Lco/vine/android/player/VideoViewInterface$OnErrorListener;)V

    new-instance v1, Lco/vine/android/ConversationAdapter$5;

    invoke-direct {v1, p0, v0, p1}, Lco/vine/android/ConversationAdapter$5;-><init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/player/SdkVideoView;I)V

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setOnCompletionListener(Lco/vine/android/player/VideoViewInterface$OnCompletionListener;)V

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private invalidateTimestamp(Lco/vine/android/ConversationAdapter$ConversationViewHolder;ILandroid/database/Cursor;Lco/vine/android/api/VinePrivateMessage;)V
    .registers 12

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1c

    const/4 v1, 0x1

    :cond_7
    :goto_7
    if-eqz v1, :cond_59

    iget-object v3, p1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->timestamp:Landroid/widget/TextView;

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mVineDateFormatter:Lco/vine/android/util/VineDateFormatter;

    iget-wide v5, p4, Lco/vine/android/api/VinePrivateMessage;->created:J

    invoke-virtual {v4, v5, v6}, Lco/vine/android/util/VineDateFormatter;->format(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->timestamp:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VinePrivateMessage;

    if-nez v0, :cond_35

    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-direct {p0, p3}, Lco/vine/android/ConversationAdapter;->initMessage(Landroid/database/Cursor;)Lco/vine/android/api/VinePrivateMessage;

    move-result-object v0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    :cond_35
    :goto_35
    if-nez v1, :cond_7

    iget-wide v3, p4, Lco/vine/android/api/VinePrivateMessage;->created:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_53

    iget-wide v3, v0, Lco/vine/android/api/VinePrivateMessage;->created:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_53

    iget-wide v3, p4, Lco/vine/android/api/VinePrivateMessage;->created:J

    iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->created:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-ltz v3, :cond_57

    :cond_53
    const/4 v1, 0x1

    :goto_54
    goto :goto_7

    :cond_55
    const/4 v1, 0x1

    goto :goto_35

    :cond_57
    move v1, v2

    goto :goto_54

    :cond_59
    iget-object v2, p1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->timestamp:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b
.end method

.method private isMessageAlreadyVanished(Lco/vine/android/api/VinePrivateMessage;)Z
    .registers 8

    iget-boolean v2, p1, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, p1, Lco/vine/android/api/VinePrivateMessage;->vanished:Z

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mSeekInfoManager:Lco/vine/android/util/SeekInfoManager;

    iget-wide v3, p1, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-virtual {v2, v3, v4}, Lco/vine/android/util/SeekInfoManager;->get(J)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-wide v2, p1, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    iget-wide v2, p1, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J

    iput-wide v2, v1, Lco/vine/android/util/SeekInfoManager$SeekInfo;->startTime:J

    :cond_20
    invoke-virtual {v1}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lco/vine/android/ConversationAdapter;->vanishMessage(Lco/vine/android/api/VinePrivateMessage;)V

    goto :goto_9

    :cond_2a
    const/4 v0, 0x0

    goto :goto_9

    :cond_2c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private onLoopFinished(Lco/vine/android/player/VideoViewInterface;I)Z
    .registers 10

    const/4 v0, 0x1

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VinePrivateMessage;

    if-eqz v1, :cond_63

    iget-wide v3, v1, Lco/vine/android/api/VinePrivateMessage;->userId:J

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_63

    iget-boolean v3, v1, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-eqz v3, :cond_63

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mSeekInfoManager:Lco/vine/android/util/SeekInfoManager;

    invoke-virtual {v3, p1, v1}, Lco/vine/android/util/SeekInfoManager;->getSeekInfo(Lco/vine/android/player/VideoViewInterface;Lco/vine/android/api/VinePrivateMessage;)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v2

    const-string v3, "{} just looped, seekInfo {}"

    iget-wide v4, v1, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->isExpired()Z

    move-result v3

    if-nez v3, :cond_48

    :cond_34
    :goto_34
    if-eqz v0, :cond_4a

    if-eqz v2, :cond_47

    invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    iget-object v3, v3, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->getLoopsLeftForDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_47
    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_34

    :cond_4a
    invoke-direct {p0, v1}, Lco/vine/android/ConversationAdapter;->vanishMessage(Lco/vine/android/api/VinePrivateMessage;)V

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mAppController:Lco/vine/android/client/AppController;

    new-instance v4, Lco/vine/android/util/video/VideoKey;

    iget-object v5, v1, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lco/vine/android/client/AppController;->removeFromVideoCache(Lco/vine/android/util/video/VideoKey;)V

    invoke-interface {p1}, Lco/vine/android/player/VideoViewInterface;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    invoke-direct {p0, v1, v3, p1}, Lco/vine/android/ConversationAdapter;->vanishView(Lco/vine/android/api/VinePrivateMessage;Lco/vine/android/ConversationAdapter$ConversationViewHolder;Lco/vine/android/player/VideoViewInterface;)V

    goto :goto_47

    :cond_63
    if-nez v1, :cond_47

    const-string v3, "Message was null, limited loop function not working."

    invoke-static {v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    goto :goto_47
.end method

.method private refreshVideoView(ILco/vine/android/ConversationAdapter$ConversationViewHolder;)V
    .registers 10

    iget-object v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    if-nez v4, :cond_14

    iget-object v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->getAttributes()Landroid/util/AttributeSet;

    move-result-object v4

    iput-object v4, p0, Lco/vine/android/ConversationAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    :cond_14
    iget-object v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->suspend()V

    :try_start_19
    iget-object v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1e} :catch_48

    :goto_1e
    new-instance v4, Lco/vine/android/player/SdkVideoView;

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lco/vine/android/ConversationAdapter;->mVideoAttr:Landroid/util/AttributeSet;

    invoke-direct {v4, v5, v6}, Lco/vine/android/player/SdkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0, p1}, Lco/vine/android/ConversationAdapter;->getSeekInfo(I)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v3

    iget-boolean v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->isCurrentUser:Z

    if-nez v4, :cond_3f

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    :cond_3f
    iget-object v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Lco/vine/android/ConversationAdapter;->initVideoView(ILco/vine/android/ConversationAdapter$ConversationViewHolder;)V

    return-void

    :catch_48
    move-exception v0

    :try_start_49
    iget-object v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_4f

    goto :goto_1e

    :catch_4f
    move-exception v1

    const-string v4, "Weird things are happening."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method private releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V
    .registers 8

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_22

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/player/SdkVideoView;

    if-eq v2, p1, :cond_20

    invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->suspend()V

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    move v3, v1

    goto :goto_1d

    :cond_22
    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_30

    if-ltz v3, :cond_31

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid state in conversation adapter. Was seeing this a lot coming back from full record. Commented out the runtime and am just logging"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z
    .registers 10

    const/16 v5, 0x1e0

    iget v1, p3, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->position:I

    if-nez p2, :cond_1c

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09007f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    :goto_1b
    return v4

    :cond_1c
    const/4 v3, 0x0

    iget-object v4, p3, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    if-ne p1, v4, :cond_42

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v5, :cond_42

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, v5, :cond_42

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VinePrivateMessage;

    if-eqz v0, :cond_42

    iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-eqz v4, :cond_42

    invoke-direct {p0, v1}, Lco/vine/android/ConversationAdapter;->getSeekInfo(I)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v3, 0x1

    :cond_42
    if-eqz v3, :cond_6d

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mWaitingBg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lco/vine/android/ConversationAdapter;->mCurrentBlurBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lco/vine/android/ConversationAdapter;->mCurrentBlurImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mBlurHandler:Landroid/os/Handler;

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mBlurQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mBlurHandler:Landroid/os/Handler;

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mBlurQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6b
    const/4 v4, 0x1

    goto :goto_1b

    :cond_6d
    new-instance v4, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_6b
.end method

.method private setupUserImageImage(Lco/vine/android/api/VinePrivateMessage;Lco/vine/android/ConversationAdapter$ConversationViewHolder;Landroid/widget/ImageView;Z)V
    .registers 10

    const/4 v3, 0x0

    if-eqz p4, :cond_d

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v2, 0x7f02016b

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_c
    return-void

    :cond_d
    iget-object v2, p1, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;

    invoke-static {v2}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    sget-object v2, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;

    const/high16 v3, -0x100

    iget v4, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->color:I

    or-int/2addr v3, v4

    invoke-static {p3, v2, v3}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V

    goto :goto_c

    :cond_20
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v1, Lco/vine/android/util/image/ImageKey;

    iget-object v2, p1, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mAvatars:Landroid/util/SparseArray;

    iget v3, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->position:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3d

    invoke-direct {p0, p3, v0, p2}, Lco/vine/android/ConversationAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z

    goto :goto_c

    :cond_3d
    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2, v1}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, p3, v2, p2}, Lco/vine/android/ConversationAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z

    goto :goto_c
.end method

.method private setupUserImageProperties(ILandroid/widget/ImageView;Z)V
    .registers 9

    const/16 v4, 0xb

    const/16 v3, 0x9

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p3, :cond_24

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_20
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_24
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_20
.end method

.method private shouldShowThumbnail(I)Z
    .registers 3

    iget v0, p0, Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I

    if-ne v0, p1, :cond_a

    invoke-direct {p0}, Lco/vine/android/ConversationAdapter;->hasPlayerPlaying()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private styleDescription(Landroid/widget/TextView;Lco/vine/android/api/VinePost;IZ)V
    .registers 16

    const/16 v10, 0x21

    const/4 v9, 0x0

    const/high16 v7, -0x100

    or-int/2addr p3, v7

    if-eqz p2, :cond_33

    iget-object v7, p2, Lco/vine/android/api/VinePost;->transientEntities:Ljava/util/ArrayList;

    if-nez v7, :cond_33

    iget-object v7, p2, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    if-eqz v7, :cond_33

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p2, Lco/vine/android/api/VinePost;->transientEntities:Ljava/util/ArrayList;

    iget-object v7, p2, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineEntity;

    iget-object v7, p2, Lco/vine/android/api/VinePost;->transientEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lco/vine/android/api/VineEntity;->duplicate()Lco/vine/android/api/VineEntity;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_33
    if-eqz p2, :cond_93

    iget-object v4, p2, Lco/vine/android/api/VinePost;->transientEntities:Ljava/util/ArrayList;

    :goto_37
    if-eqz v4, :cond_b2

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v7, p2, Lco/vine/android/api/VinePost;->descriptionSb:Landroid/text/SpannableStringBuilder;

    if-nez v7, :cond_8d

    iget-object v7, p2, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    if-eqz v7, :cond_8d

    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, p2, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v7, p2, Lco/vine/android/api/VinePost;->descriptionSb:Landroid/text/SpannableStringBuilder;

    iget-object v0, p2, Lco/vine/android/api/VinePost;->descriptionSb:Landroid/text/SpannableStringBuilder;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_55
    invoke-static {v4, v0, v7, v8}, Lco/vine/android/util/Util;->adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;IZ)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5c
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineEntity;

    invoke-virtual {v2}, Lco/vine/android/api/VineEntity;->isUserType()Z

    move-result v7

    if-eqz v7, :cond_95

    new-instance v6, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v7, 0x1

    iget-wide v8, v2, Lco/vine/android/api/VineEntity;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, p0, Lco/vine/android/ConversationAdapter;->mSpanClicker:Lco/vine/android/VineSpanClicker;

    invoke-direct {v6, v7, v8, v9}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    invoke-virtual {v6, p3}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    iget v7, v2, Lco/vine/android/api/VineEntity;->start:I

    iget v8, v2, Lco/vine/android/api/VineEntity;->end:I

    const/16 v9, 0x21

    invoke-static {v0, v6, v7, v8, v9}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_88} :catch_89

    goto :goto_5c

    :catch_89
    move-exception v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    :cond_8d
    iget-object v7, p2, Lco/vine/android/api/VinePost;->descriptionSb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_92
    return-void

    :cond_93
    const/4 v4, 0x0

    goto :goto_37

    :cond_95
    :try_start_95
    invoke-virtual {v2}, Lco/vine/android/api/VineEntity;->isTagType()Z

    move-result v7

    if-eqz v7, :cond_5c

    new-instance v6, Lco/vine/android/widget/StyledClickableSpan;

    const/4 v7, 0x4

    iget-object v8, v2, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    iget-object v9, p0, Lco/vine/android/ConversationAdapter;->mSpanClicker:Lco/vine/android/VineSpanClicker;

    invoke-direct {v6, v7, v8, v9}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    invoke-virtual {v6, p3}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    iget v7, v2, Lco/vine/android/api/VineEntity;->start:I

    iget v8, v2, Lco/vine/android/api/VineEntity;->end:I

    const/16 v9, 0x21

    invoke-static {v0, v6, v7, v8, v9}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b1} :catch_89

    goto :goto_5c

    :cond_b2
    if-nez p4, :cond_b6

    if-nez p2, :cond_d1

    :cond_b6
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lco/vine/android/ConversationAdapter;->mActivity:Lco/vine/android/ConversationActivity;

    const v8, 0x7f0e0215

    invoke-virtual {v7, v8}, Lco/vine/android/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lco/vine/android/ConversationAdapter;->mDarkGreySpan:Lco/vine/android/widget/ColoredSpan;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-static {v5, v7, v9, v8, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_92

    :cond_d1
    iget-object v7, p2, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_92
.end method

.method private styleTopSharedDescription(Lco/vine/android/api/VinePost;ZILandroid/widget/TextView;Z)V
    .registers 21

    const/high16 v11, -0x100

    or-int p3, p3, v11

    if-nez p5, :cond_e

    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v11, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-nez v11, :cond_5e

    :cond_e
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v12, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5a

    const v11, 0x7f0e0218

    :goto_1a
    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v11, p0, Lco/vine/android/ConversationAdapter;->mDarkGreySpan:Lco/vine/android/widget/ColoredSpan;

    const/4 v12, 0x0

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-static {v6, v11, v12, v13, v14}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_59

    move-object/from16 v0, p1

    iget-object v11, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-nez v11, :cond_59

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Username is null: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-wide v13, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    const v11, 0x7f0e0216

    goto :goto_1a

    :cond_5e
    move-object/from16 v0, p1

    iget-object v11, v0, Lco/vine/android/api/VinePost;->sharedVmSb:Landroid/text/SpannableStringBuilder;

    if-nez v11, :cond_106

    iget-object v12, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_11a

    const v11, 0x7f0e0219

    :goto_6b
    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, p1

    iput-object v11, v0, Lco/vine/android/api/VinePost;->sharedVmSb:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p1

    iget-object v7, v0, Lco/vine/android/api/VinePost;->sharedVmSb:Landroid/text/SpannableStringBuilder;

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_8c

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_8c
    const/4 v5, 0x0

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_a8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_a8
    add-int/lit8 v11, v9, 0x1

    :try_start_aa
    const-string v12, "}"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b3} :catch_11f

    move-result-object v5

    :goto_b4
    const-string v11, "%s"

    move-object/from16 v0, p1

    iget-object v12, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_dc

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_dc
    new-instance v8, Lco/vine/android/widget/StyledClickableSpan;

    const/16 v11, 0x9

    move-object/from16 v0, p1

    iget-wide v12, v0, Lco/vine/android/api/VinePost;->postId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, p0, Lco/vine/android/ConversationAdapter;->mSpanClicker:Lco/vine/android/VineSpanClicker;

    invoke-direct {v8, v11, v12, v13}, Lco/vine/android/widget/StyledClickableSpan;-><init>(ILjava/lang/Object;Lco/vine/android/widget/SpanClickListener;)V

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lco/vine/android/widget/StyledClickableSpan;->setColor(I)V

    const/16 v11, 0x21

    invoke-static {v7, v8, v9, v2, v11}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    iget-object v11, p0, Lco/vine/android/ConversationAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    const/16 v12, 0x21

    invoke-static {v7, v11, v9, v2, v12}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    iget-object v11, p0, Lco/vine/android/ConversationAdapter;->mDarkGreySpan:Lco/vine/android/widget/ColoredSpan;

    const/4 v12, 0x0

    const/16 v13, 0x21

    invoke-static {v7, v11, v12, v9, v13}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_106
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lco/vine/android/api/VinePost;->sharedVmSb:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_59

    :cond_11a
    const v11, 0x7f0e0217

    goto/16 :goto_6b

    :catch_11f
    move-exception v1

    const-string v11, "Failed top post span thing. locale: {}"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {}, Lco/vine/android/util/Util;->getLocale()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v1, v11, v12}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "%s"

    goto :goto_b4
.end method

.method private vanishMessage(Lco/vine/android/api/VinePrivateMessage;)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p1, Lco/vine/android/api/VinePrivateMessage;->vanished:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mVanishedIdDateMap:Ljava/util/HashMap;

    iget-wide v1, p1, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private vanishView(Lco/vine/android/api/VinePrivateMessage;Lco/vine/android/ConversationAdapter$ConversationViewHolder;Lco/vine/android/player/VideoViewInterface;)V
    .registers 16

    invoke-interface {p3}, Lco/vine/android/player/VideoViewInterface;->isInPlaybackState()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {p3}, Lco/vine/android/player/VideoViewInterface;->stopPlayback()V

    const/4 v8, 0x0

    invoke-interface {p3, v8}, Lco/vine/android/player/VideoViewInterface;->setVideoPath(Ljava/lang/String;)V

    :cond_d
    iget-object v8, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1e

    iget-object v8, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    iget-object v8, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2f

    iget-object v8, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2f
    const/high16 v8, 0x6000

    iget v9, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->color:I

    or-int v0, v8, v9

    iget-object v8, p0, Lco/vine/android/ConversationAdapter;->mViewedPorterDuffFilterSet:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    if-nez v3, :cond_4b

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v8, p0, Lco/vine/android/ConversationAdapter;->mViewedPorterDuffFilterSet:Landroid/util/SparseArray;

    invoke-virtual {v8, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4b
    iget-object v8, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->secondaryMessageContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->secondaryMessageContainer:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedViewedSb:Landroid/text/SpannableStringBuilder;

    if-nez v8, :cond_c3

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v8, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedViewedSb:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lco/vine/android/ConversationAdapter;->mVanishedIdDateMap:Ljava/util/HashMap;

    iget-wide v9, p1, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    new-instance v6, Ljava/util/Date;

    if-eqz v4, :cond_cb

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_7b
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    iget-object v8, p0, Lco/vine/android/ConversationAdapter;->mActivity:Lco/vine/android/ConversationActivity;

    const v9, 0x7f0e0270

    invoke-virtual {v8, v9}, Lco/vine/android/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hh:mm aa"

    invoke-static {v8, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "%s"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int v2, v5, v8

    iget-object v8, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedViewedSb:Landroid/text/SpannableStringBuilder;

    const-string v9, "%s"

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v8, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedViewedSb:Landroid/text/SpannableStringBuilder;

    new-instance v9, Lco/vine/android/widget/ColoredSpan;

    const/high16 v10, -0x100

    iget v11, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->color:I

    or-int/2addr v10, v11

    invoke-direct {v9, v10}, Lco/vine/android/widget/ColoredSpan;-><init>(I)V

    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-static {v8, v9, v10, v2, v11}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    iget-object v8, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedViewedSb:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lco/vine/android/ConversationAdapter;->mBoldSpan:Lco/vine/android/widget/TypefacesSpan;

    const/16 v10, 0x21

    invoke-static {v8, v9, v5, v2, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_c3
    iget-object v8, p2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->secondaryMessageContainerMessage:Landroid/widget/TextView;

    iget-object v9, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedViewedSb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_cb
    iget-wide v8, p1, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J

    goto :goto_7b
.end method


# virtual methods
.method public atLastPage()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 35

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lco/vine/android/ConversationAdapter;->initMessage(Landroid/database/Cursor;)Lco/vine/android/api/VinePrivateMessage;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    new-instance v15, Lco/vine/android/ConversationAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v15, v0, v1}, Lco/vine/android/ConversationAdapter$1;-><init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/api/VinePrivateMessage;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    invoke-virtual {v4, v15}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v4, 0x0

    iput-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    const/4 v4, 0x0

    iput-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    move/from16 v0, v19

    iput v0, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->position:I

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->userImageProgressNormal:Landroid/view/View;

    if-eqz v4, :cond_49

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->userImageProgressTop:Landroid/view/View;

    if-eqz v4, :cond_49

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->userImageProgressTop:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->userImageProgressNormal:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_49
    move-object/from16 v0, p0

    iget-wide v4, v0, Lco/vine/android/ConversationAdapter;->mMyUserId:J

    move-object/from16 v0, v28

    iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->userId:J

    move-wide/from16 v29, v0

    cmp-long v4, v4, v29

    if-nez v4, :cond_215

    const/4 v6, 0x1

    :goto_58
    iput-boolean v6, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->isCurrentUser:Z

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoListener:Lco/vine/android/player/OnListVideoClickListener;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lco/vine/android/player/OnListVideoClickListener;->setPosition(I)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p3

    move-object/from16 v3, v28

    invoke-direct {v0, v13, v1, v2, v3}, Lco/vine/android/ConversationAdapter;->invalidateTimestamp(Lco/vine/android/ConversationAdapter$ConversationViewHolder;ILandroid/database/Cursor;Lco/vine/android/api/VinePrivateMessage;)V

    if-eqz v6, :cond_218

    move-object/from16 v0, p0

    iget v7, v0, Lco/vine/android/ConversationAdapter;->mMyColor:I

    :goto_72
    if-gtz v7, :cond_76

    sget v7, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    :cond_76
    sget v4, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq v7, v4, :cond_7c

    if-gtz v7, :cond_90

    :cond_7c
    const v4, 0xffffff

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f090096

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    and-int v7, v4, v5

    :cond_90
    iput v7, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->color:I

    move-object/from16 v0, v28

    iget-wide v4, v0, Lco/vine/android/api/VinePrivateMessage;->postId:J

    const-wide/16 v29, 0x0

    cmp-long v4, v4, v29

    if-lez v4, :cond_222

    const/4 v14, 0x1

    :goto_9d
    iput-boolean v14, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->isSharedPost:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lco/vine/android/ConversationAdapter;->isMessageAlreadyVanished(Lco/vine/android/api/VinePrivateMessage;)Z

    move-result v25

    if-eqz v14, :cond_225

    move-object/from16 v0, v28

    iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;

    if-eqz v4, :cond_bd

    move-object/from16 v0, v28

    iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;

    if-eqz v4, :cond_bd

    move-object/from16 v0, v28

    iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;

    iget-object v4, v4, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;

    if-nez v4, :cond_225

    :cond_bd
    const/4 v9, 0x1

    :goto_be
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->hasVideo:Z

    if-nez v4, :cond_ce

    move-object/from16 v0, v28

    iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-eqz v4, :cond_cc

    if-eqz v25, :cond_ce

    :cond_cc
    if-eqz v9, :cond_228

    :cond_ce
    const/16 v22, 0x1

    :goto_d0
    move-object/from16 v0, v28

    iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22c

    const-string v16, ""

    :goto_dc
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-eqz v4, :cond_234

    if-eqz v25, :cond_234

    const/16 v21, 0x1

    :goto_e6
    if-eqz v22, :cond_f4

    move-object/from16 v0, v28

    iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-eqz v4, :cond_238

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishThumbnailOverlay:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_f4
    :goto_f4
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v9, :cond_241

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    const v5, 0x7f09007f

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_112
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-eqz v4, :cond_263

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainer:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->position:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lco/vine/android/ConversationAdapter;->getSeekInfo(I)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v4

    if-nez v4, :cond_145

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageOverlay:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_258

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishPlayButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_145
    :goto_145
    iget-object v5, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishUserImage:Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iget v4, v0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I

    if-eqz v4, :cond_260

    const/4 v4, 0x1

    :goto_14e
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v13, v5, v4}, Lco/vine/android/ConversationAdapter;->setupUserImageImage(Lco/vine/android/api/VinePrivateMessage;Lco/vine/android/ConversationAdapter$ConversationViewHolder;Landroid/widget/ImageView;Z)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainer:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_15c
    :goto_15c
    if-eqz v9, :cond_438

    const/16 v23, 0x0

    :goto_160
    if-eqz v23, :cond_440

    const/4 v4, 0x1

    :goto_163
    iput-boolean v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->hasVideoImage:Z

    iget-boolean v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->hasVideoImage:Z

    if-eqz v4, :cond_46d

    new-instance v26, Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iput-object v0, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/ConversationAdapter;->mThumbnails:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Bitmap;

    if-eqz v27, :cond_443

    const-string v4, "setting thumbnail for {}"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v1, v13}, Lco/vine/android/ConversationAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z

    move-result v4

    iput-boolean v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->isVideoImageLoaded:Z

    :goto_199
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->loadImage:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1a0
    :goto_1a0
    const/16 v24, 0x0

    if-eqz v22, :cond_48f

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibsChatNib:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lco/vine/android/ConversationAdapter;->shouldShowThumbnail(I)Z

    move-result v4

    if-eqz v4, :cond_1ca

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v4}, Lco/vine/android/player/SdkVideoView;->getPlayingPosition()I

    move-result v4

    move/from16 v0, v19

    if-eq v4, v0, :cond_1ca

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    :cond_1ca
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lco/vine/android/ConversationAdapter;->initVideoView(ILco/vine/android/ConversationAdapter$ConversationViewHolder;)V

    iget-object v5, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibs:Landroid/view/View;

    if-eqz v14, :cond_488

    const/16 v4, 0x8

    :goto_1d7
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postNibs:Landroid/view/View;

    if-eqz v14, :cond_48b

    const/4 v4, 0x0

    :goto_1df
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1e2
    :goto_1e2
    if-eqz v21, :cond_4b9

    if-nez v24, :cond_1ef

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v13, v4}, Lco/vine/android/ConversationAdapter;->vanishView(Lco/vine/android/api/VinePrivateMessage;Lco/vine/android/ConversationAdapter$ConversationViewHolder;Lco/vine/android/player/VideoViewInterface;)V

    :cond_1ef
    :goto_1ef
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishThumbnailOverlay:Landroid/view/View;

    const/high16 v5, -0x2e00

    iget v8, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->color:I

    or-int/2addr v5, v8

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4c2

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->bottomPaddingView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_20b
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lco/vine/android/ConversationAdapter;->mMuted:Z

    invoke-virtual {v4, v5}, Lco/vine/android/player/SdkVideoView;->setMute(Z)V

    return-void

    :cond_215
    const/4 v6, 0x0

    goto/16 :goto_58

    :cond_218
    const/16 v4, 0x19

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto/16 :goto_72

    :cond_222
    const/4 v14, 0x0

    goto/16 :goto_9d

    :cond_225
    const/4 v9, 0x0

    goto/16 :goto_be

    :cond_228
    const/16 v22, 0x0

    goto/16 :goto_d0

    :cond_22c
    move-object/from16 v0, v28

    iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_dc

    :cond_234
    const/16 v21, 0x0

    goto/16 :goto_e6

    :cond_238
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishThumbnailOverlay:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f4

    :cond_241
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    const v5, 0x106000d

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_112

    :cond_258
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishPlayButton:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_145

    :cond_260
    const/4 v4, 0x0

    goto/16 :goto_14e

    :cond_263
    if-eqz v9, :cond_30c

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    const v5, 0x7f02006e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_273
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageContainer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postMessageContainer:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainerMessage:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v14, :cond_327

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainer:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postMessageContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainerUserImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4, v6}, Lco/vine/android/ConversationAdapter;->setupUserImageProperties(ILandroid/widget/ImageView;Z)V

    iget-object v5, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainerUserImage:Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iget v4, v0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I

    if-eqz v4, :cond_31b

    const/4 v4, 0x1

    :goto_2b2
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v13, v5, v4}, Lco/vine/android/ConversationAdapter;->setupUserImageImage(Lco/vine/android/api/VinePrivateMessage;Lco/vine/android/ConversationAdapter$ConversationViewHolder;Landroid/widget/ImageView;Z)V

    iget-object v5, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainerMessage:Landroid/widget/TextView;

    if-eqz v6, :cond_31d

    const/4 v4, 0x5

    :goto_2be
    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainerMessage:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v6, :cond_31f

    move-object/from16 v0, p0

    iget v4, v0, Lco/vine/android/ConversationAdapter;->mAvatarMargin:F

    float-to-int v4, v4

    :goto_2d2
    move-object/from16 v0, v18

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-eqz v6, :cond_321

    const/4 v4, 0x0

    :goto_2d9
    move-object/from16 v0, v18

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v28

    iget-object v5, v0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;

    iget-object v8, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainerMessage:Landroid/widget/TextView;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lco/vine/android/ConversationAdapter;->styleTopSharedDescription(Lco/vine/android/api/VinePost;ZILandroid/widget/TextView;Z)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postMessageContainerMessage:Landroid/widget/TextView;

    move-object/from16 v0, v28

    iget-object v5, v0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7, v9}, Lco/vine/android/ConversationAdapter;->styleDescription(Landroid/widget/TextView;Lco/vine/android/api/VinePost;IZ)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postMessageContainerMessage:Landroid/widget/TextView;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postMessageContainerMessage:Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lco/vine/android/ConversationAdapter;->mSharedDescSize:F

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->postMessageContainerMessage:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_15c

    :cond_30c
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    iget-object v5, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoListener:Lco/vine/android/player/OnListVideoClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_273

    :cond_31b
    const/4 v4, 0x0

    goto :goto_2b2

    :cond_31d
    const/4 v4, 0x3

    goto :goto_2be

    :cond_31f
    const/4 v4, 0x0

    goto :goto_2d2

    :cond_321
    move-object/from16 v0, p0

    iget v4, v0, Lco/vine/android/ConversationAdapter;->mAvatarMargin:F

    float-to-int v4, v4

    goto :goto_2d9

    :cond_327
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainerUserImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4, v6}, Lco/vine/android/ConversationAdapter;->setupUserImageProperties(ILandroid/widget/ImageView;Z)V

    iget-object v5, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainerUserImage:Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iget v4, v0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I

    if-eqz v4, :cond_395

    const/4 v4, 0x1

    :goto_340
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v13, v5, v4}, Lco/vine/android/ConversationAdapter;->setupUserImageImage(Lco/vine/android/api/VinePrivateMessage;Lco/vine/android/ConversationAdapter$ConversationViewHolder;Landroid/widget/ImageView;Z)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainer:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, v28

    iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3e4

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->errorMessage:Landroid/widget/TextView;

    if-eqz v4, :cond_363

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->errorMessage:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_363
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v4, -0x100

    or-int/2addr v4, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3db

    if-eqz v6, :cond_397

    const/high16 v4, 0x3300

    or-int/2addr v4, v7

    const v5, 0x7f0200ed

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v4, v5, v1}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    const/high16 v4, 0x3300

    or-int/2addr v4, v7

    const v5, 0x7f020287

    iget-object v8, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibsChatNib:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5, v8}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    goto/16 :goto_15c

    :cond_395
    const/4 v4, 0x0

    goto :goto_340

    :cond_397
    move-object/from16 v0, p0

    iget v4, v0, Lco/vine/android/ConversationAdapter;->mMyColor:I

    if-eq v4, v7, :cond_3b9

    const/high16 v4, 0x3300

    or-int/2addr v4, v7

    const v5, 0x7f0200ed

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v4, v5, v1}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    const/high16 v4, 0x3300

    or-int/2addr v4, v7

    const v5, 0x7f020288

    iget-object v8, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibsChatNib:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5, v8}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    goto/16 :goto_15c

    :cond_3b9
    const/high16 v4, -0x100

    or-int/2addr v4, v7

    const v5, 0x7f0200ed

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v4, v5, v1}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    const/high16 v4, -0x100

    or-int/2addr v4, v7

    const v5, 0x7f020288

    iget-object v8, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibsChatNib:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5, v8}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    const/4 v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15c

    :cond_3db
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15c

    :cond_3e4
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_406

    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3f1
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->errorMessage:Landroid/widget/TextView;

    if-eqz v4, :cond_15c

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->errorMessage:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->errorMessage:Landroid/widget/TextView;

    move-object/from16 v0, v28

    iget-object v5, v0, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_15c

    :cond_406
    const v4, 0x7f090081

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const v4, 0x7f090080

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, 0x7f0200ed

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v11, v4, v1}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    const v4, 0x7f020287

    iget-object v5, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibsChatNib:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-static {v0, v11, v4, v5}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V

    goto :goto_3f1

    :cond_438
    move-object/from16 v0, v28

    iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_160

    :cond_440
    const/4 v4, 0x0

    goto/16 :goto_163

    :cond_443
    const-string v4, "fetching thumbnail for {}"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/ConversationAdapter;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_461

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/ConversationAdapter;->mThumbnails:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_461
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v13}, Lco/vine/android/ConversationAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z

    move-result v4

    iput-boolean v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->isVideoImageLoaded:Z

    goto/16 :goto_199

    :cond_46d
    move-object/from16 v0, v28

    iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-nez v4, :cond_475

    if-eqz v9, :cond_47e

    :cond_475
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->loadImage:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a0

    :cond_47e
    if-nez v6, :cond_1a0

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->loadImage:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a0

    :cond_488
    const/4 v4, 0x0

    goto/16 :goto_1d7

    :cond_48b
    const/16 v4, 0x8

    goto/16 :goto_1df

    :cond_48f
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->nibsChatNib:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v4, v13}, Lco/vine/android/player/SdkVideoView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v25, :cond_1e2

    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v13, v4}, Lco/vine/android/ConversationAdapter;->vanishView(Lco/vine/android/api/VinePrivateMessage;Lco/vine/android/ConversationAdapter$ConversationViewHolder;Lco/vine/android/player/VideoViewInterface;)V

    const/16 v24, 0x1

    goto/16 :goto_1e2

    :cond_4b9
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->secondaryMessageContainer:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1ef

    :cond_4c2
    iget-object v4, v13, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->bottomPaddingView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_20b
.end method

.method public getIdAtLastPosition()J
    .registers 4

    invoke-virtual {p0}, Lco/vine/android/ConversationAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_11
    return-wide v1

    :cond_12
    const-wide/16 v1, -0x1

    goto :goto_11
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, -0x1

    goto :goto_13
.end method

.method public getItemViewType(I)I
    .registers 7

    invoke-virtual {p0, p1}, Lco/vine/android/ConversationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-wide v1, p0, Lco/vine/android/ConversationAdapter;->mMyUserId:J

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getLastPlayer()Lco/vine/android/player/SdkVideoView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    return-object v0
.end method

.method public getPlayer(IZ)Lco/vine/android/player/SdkVideoView;
    .registers 4

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mPlayers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/player/SdkVideoView;

    return-object v0
.end method

.method public getPositionForId(J)I
    .registers 5

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    const/4 v5, 0x0

    const/high16 v10, 0x4000

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v6, 0x3

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iget-wide v8, p0, Lco/vine/android/ConversationAdapter;->mMyUserId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_9b

    const/4 v1, 0x1

    :goto_14
    if-eqz v1, :cond_9e

    const v6, 0x7f03005c

    invoke-virtual {v2, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :goto_1d
    new-instance v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    invoke-direct {v0, v4}, Lco/vine/android/ConversationAdapter$ConversationViewHolder;-><init>(Landroid/view/View;)V

    iget-object v6, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lco/vine/android/drawable/ColoredOvalDrawable;

    invoke-direct {v5}, Lco/vine/android/drawable/ColoredOvalDrawable;-><init>()V

    iput-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->timerOval:Lco/vine/android/drawable/ColoredOvalDrawable;

    iget-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishTimerText:Landroid/widget/TextView;

    iget-object v6, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->timerOval:Lco/vine/android/drawable/ColoredOvalDrawable;

    invoke-static {v5, v6}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;

    invoke-direct {v5, p0}, Lco/vine/android/ConversationAdapter$ConversationVideoClickedListener;-><init>(Lco/vine/android/ConversationAdapter;)V

    iput-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoListener:Lco/vine/android/player/OnListVideoClickListener;

    iget-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v5, p0, Lco/vine/android/ConversationAdapter;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lco/vine/android/ConversationAdapter;->mSidePadding:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p0, Lco/vine/android/ConversationAdapter;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lco/vine/android/ConversationAdapter;->mSidePadding:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoContainer:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v5, p0, Lco/vine/android/ConversationAdapter;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lco/vine/android/ConversationAdapter;->mSidePadding:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lco/vine/android/ConversationAdapter;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, p0, Lco/vine/android/ConversationAdapter;->mSidePadding:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v5, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;

    invoke-direct {v5, p0, v0}, Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;-><init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)V

    iput-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishPlayButtonListener:Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;

    iget-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishPlayButton:Landroid/view/View;

    iget-object v6, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishPlayButtonListener:Lco/vine/android/ConversationAdapter$VanishPlayButtonListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainerUserImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->bringToFront()V

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v4

    :cond_9b
    move v1, v5

    goto/16 :goto_14

    :cond_9e
    const v6, 0x7f03005b

    invoke-virtual {v2, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_1d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VinePrivateMessage;

    new-instance v0, Lco/vine/android/ConversationAdapter$7;

    invoke-direct {v0, p0, v2, p1}, Lco/vine/android/ConversationAdapter$7;-><init>(Lco/vine/android/ConversationAdapter;Lco/vine/android/api/VinePrivateMessage;Landroid/view/View;)V

    iget v3, v2, Lco/vine/android/api/VinePrivateMessage;->errorCode:I

    const/16 v4, 0x268

    if-ne v3, v4, :cond_27

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mActivity:Lco/vine/android/ConversationActivity;

    invoke-virtual {v3, v0}, Lco/vine/android/ConversationActivity;->startPhoneConfirmation(Ljava/lang/Runnable;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget v3, v2, Lco/vine/android/api/VinePrivateMessage;->errorCode:I

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_26
.end method

.method onLoadFinish(Lco/vine/android/ConversationAdapter$ConversationViewHolder;)V
    .registers 5

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    iget v2, p1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->position:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VinePrivateMessage;

    if-eqz v0, :cond_1a

    iget-object v1, p1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method public onPause()V
    .registers 8

    const/4 v6, 0x0

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mBlurHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mBlurHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_10
    iput-object v6, p0, Lco/vine/android/ConversationAdapter;->mBlurHandlerThread:Landroid/os/HandlerThread;

    :cond_12
    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_56

    iget v2, p0, Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I

    if-lez v2, :cond_56

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    iget v3, p0, Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VinePrivateMessage;

    if-eqz v1, :cond_56

    iget-wide v2, v1, Lco/vine/android/api/VinePrivateMessage;->userId:J

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v4}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_56

    iget-boolean v2, v1, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-eqz v2, :cond_56

    iget-object v2, p0, Lco/vine/android/ConversationAdapter;->mSeekInfoManager:Lco/vine/android/util/SeekInfoManager;

    iget-wide v3, v1, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-virtual {v2, v3, v4}, Lco/vine/android/util/SeekInfoManager;->get(J)Lco/vine/android/util/SeekInfoManager$SeekInfo;

    move-result-object v2

    if-eqz v2, :cond_56

    const-string v2, "Vanishing onPause for {}."

    iget-wide v3, v1, Lco/vine/android/api/VinePrivateMessage;->messageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lco/vine/android/ConversationAdapter;->vanishMessage(Lco/vine/android/api/VinePrivateMessage;)V

    :cond_56
    invoke-virtual {p0}, Lco/vine/android/ConversationAdapter;->stopCurrentPlayer()V

    invoke-direct {p0, v6}, Lco/vine/android/ConversationAdapter;->releaseOtherPlayers(Lco/vine/android/player/SdkVideoView;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "blur-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lco/vine/android/ConversationAdapter;->mBlurHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mBlurHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mBlurHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lco/vine/android/ConversationAdapter;->mBlurHandler:Landroid/os/Handler;

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lco/vine/android/util/MuteUtil;->isMuted(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/ConversationAdapter;->mMuted:Z

    invoke-virtual {p0}, Lco/vine/android/ConversationAdapter;->playCurrentPosition()V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mVineDateFormatter:Lco/vine/android/util/VineDateFormatter;

    invoke-virtual {v0}, Lco/vine/android/util/VineDateFormatter;->refreshDates()V

    return-void
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/util/video/VideoKey;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/video/UrlVideo;

    invoke-virtual {v2}, Lco/vine/android/util/video/UrlVideo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, p0, Lco/vine/android/ConversationAdapter;->mPaths:Landroid/util/SparseArray;

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lco/vine/android/util/video/UrlVideo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lco/vine/android/ConversationAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lco/vine/android/ConversationAdapter;->mShouldBePlaying:I

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Lco/vine/android/ConversationAdapter;->playCurrentPosition()V

    goto :goto_8

    :cond_51
    return-void
.end method

.method public pauseCurrentPlayer()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/ConversationAdapter;->hasPlayerPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V

    :cond_b
    return-void
.end method

.method public declared-synchronized play(I)V
    .registers 9

    monitor-enter p0

    :try_start_1
    const-string v5, "Play {} requested."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lco/vine/android/ConversationAdapter;->playFile(IZ)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_4a

    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/api/VinePrivateMessage;

    new-instance v3, Lco/vine/android/util/video/VideoKey;

    iget-object v5, v4, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;

    invoke-direct {v3, v5}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5, v3}, Lco/vine/android/client/AppController;->getVideoFilePath(Lco/vine/android/util/video/VideoKey;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "playing file at position {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lco/vine/android/ConversationAdapter;->playFile(IZ)V
    :try_end_49
    .catchall {:try_start_18 .. :try_end_49} :catchall_4a

    goto :goto_16

    :catchall_4a
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_4d
    :try_start_4d
    invoke-direct {p0, p1}, Lco/vine/android/ConversationAdapter;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    if-eqz v2, :cond_69

    iget-object v5, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->loadImage:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_69
    iput p1, p0, Lco/vine/android/ConversationAdapter;->mShouldBePlaying:I

    iget-object v5, p0, Lco/vine/android/ConversationAdapter;->mUrlReverse:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_4d .. :try_end_74} :catchall_4a

    goto :goto_16
.end method

.method public declared-synchronized playCurrentPosition()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mPlayCurrentPositionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playFile(IZ)V
    .registers 11

    if-gez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lco/vine/android/ConversationAdapter;->getViewAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v6, "Item is not visible: {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    if-eqz v2, :cond_2

    iget-object v6, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishMessageContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_29

    const-string v6, "No AutoPlay for Ephemeral."

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_29
    iget-object v6, p0, Lco/vine/android/ConversationAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v6}, Lco/vine/android/player/SdkVideoView;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lco/vine/android/ConversationAdapter;->pauseCurrentPlayer()V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f

    invoke-direct {p0, p1, v2}, Lco/vine/android/ConversationAdapter;->refreshVideoView(ILco/vine/android/ConversationAdapter$ConversationViewHolder;)V

    iget-object v0, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0, v4}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lco/vine/android/player/SdkVideoView;->setPlayingPosition(I)V

    invoke-virtual {v0, v2}, Lco/vine/android/player/SdkVideoView;->setTag(Ljava/lang/Object;)V

    iget-object v6, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoListener:Lco/vine/android/player/OnListVideoClickListener;

    invoke-virtual {v6, p1}, Lco/vine/android/player/OnListVideoClickListener;->setPosition(I)V

    :goto_55
    iput p1, p0, Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I

    iput-object v0, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    iget-boolean v6, p0, Lco/vine/android/ConversationAdapter;->mMuted:Z

    invoke-virtual {v0, v6}, Lco/vine/android/player/SdkVideoView;->setMute(Z)V

    goto :goto_2

    :cond_5f
    iget-object v0, v2, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoView:Lco/vine/android/player/SdkVideoView;

    iget-object v6, p0, Lco/vine/android/ConversationAdapter;->mMessages:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/api/VinePrivateMessage;

    if-eqz v3, :cond_79

    iget-boolean v6, v3, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z

    if-nez v6, :cond_79

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_79

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    :cond_79
    invoke-virtual {v0, p1}, Lco/vine/android/player/SdkVideoView;->setPlayingPosition(I)V

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-virtual {v0, v4}, Lco/vine/android/player/SdkVideoView;->isPathPlaying(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->start()V

    goto :goto_55

    :cond_8c
    invoke-virtual {v0, v4}, Lco/vine/android/player/SdkVideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_55
.end method

.method public setImages(Ljava/util/HashMap;)V
    .registers 11
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

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lco/vine/android/ConversationAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;

    if-nez v1, :cond_23

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    iget-object v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_42

    iget-object v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/util/image/UrlImage;

    if-eqz v3, :cond_42

    invoke-virtual {v3}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_42

    iget-boolean v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->isSharedPost:Z

    if-eqz v6, :cond_80

    iget-object v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->topMessageContainerUserImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v7, v1}, Lco/vine/android/ConversationAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z

    :cond_42
    :goto_42
    iget-object v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    if-eqz v6, :cond_b

    iget-object v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImageKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/util/image/UrlImage;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v7, v1}, Lco/vine/android/ConversationAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z

    move-result v6

    iput-boolean v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->isVideoImageLoaded:Z

    iget-object v6, p0, Lco/vine/android/ConversationAdapter;->mThumbnails:Landroid/util/SparseArray;

    iget-object v7, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoListener:Lco/vine/android/player/OnListVideoClickListener;

    invoke-virtual {v7}, Lco/vine/android/player/OnListVideoClickListener;->getPosition()I

    move-result v7

    iget-object v8, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v6, "Image found: {}."

    iget-object v7, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->videoListener:Lco/vine/android/player/OnListVideoClickListener;

    invoke-virtual {v7}, Lco/vine/android/player/OnListVideoClickListener;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lco/vine/android/ConversationAdapter;->playCurrentPosition()V

    goto :goto_b

    :cond_80
    iget-object v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->messageContainerUserImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v7, v1}, Lco/vine/android/ConversationAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z

    iget-object v6, v1, Lco/vine/android/ConversationAdapter$ConversationViewHolder;->vanishUserImage:Landroid/widget/ImageView;

    iget-object v7, v3, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6, v7, v1}, Lco/vine/android/ConversationAdapter;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lco/vine/android/ConversationAdapter$ConversationViewHolder;)Z

    goto :goto_42

    :cond_8f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lco/vine/android/ConversationAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_a5
    return-void
.end method

.method public stopCurrentPlayer()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->suspend()V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/ConversationAdapter;->mLastPlayer:Lco/vine/android/player/SdkVideoView;

    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/ConversationAdapter;->mCurrentPlaying:I

    :cond_f
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mPaths:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_40

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lco/vine/android/ConversationAdapter;->mSingleLoopPosition:I

    :cond_23
    iget-object v1, p0, Lco/vine/android/ConversationAdapter;->mIdToPositionMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_23

    :goto_3f
    return-object v0

    :cond_40
    const/4 v1, -0x1

    iput v1, p0, Lco/vine/android/ConversationAdapter;->mSingleLoopPosition:I

    goto :goto_3f
.end method

.method public toggleMute(Z)V
    .registers 5

    iput-boolean p1, p0, Lco/vine/android/ConversationAdapter;->mMuted:Z

    const-string v1, "Mute state changed to muted? {}."

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lco/vine/android/ConversationAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lco/vine/android/ConversationAdapter;->mMuted:Z

    invoke-virtual {v0, v1}, Lco/vine/android/player/SdkVideoView;->setMute(Z)V

    :cond_16
    return-void
.end method
