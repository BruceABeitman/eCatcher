.class public Lcom/pinguo/album/fragment/PGAlbumFragment;
.super Lcom/pinguo/album/fragment/PGBaseFragment;
.source "PGAlbumFragment.java"

# interfaces
.implements Lcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;
.implements Lcom/pinguo/album/EyePosition$EyePositionListener;
.implements Lcom/pinguo/album/selectors/SelectionListener;
.implements Lcom/pinguo/share/ui/ShareListView$ShareClickListener;
.implements Lcom/pinguo/album/views/LoadingStatusView$OnRetryClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;,
        Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;
    }
.end annotation


# static fields
.field private static AUTO_UPDATE_STATE:I = 0x0

.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field private static final MSG_ON_DOWNLOAD_CANCELLED:I = 0xc

.field private static final MSG_ON_DOWNLOAD_COMPLETE:I = 0xa

.field private static final MSG_ON_DOWNLOAD_PROGRESS_UDATE:I = 0xb

.field private static final MSG_ON_DOWNLOAD_START:I = 0x9

.field private static final MSG_PICK_PHOTO:I

.field private static PULL_REFRESH_UPDATE_STATE:I

.field private static RETRY_UPDATE_STATE:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

.field private mAlbumTitle:Ljava/lang/String;

.field private mCallCloudUploadLimit:I

.field private mCloudAlbumUpdateState:I

.field private mConfig:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

.field private mData:Lcom/pinguo/album/data/MediaSet;

.field private mDataPath:Lcom/pinguo/album/data/MediaPath;

.field private mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

.field private mEyePosition:Lcom/pinguo/album/EyePosition;

.field private mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

.field private mHandler:Lcom/pinguo/album/SynchronizedHandler;

.field private mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

.field private mIncrementDataListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mIsMetadataDownloding:Z

.field protected mIsSdcardExist:Z

.field private mLoadingBits:I

.field private mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;

.field private mMetaDataDownloadTask:Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

.field private mOpenCenter:Lcom/pinguo/album/utils/RelativePosition;

.field private mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;

.field private mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

.field private final mRootPane:Lcom/pinguo/album/views/GLBaseView;

.field protected mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

.field private mShareListView:Lcom/pinguo/share/ui/ShareListView;

.field private mSyncTask:Lcom/pinguo/album/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/album/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

.field private mUploadStatusListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;

.field private mX:F

.field private mY:F

.field private mZ:F

.field private final refreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->AUTO_UPDATE_STATE:I

    const/4 v0, 0x2

    sput v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->PULL_REFRESH_UPDATE_STATE:I

    const/4 v0, 0x3

    sput v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->RETRY_UPDATE_STATE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;-><init>()V

    iput v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingBits:I

    iput-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSyncTask:Lcom/pinguo/album/Future;

    iput-boolean v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mInitialSynced:Z

    new-instance v0, Lcom/pinguo/album/utils/RelativePosition;

    invoke-direct {v0}, Lcom/pinguo/album/utils/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mOpenCenter:Lcom/pinguo/album/utils/RelativePosition;

    iput-boolean v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsActive:Z

    iput-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iput-boolean v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsSdcardExist:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I

    iput v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCallCloudUploadLimit:I

    iput-boolean v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z

    new-instance v0, Lcom/pinguo/album/fragment/PGAlbumFragment$1;

    invoke-direct {v0, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$1;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIncrementDataListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;

    new-instance v0, Lcom/pinguo/album/fragment/PGAlbumFragment$2;

    invoke-direct {v0, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$2;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mUploadStatusListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;

    new-instance v0, Lcom/pinguo/album/fragment/PGAlbumFragment$3;

    invoke-direct {v0, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$3;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    new-instance v0, Lcom/pinguo/album/fragment/PGAlbumFragment$4;

    invoke-direct {v0, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$4;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->refreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLPullToRefreshView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLTextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/album/fragment/PGAlbumFragment;)F
    .registers 2

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mX:F

    return v0
.end method

.method static synthetic access$11(Lcom/pinguo/album/fragment/PGAlbumFragment;)F
    .registers 2

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mY:F

    return v0
.end method

.method static synthetic access$12(Lcom/pinguo/album/fragment/PGAlbumFragment;)F
    .registers 2

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mZ:F

    return v0
.end method

.method static synthetic access$13(Lcom/pinguo/album/fragment/PGAlbumFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z

    return v0
.end method

.method static synthetic access$14()I
    .registers 1

    sget v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->PULL_REFRESH_UPDATE_STATE:I

    return v0
.end method

.method static synthetic access$15(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I

    return-void
.end method

.method static synthetic access$16(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$18(Lcom/pinguo/album/fragment/PGAlbumFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z

    return-void
.end method

.method static synthetic access$19(Lcom/pinguo/album/fragment/PGAlbumFragment;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/SynchronizedHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$20()I
    .registers 1

    sget v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->AUTO_UPDATE_STATE:I

    return v0
.end method

.method static synthetic access$21(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/GLRenderView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/LoadingStatusView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;

    return-object v0
.end method

.method static synthetic access$23()I
    .registers 1

    sget v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->RETRY_UPDATE_STATE:I

    return v0
.end method

.method static synthetic access$24(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->setCurrentUser()V

    return-void
.end method

.method static synthetic access$25(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showMainView()V

    return-void
.end method

.method static synthetic access$26(Lcom/pinguo/album/fragment/PGAlbumFragment;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->callCloudUpload(J)V

    return-void
.end method

.method static synthetic access$27(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->onDown(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/pinguo/album/fragment/PGAlbumFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->onUp(Z)V

    return-void
.end method

.method static synthetic access$29(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->onSingleTapUp(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownIncrementData()V

    return-void
.end method

.method static synthetic access$30(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->onSingleTagTapUp(I)V

    return-void
.end method

.method static synthetic access$31(Lcom/pinguo/album/fragment/PGAlbumFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->pickPhoto(I)V

    return-void
.end method

.method static synthetic access$32(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-object v0
.end method

.method static synthetic access$33(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-void
.end method

.method static synthetic access$34(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownload()V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/album/fragment/PGAlbumFragment;Ljava/lang/String;)Lcom/pinguo/album/opengles/StringTexture$StringArray;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getUploadStatusStringArray(Ljava/lang/String;)Lcom/pinguo/album/opengles/StringTexture$StringArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/EyePosition;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mEyePosition:Lcom/pinguo/album/EyePosition;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mConfig:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/render/ThumbnailRenderer;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/utils/RelativePosition;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mOpenCenter:Lcom/pinguo/album/utils/RelativePosition;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/views/ThumbnailView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    return-object v0
.end method

.method private callCloudUpload(J)V
    .registers 5

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCallCloudUploadLimit:I

    if-lez v0, :cond_1b

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/pinguo/album/fragment/PGAlbumFragment$12;

    invoke-direct {v1, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$12;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCallCloudUploadLimit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCallCloudUploadLimit:I

    :cond_1b
    return-void
.end method

.method private checkSameUser()Z
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v2, v0, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getUserLoginToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x1

    goto :goto_1f
.end method

.method private clearLoadingBit(I)V
    .registers 4

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingBits:I

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingBits:I

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsActive:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-virtual {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_1d

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showLongToast(I)V

    :cond_1d
    return-void
.end method

.method private getUploadStatusStringArray(Ljava/lang/String;)Lcom/pinguo/album/opengles/StringTexture$StringArray;
    .registers 6

    new-instance v0, Lcom/pinguo/album/opengles/StringTexture$StringArray;

    invoke-direct {v0}, Lcom/pinguo/album/opengles/StringTexture$StringArray;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v2

    const v3, -0x767474

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->add(Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v1

    const v2, -0x5c5c5d

    invoke-virtual {v0, p1, v1, v2}, Lcom/pinguo/album/opengles/StringTexture$StringArray;->add(Ljava/lang/String;II)V

    return-object v0
.end method

.method private initBrowseActionBar()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/pinguo/album/views/PGAlbumActionBar;->setOnActionMode(ILcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;)V

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/pinguo/album/views/PGAlbumActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v3}, Lcom/pinguo/album/views/PGAlbumActionBar;->setVisible(IZ)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Lcom/pinguo/album/views/PGAlbumBottomBar;->setOnActionMode(ILcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/views/PGAlbumBottomBar;->setVisible(IZ)V

    return-void
.end method

.method private initializeData()V
    .registers 6

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "album_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumTitle:Ljava/lang/String;

    new-instance v1, Lcom/pinguo/album/data/MediaPath;

    const-string/jumbo v2, "media-path"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "album_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDataPath:Lcom/pinguo/album/data/MediaPath;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDataPath:Lcom/pinguo/album/data/MediaPath;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/data/AlbumDataManager;->getMediaSet(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mData:Lcom/pinguo/album/data/MediaSet;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mData:Lcom/pinguo/album/data/MediaSet;

    if-nez v1, :cond_37

    :goto_36
    return-void

    :cond_37
    new-instance v1, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mData:Lcom/pinguo/album/data/MediaSet;

    invoke-direct {v1, p0, v2}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/data/MediaSet;)V

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    new-instance v2, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataLoadingListener;)V

    invoke-virtual {v1, v2}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->setLoadingListener(Lcom/pinguo/album/data/loader/DataLoadingListener;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setModel(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mData:Lcom/pinguo/album/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/selectors/PhotoSelector;->setSourceMediaSet(Lcom/pinguo/album/data/MediaSet;)V

    goto :goto_36
.end method

.method private initializeViews()V
    .registers 9

    const/16 v7, 0xb

    const/4 v6, 0x0

    new-instance v1, Lcom/pinguo/album/selectors/PhotoSelector;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/pinguo/album/selectors/PhotoSelector;-><init>(Z)V

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v1, p0}, Lcom/pinguo/album/selectors/PhotoSelector;->setSelectionListener(Lcom/pinguo/album/selectors/SelectionListener;)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->get(Landroid/content/Context;)Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mConfig:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    new-instance v0, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mConfig:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    iget-object v1, v1, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    invoke-direct {v0, v1}, Lcom/pinguo/album/views/layout/ThumbnailExpandLayout;-><init>(Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;)V

    new-instance v1, Lcom/pinguo/album/views/ThumbnailView;

    invoke-direct {v1, p0, v0}, Lcom/pinguo/album/views/ThumbnailView;-><init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/views/layout/ThumbnailLayout;)V

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/ThumbnailView;->setBackgroundColorInt(I)V

    new-instance v1, Lcom/pinguo/album/views/render/ThumbnailRenderer;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mConfig:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    iget-object v4, v4, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->sortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/pinguo/album/views/render/ThumbnailRenderer;-><init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/views/ThumbnailView;Lcom/pinguo/album/selectors/PhotoSelector;Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;)V

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/layout/ThumbnailLayout;->setRenderer(Lcom/pinguo/album/views/ThumbnailView$Renderer;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/ThumbnailView;->setThumbnailRenderer(Lcom/pinguo/album/views/ThumbnailView$Renderer;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setModel(Lcom/pinguo/album/data/loader/ThumbnailDataLoader;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/GLBaseView;->addComponent(Lcom/pinguo/album/views/GLBaseView;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    new-instance v2, Lcom/pinguo/album/fragment/PGAlbumFragment$5;

    invoke-direct {v2, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$5;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/ThumbnailView;->setListener(Lcom/pinguo/album/views/ThumbnailView$Listener;)V

    new-instance v1, Lcom/pinguo/album/surpport/GLTextView;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pinguo/album/utils/PGAlbumUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lcom/pinguo/album/utils/PGAlbumUtils;->dpToPixel(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/album/surpport/GLTextView;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLTextView;->setIconLeft(I)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    const/4 v2, -0x3

    invoke-virtual {v1, v2, v6, v7, v7}, Lcom/pinguo/album/surpport/GLTextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    const v2, -0x232324

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLTextView;->setBackGroundColor(I)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->status2String(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getUploadStatusStringArray(Ljava/lang/String;)Lcom/pinguo/album/opengles/StringTexture$StringArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLTextView;->setTextAndHeightWrap(Lcom/pinguo/album/opengles/StringTexture$StringArray;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/ThumbnailView;->setHeadView(Lcom/pinguo/album/views/GLBaseView;)V

    new-instance v1, Lcom/pinguo/album/surpport/GLPullToRefreshView;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pinguo/album/surpport/GLPullToRefreshView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setContentView(Lcom/pinguo/album/views/GLBaseView;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    invoke-virtual {v1, v6}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setEnablePullEnd(Z)V

    return-void
.end method

.method private notListenDownIncrementData()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->getInstance(Landroid/content/Context;)Lcom/pinguo/album/data/download/IncrementDataDownloader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->setIncrementDataLoadingListener(Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;)V

    return-void
.end method

.method private onDown(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onSingleTagTapUp(I)V
    .registers 5

    iget-boolean v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsActive:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v2}, Lcom/pinguo/album/selectors/PhotoSelector;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    invoke-virtual {v2}, Lcom/pinguo/album/views/ThumbnailView;->getSortTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;

    iget-boolean v2, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z

    if-eqz v2, :cond_2b

    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v2, p1, v0}, Lcom/pinguo/album/selectors/PhotoSelector;->toggleTag(IZ)V

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    invoke-virtual {v2}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V

    goto :goto_c

    :cond_2b
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method private onSingleTapUp(I)V
    .registers 7

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsActive:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v1}, Lcom/pinguo/album/selectors/PhotoSelector;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-virtual {v1, p1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->get(I)Lcom/pinguo/album/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v1, p1}, Lcom/pinguo/album/selectors/PhotoSelector;->toggleThumbnail(I)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/ThumbnailView;->invalidate()V

    goto :goto_5

    :cond_21
    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    invoke-virtual {v1, p1}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setPressedIndex(I)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    invoke-virtual {v1}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setPressedUp()V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    invoke-virtual {v2, v3, p1, v3}, Lcom/pinguo/album/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/pinguo/album/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5
.end method

.method private onUp(Z)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setPressedIndex(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    invoke-virtual {v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setPressedUp()V

    goto :goto_8
.end method

.method private pickPhoto(I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pinguo/album/activities/PGFullImageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "index-hint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setCurrentUser()V
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v2

    iget-object v3, v0, Lcom/pinguo/camera360/login/model/User$Info;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setUserLoginToken(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method private setLoadingBit(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingBits:I

    return-void
.end method

.method private showMainView()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->lockRenderThread()V

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsActive:Z

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/GLRenderView;->setContentPane(Lcom/pinguo/album/views/GLBaseView;)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->refreshListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setOnRefreshListener(Lcom/pinguo/album/surpport/GLPullToRefreshView$OnRefreshListener;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->setLoadingBit(I)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-virtual {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->resume()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    invoke-virtual {v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->resume()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setPressedIndex(I)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mEyePosition:Lcom/pinguo/album/EyePosition;

    invoke-virtual {v0}, Lcom/pinguo/album/EyePosition;->resume()V

    iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mInitialSynced:Z

    if-nez v0, :cond_37

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->setLoadingBit(I)V
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_42

    :cond_37
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->unlockRenderThread()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->onResume()V

    return-void

    :catchall_42
    move-exception v0

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLRenderView;->unlockRenderThread()V

    throw v0
.end method

.method private startDownIncrementData()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->getInstance(Landroid/content/Context;)Lcom/pinguo/album/data/download/IncrementDataDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIncrementDataListener:Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->setIncrementDataLoadingListener(Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->getInstance(Landroid/content/Context;)Lcom/pinguo/album/data/download/IncrementDataDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->startDownloadData()V

    return-void
.end method

.method private startDownload()V
    .registers 9

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_c
    return-void

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v4}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedPaths()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_51

    new-instance v4, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    const/4 v5, -0x3

    const v6, 0x7f080035

    invoke-virtual {p0, v6}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pinguo/album/fragment/PGAlbumFragment$10;

    invoke-direct {v7, p0, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment$10;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/data/image/download/PictureDownloadManager;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v4, Lcom/pinguo/album/fragment/PGAlbumFragment$11;

    invoke-direct {v4, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$11;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    invoke-virtual {v0, v4}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->addListener(Lcom/pinguo/album/data/image/download/PictureDownloaderListener;)V

    invoke-virtual {v0}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->startDownload()V

    goto :goto_c

    :cond_51
    new-instance v5, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http://dn-c360.qbox.me/"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/album/data/MediaPath;

    invoke-virtual {v4}, Lcom/pinguo/album/data/MediaPath;->getOptionIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->DOWNLOAD_PICTURE_SAVE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/album/data/MediaPath;

    invoke-virtual {v4}, Lcom/pinguo/album/data/MediaPath;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method private updateActionBarDuringSelect(I)V
    .registers 4

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/PGAlbumBottomBar;->updateBottomButton(Z)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/PGAlbumBottomBar;->updateBottomButton(Z)V

    goto :goto_a
.end method


# virtual methods
.method public getGLController()Lcom/pinguo/album/views/GLController;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->onAttach(Landroid/app/Activity;)V

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttach"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12

    const v7, 0x7f080324

    const v9, 0x7f080036

    const v8, 0x7f080035

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0043

    if-ne v4, v5, :cond_20

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v4}, Lcom/pinguo/album/selectors/PhotoSelector;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v4}, Lcom/pinguo/album/selectors/PhotoSelector;->leaveSelectionMode()V

    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0045

    if-ne v4, v5, :cond_5d

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v4}, Lcom/pinguo/album/selectors/PhotoSelector;->inSelectAllMode()Z

    move-result v4

    if-eqz v4, :cond_47

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f080088

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v4}, Lcom/pinguo/album/selectors/PhotoSelector;->deSelectAll()V

    :cond_46
    :goto_46
    return-void

    :cond_47
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f08008d

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v4}, Lcom/pinguo/album/selectors/PhotoSelector;->selectAll()V

    goto :goto_46

    :cond_5d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a003f

    if-ne v4, v5, :cond_6e

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_46

    :cond_6e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0040

    if-ne v4, v5, :cond_86

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_46

    :cond_86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0054

    if-ne v4, v5, :cond_ae

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;

    if-nez v4, :cond_a3

    new-instance v4, Lcom/pinguo/share/ui/ShareListView;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pinguo/share/ui/ShareListView;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;

    invoke-virtual {v4, p0}, Lcom/pinguo/share/ui/ShareListView;->setOnClickListener(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)V

    :cond_a3
    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;

    invoke-virtual {v4, v6}, Lcom/pinguo/share/ui/ShareListView;->initShowItems(Z)V

    iget-object v4, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;

    invoke-virtual {v4}, Lcom/pinguo/share/ui/ShareListView;->show()V

    goto :goto_46

    :cond_ae
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0055

    if-ne v4, v5, :cond_f6

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_c5

    invoke-virtual {p0, v7}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V

    goto :goto_46

    :cond_c5
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/lib/network/NetworkUtils;->currentNetType(Landroid/content/Context;)I

    move-result v4

    if-eq v4, v6, :cond_f1

    new-instance v4, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080034

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/pinguo/album/fragment/PGAlbumFragment$8;

    invoke-direct {v3, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$8;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    invoke-virtual {v0, v9, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    goto/16 :goto_46

    :cond_f1
    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownload()V

    goto/16 :goto_46

    :cond_f6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0056

    if-ne v4, v5, :cond_46

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_10e

    invoke-virtual {p0, v7}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showShortToast(I)V

    goto/16 :goto_46

    :cond_10e
    new-instance v1, Lcom/pinguo/album/fragment/DeleteMediaListener;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mData:Lcom/pinguo/album/data/MediaSet;

    new-instance v7, Lcom/pinguo/album/fragment/PGAlbumFragment$9;

    invoke-direct {v7, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$9;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/pinguo/album/fragment/DeleteMediaListener;-><init>(Landroid/app/Activity;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;)V

    new-instance v4, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080030

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    goto/16 :goto_46
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/lib/util/UtilStorage;->isSDCardExist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsSdcardExist:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/pinguo/album/fragment/PGBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    sget-object v5, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onCreateView"

    invoke-static {v5, v7}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f030007

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pinguo/album/views/GLRenderView;

    iput-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    const v5, 0x7f0a004b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pinguo/album/views/LoadingStatusView;

    iput-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;

    iget-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;

    invoke-virtual {v5, p0}, Lcom/pinguo/album/views/LoadingStatusView;->setOnRetryClickListener(Lcom/pinguo/album/views/LoadingStatusView$OnRetryClickListener;)V

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->initializeViews()V

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->initializeData()V

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->initBrowseActionBar()V

    new-instance v5, Lcom/pinguo/album/fragment/PGAlbumFragment$6;

    iget-object v7, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-direct {v5, p0, v7}, Lcom/pinguo/album/fragment/PGAlbumFragment$6;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/views/GLController;)V

    iput-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;

    new-instance v5, Lcom/pinguo/album/EyePosition;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7, p0}, Lcom/pinguo/album/EyePosition;-><init>(Landroid/content/Context;Lcom/pinguo/album/EyePosition$EyePositionListener;)V

    iput-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mEyePosition:Lcom/pinguo/album/EyePosition;

    iget-boolean v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsSdcardExist:Z

    if-nez v5, :cond_4f

    :cond_4e
    :goto_4e
    return-object v4

    :cond_4f
    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->checkSameUser()Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mData:Lcom/pinguo/album/data/MediaSet;

    invoke-virtual {v5}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCountWithoutCache()I

    move-result v5

    if-nez v5, :cond_e8

    :cond_5d
    sget v5, Lcom/pinguo/album/fragment/PGAlbumFragment;->AUTO_UPDATE_STATE:I

    iput v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I

    :goto_61
    iget v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I

    sget v7, Lcom/pinguo/album/fragment/PGAlbumFragment;->AUTO_UPDATE_STATE:I

    if-ne v5, v7, :cond_ee

    iget-boolean v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z

    if-nez v5, :cond_93

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string/jumbo v7, ""

    invoke-static {v5, v7}, Lcom/pinguo/album/common/PGPreferences;->setIncrementDataUpdateTime(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    const-string/jumbo v7, "0"

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setUpdatePicGroupDataTime(Ljava/lang/String;)V

    new-instance v5, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

    invoke-direct {v5, p0, v9}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;)V

    iput-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mMetaDataDownloadTask:Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

    iget-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mMetaDataDownloadTask:Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

    new-array v7, v2, [Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v5, v7}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_93
    :goto_93
    if-eqz v3, :cond_a0

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/album/common/PGPreferences;->isFirstTimeEnterCloud(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a0

    move v2, v6

    :cond_a0
    if-eqz v2, :cond_4e

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/pinguo/cloudshare/support/HelperConsole;->getCurrentAutoUpload(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_df

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/pinguo/cloudshare/support/HelperConsole;->enableCurrentAutoUpload(Landroid/content/Context;)V

    new-instance v5, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f080028

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f080328

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setTitle(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v0

    const v5, 0x7f080029

    new-instance v7, Lcom/pinguo/album/fragment/PGAlbumFragment$7;

    invoke-direct {v7, p0}, Lcom/pinguo/album/fragment/PGAlbumFragment$7;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V

    invoke-virtual {v0, v5, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    const v5, 0x7f08018f

    invoke-virtual {v0, v5, v9}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    :cond_df
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/pinguo/album/common/PGPreferences;->setIsFirstTimeEnterCloud(Landroid/content/Context;Z)V

    goto/16 :goto_4e

    :cond_e8
    sget v5, Lcom/pinguo/album/fragment/PGAlbumFragment;->PULL_REFRESH_UPDATE_STATE:I

    iput v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I

    goto/16 :goto_61

    :cond_ee
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->getInstance(Landroid/content/Context;)Lcom/pinguo/album/data/download/IncrementDataDownloader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->isNoExecuteBefore()Z

    move-result v5

    if-eqz v5, :cond_101

    iget-object v5, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mPullRefreshGLView:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    invoke-virtual {v5, v2}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->setEnablePullEnd(Z)V

    :cond_101
    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->startDownIncrementData()V

    new-instance v5, Lcom/pinguo/album/data/download/GroupDataDownloader;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/pinguo/album/data/download/GroupDataDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/pinguo/album/data/download/GroupDataDownloader;->startDownLoadGroupData()V

    const-wide/16 v7, 0x4b0

    invoke-direct {p0, v7, v8}, Lcom/pinguo/album/fragment/PGAlbumFragment;->callCloudUpload(J)V

    goto/16 :goto_93
.end method

.method public onDestroy()V
    .registers 3

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mMetaDataDownloadTask:Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mMetaDataDownloadTask:Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->cancel(Z)Z

    :cond_12
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/GLRenderView;->setContentPane(Lcom/pinguo/album/views/GLBaseView;)V

    :cond_1c
    invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onDestroyView()V

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetach()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onDetach()V

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetach"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->lockRendering()V

    iput p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mX:F

    iput p2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mY:F

    iput p3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mZ:F

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->unlockRendering()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->invalidate()V

    return-void
.end method

.method public onLongTap(I)V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-virtual {v1, p1}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->get(I)Lcom/pinguo/album/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v1, p1}, Lcom/pinguo/album/selectors/PhotoSelector;->toggleThumbnail(I)V

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onPause()V

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->lockRenderThread()V

    const/4 v0, 0x0

    :try_start_12
    iput-boolean v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsActive:Z

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->setThumbnailFilter(Lcom/pinguo/album/views/render/ThumbnailRenderer$ThumbnailFilter;)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mAlbumDataLoader:Lcom/pinguo/album/data/loader/ThumbnailDataLoader;

    invoke-virtual {v0}, Lcom/pinguo/album/data/loader/ThumbnailDataLoader;->pause()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRender:Lcom/pinguo/album/views/render/ThumbnailRenderer;

    invoke-virtual {v0}, Lcom/pinguo/album/views/render/ThumbnailRenderer;->pause()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mEyePosition:Lcom/pinguo/album/EyePosition;

    invoke-virtual {v0}, Lcom/pinguo/album/EyePosition;->pause()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSyncTask:Lcom/pinguo/album/Future;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSyncTask:Lcom/pinguo/album/Future;

    invoke-interface {v0}, Lcom/pinguo/album/Future;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSyncTask:Lcom/pinguo/album/Future;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->clearLoadingBit(I)V
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_5f

    :cond_39
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->unlockRenderThread()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->onPause()V

    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mUploadStatusListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->unRegistListener(Landroid/content/Context;Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->getInstance(Landroid/content/Context;)Lcom/pinguo/album/data/download/IncrementDataDownloader;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pinguo/album/data/download/IncrementDataDownloader;->setIncrementDataLoadingListener(Lcom/pinguo/album/data/download/IncrementDataDownloader$IncrementDataLoadingListener;)V

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->notListenDownIncrementData()V

    return-void

    :catchall_5f
    move-exception v0

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mGLRenderView:Lcom/pinguo/album/views/GLRenderView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLRenderView;->unlockRenderThread()V

    throw v0
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onResume()V

    sget-object v1, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsSdcardExist:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mLoadingView:Lcom/pinguo/album/views/LoadingStatusView;

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Lcom/pinguo/album/views/LoadingStatusView;->showStatusLoadFail(I)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I

    sget v2, Lcom/pinguo/album/fragment/PGAlbumFragment;->PULL_REFRESH_UPDATE_STATE:I

    if-ne v1, v2, :cond_21

    invoke-direct {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->showMainView()V

    :cond_21
    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mUploadStatusListener:Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->registListener(Landroid/content/Context;Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getInstance()Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager;->getStatus(Landroid/content/Context;)Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    iget-object v2, v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->msg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getUploadStatusStringArray(Ljava/lang/String;)Lcom/pinguo/album/opengles/StringTexture$StringArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLTextView;->setText(Lcom/pinguo/album/opengles/StringTexture$StringArray;)V

    iget v1, v0, Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$StatusObject;->status:I

    packed-switch v1, :pswitch_data_6a

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLTextView;->setIconLeft(I)V

    goto :goto_17

    :pswitch_57
    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLTextView;->setIconLeft(I)V

    goto :goto_17

    :pswitch_60
    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Lcom/pinguo/album/surpport/GLTextView;->setIconLeft(I)V

    goto :goto_17

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_60
        :pswitch_57
    .end packed-switch
.end method

.method public onRetryClick()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mIsMetadataDownloding:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->RETRY_UPDATE_STATE:I

    iput v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mCloudAlbumUpdateState:I

    new-instance v0, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment;Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;)V

    iput-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mMetaDataDownloadTask:Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mMetaDataDownloadTask:Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;

    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/pinguo/album/fragment/PGAlbumFragment$MetaDataDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_f
.end method

.method public onSelectionChange()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v2}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002b

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/pinguo/album/views/PGAlbumActionBar;->setTitle(Ljava/lang/CharSequence;I)V

    invoke-direct {p0, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->updateActionBarDuringSelect(I)V

    return-void
.end method

.method public onSelectionModeChange(I)V
    .registers 6

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_5c

    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/ThumbnailView;->setExtraLengthInBottom(I)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/pinguo/album/views/PGAlbumActionBar;->setOnActionMode(ILcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/PGAlbumActionBar;->setSelectionManager(Lcom/pinguo/album/selectors/ISelector;)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/pinguo/album/views/PGAlbumBottomBar;->setVisible(IZ)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->invalidate()V

    goto :goto_4

    :pswitch_37
    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mThumbnailView:Lcom/pinguo/album/views/ThumbnailView;

    invoke-virtual {v0, v3}, Lcom/pinguo/album/views/ThumbnailView;->setExtraLengthInBottom(I)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/pinguo/album/views/PGAlbumActionBar;->setOnActionMode(ILcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;)V

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Lcom/pinguo/album/views/PGAlbumBottomBar;->setVisible(IZ)V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->invalidate()V

    goto :goto_4

    :pswitch_52
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->onSelectionChange()V

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->invalidate()V

    goto :goto_4

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_37
        :pswitch_52
    .end packed-switch
.end method

.method public onShareItemClick(I)V
    .registers 10

    iget-object v6, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mSelector:Lcom/pinguo/album/selectors/PhotoSelector;

    invoke-virtual {v6}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedPaths()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Lcom/pinguo/album/data/MediaPath;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v6, p0, Lcom/pinguo/album/fragment/PGAlbumFragment;->mData:Lcom/pinguo/album/data/MediaSet;

    invoke-virtual {v6, v4}, Lcom/pinguo/album/data/MediaSet;->getMediaItemByIds([Lcom/pinguo/album/data/MediaPath;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_30

    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/pinguo/share/ShareAccess;->cloudImageList2CloudShareInfo(Landroid/content/Context;Ljava/util/List;)Lcom/pinguo/share/CloudShareInfo;

    move-result-object v1

    packed-switch p1, :pswitch_data_64

    :goto_2f
    :pswitch_2f
    return-void

    :cond_30
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/album/data/MediaItem;

    check-cast v2, Lcom/pinguo/album/data/image/CloudImage;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :pswitch_3c
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/pinguo/share/ShareManager;->qqShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V

    goto :goto_2f

    :pswitch_44
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/pinguo/share/ShareManager;->weChatShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V

    goto :goto_2f

    :pswitch_4c
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/pinguo/share/ShareManager;->weChatFriendsShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V

    goto :goto_2f

    :pswitch_54
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/pinguo/share/ShareManager;->smsShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V

    goto :goto_2f

    :pswitch_5c
    invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/pinguo/share/ShareManager;->websiteShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V

    goto :goto_2f

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_44
        :pswitch_4c
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_54
        :pswitch_5c
    .end packed-switch
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onStart()V

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onStop()V

    sget-object v0, Lcom/pinguo/album/fragment/PGAlbumFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
