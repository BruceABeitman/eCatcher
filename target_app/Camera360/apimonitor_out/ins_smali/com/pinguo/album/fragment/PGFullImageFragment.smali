.class public Lcom/pinguo/album/fragment/PGFullImageFragment;
.super Lcom/pinguo/album/fragment/PGBaseFragment;
.source "PGFullImageFragment.java"
.implements Lcom/pinguo/album/views/FullImageView$Listener;
.implements Lcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;
.implements Lcom/pinguo/share/ui/ShareListView$ShareClickListener;
.field private static final DEFERRED_UPDATE_MS:J = 0xfaL
.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"
.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "media-set-path"
.field public static final KEY_START_IN_FILMSTRIP:Ljava/lang/String; = "start-in-filmstrip"
.field private static final MSG_ON_DOWNLOAD_CANCELED:I = 0xc
.field private static final MSG_ON_DOWNLOAD_COMPLETE:I = 0xa
.field private static final MSG_ON_DOWNLOAD_START:I = 0x9
.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4
.field private static final MSG_REFRESH_BOTTOM_CONTROLS:I = 0x8
.field private static final MSG_REFRESH_IMAGE:I = 0x15
.field private static final MSG_UNFREEZE_GLROOT:I = 0x6
.field private static final MSG_UPDATE_DEFERRED:I = 0x18
.field private static final MSG_UPDATE_PANORAMA_UI:I = 0x1a
.field private static final MSG_UPDATE_PHOTO_UI:I = 0x16
.field private static final MSG_UPDATE_SHARE_URI:I = 0x19
.field private static final TAG:Ljava/lang/String; = null
.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0xfa
.field private mActivity:Lcom/pinguo/album/activities/BaseActivity;
.field private mCurrentIndex:I
.field private mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
.field private mDeferUpdateUntil:J
.field private mDeferredUpdateWaiting:Z
.field private mDeletePath:Lcom/pinguo/album/data/MediaPath;
.field private mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mGLRootView:Lcom/pinguo/album/views/GLRenderView;
.field private mHandler:Landroid/os/Handler;
.field private mIsActive:Z
.field private mMediaSet:Lcom/pinguo/album/data/MediaSet;
.field private mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
.field private mOrientationManager:Lcom/pinguo/album/OrientationManager;
.field private mPhotoView:Lcom/pinguo/album/views/FullImageView;
.field private final mRootPane:Lcom/pinguo/album/views/GLBaseView;
.field private mSelectionManager:Lcom/pinguo/album/selectors/SelectionManager;
.field private mSetPathString:Ljava/lang/String;
.field private mShareListView:Lcom/pinguo/share/ui/ShareListView;
.field private mShowBars:Z
.field private mStartInFilmstrip:Z
.field private mTotalCount:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/fragment/PGFullImageFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/fragment/PGFullImageFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;-><init>()V
iput v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
iput v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
iput-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShowBars:Z
iput-object v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
iput-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferredUpdateWaiting:Z
const-wide v0, 0x7fffffffffffffffL
iput-wide v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferUpdateUntil:J
iput-object v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
new-instance v0, Lcom/pinguo/album/fragment/PGFullImageFragment$1;
invoke-direct {v0, p0}, Lcom/pinguo/album/fragment/PGFullImageFragment$1;-><init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
iput-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/views/FullImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/fragment/PGFullImageFragment;)J
.registers 3
iget-wide v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferUpdateUntil:J
return-wide v0
.end method
.method static synthetic access$10(Lcom/pinguo/album/fragment/PGFullImageFragment;I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/activities/BaseActivity;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/album/fragment/PGFullImageFragment;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
return v0
.end method
.method static synthetic access$13(Lcom/pinguo/album/fragment/PGFullImageFragment;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
return v0
.end method
.method static synthetic access$14(Lcom/pinguo/album/fragment/PGFullImageFragment;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->updateActionBarMessage(Ljava/lang/String;)V
return-void
.end method
.method static synthetic access$15(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
return-object v0
.end method
.method static synthetic access$16(Lcom/pinguo/album/fragment/PGFullImageFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mIsActive:Z
return v0
.end method
.method static synthetic access$17(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->startDownload()V
return-void
.end method
.method static synthetic access$18(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/data/MediaSet;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
return-object v0
.end method
.method static synthetic access$19(Lcom/pinguo/album/fragment/PGFullImageFragment;I)V
.registers 2
iput p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/album/fragment/PGFullImageFragment;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferredUpdateWaiting:Z
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->updateUIForCurrentPhoto()V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/album/fragment/PGFullImageFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/data/MediaItem;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/data/MediaItem;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/data/MediaItem;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/album/fragment/PGFullImageFragment;->updateCurrentPhoto(Lcom/pinguo/album/data/MediaItem;)V
return-void
.end method
.method private hideBars()V
.registers 5
const/16 v3, 0x8
iget-boolean v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShowBars:Z
if-nez v2, :cond_7
:goto_6
return-void
:cond_7
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShowBars:Z
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/pinguo/album/views/PGAlbumActionBar;->setVisible(I)V
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v3, v2}, Lcom/pinguo/album/views/PGAlbumBottomBar;->setVisible(IZ)V
goto :goto_6
.end method
.method private initBrowseActionBar()V
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
move-result-object v0
const/4 v2, 0x2
invoke-virtual {v0, v2, p0}, Lcom/pinguo/album/views/PGAlbumActionBar;->setOnActionMode(ILcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;)V
invoke-virtual {v0, v3, v3}, Lcom/pinguo/album/views/PGAlbumActionBar;->setVisible(IZ)V
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;
move-result-object v1
invoke-virtual {v1, v4, p0}, Lcom/pinguo/album/views/PGAlbumBottomBar;->setOnActionMode(ILcom/pinguo/album/views/PGAlbumActionBar$OnActionModeListener;)V
invoke-virtual {v1, v3, v3}, Lcom/pinguo/album/views/PGAlbumBottomBar;->setVisible(IZ)V
iput-boolean v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShowBars:Z
return-void
.end method
.method private initDatas()V
.registers 9
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getArguments()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "album_title"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v4, "album_id"
const-wide/16 v5, 0x0
invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
const-string/jumbo v4, "media-path"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v4, Lcom/pinguo/album/fragment/PGFullImageFragment;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, " photo fragment onCreateView id:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " albumTitle:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " albumMediaPath:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " isCamera:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v4
new-instance v5, Lcom/pinguo/album/data/MediaPath;
invoke-direct {v5, v1, v0}, Lcom/pinguo/album/data/MediaPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v4, v5}, Lcom/pinguo/album/data/AlbumDataManager;->getMediaSet(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaSet;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
iget-object v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
if-nez v4, :cond_70
const-string/jumbo v4, "MediaSet is null. Path = %s"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
aput-object v1, v5, v7
invoke-static {v4, v5}, Lcom/pinguo/album/utils/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_70
const-string/jumbo v4, "media-set-path"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mSetPathString:Ljava/lang/String;
const-string/jumbo v4, "start-in-filmstrip"
invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v4
iput-boolean v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mStartInFilmstrip:Z
const-string/jumbo v4, "index-hint"
invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v4
iput v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
sget-object v4, Lcom/pinguo/album/fragment/PGFullImageFragment;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "------------mCurrentIndex:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v6, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private initViews()V
.registers 4
new-instance v0, Lcom/pinguo/album/selectors/SelectionManager;
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/pinguo/album/selectors/SelectionManager;-><init>(Lcom/pinguo/album/PGAlbumContext;Z)V
iput-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mSelectionManager:Lcom/pinguo/album/selectors/SelectionManager;
new-instance v0, Lcom/pinguo/album/views/FullImageView;
invoke-direct {v0, p0}, Lcom/pinguo/album/views/FullImageView;-><init>(Lcom/pinguo/album/fragment/PGBaseFragment;)V
iput-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v0, p0}, Lcom/pinguo/album/views/FullImageView;->setListener(Lcom/pinguo/album/views/FullImageView$Listener;)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/GLBaseView;->addComponent(Lcom/pinguo/album/views/GLBaseView;)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
invoke-virtual {v0}, Lcom/pinguo/album/activities/BaseActivity;->getOrientationManager()Lcom/pinguo/album/OrientationManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mOrientationManager:Lcom/pinguo/album/OrientationManager;
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mOrientationManager:Lcom/pinguo/album/OrientationManager;
invoke-interface {v0, v1}, Lcom/pinguo/album/views/GLController;->setOrientationSource(Lcom/pinguo/album/common/OrientationSource;)V
return-void
.end method
.method private requestDeferredUpdate()V
.registers 5
const-wide/16 v2, 0xfa
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferUpdateUntil:J
iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferredUpdateWaiting:Z
if-nez v0, :cond_17
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeferredUpdateWaiting:Z
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
const/16 v1, 0x18
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_17
return-void
.end method
.method private showBars()V
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
iget-boolean v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShowBars:Z
if-eqz v2, :cond_7
:goto_6
return-void
:cond_7
iput-boolean v4, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShowBars:Z
iget-object v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mOrientationManager:Lcom/pinguo/album/OrientationManager;
invoke-virtual {v2}, Lcom/pinguo/album/OrientationManager;->unlockOrientation()V
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/pinguo/album/views/PGAlbumActionBar;->setVisible(I)V
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getPGAlbumBottomBar()Lcom/pinguo/album/views/PGAlbumBottomBar;
move-result-object v1
invoke-virtual {v1, v3, v4}, Lcom/pinguo/album/views/PGAlbumBottomBar;->setVisible(IZ)V
goto :goto_6
.end method
.method private startDownload()V
.registers 8
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
const/4 v4, 0x0
invoke-interface {v3, v4}, Lcom/pinguo/album/fragment/PGFullImageFragment$Model;->getMediaItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/image/CloudImage;
new-instance v3, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "http://dn-c360.qbox.me/"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/pinguo/album/data/image/CloudImage;->getUriKey()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1}, Lcom/pinguo/album/data/image/CloudImage;->getLocalPath()Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v4, v5}, Lcom/pinguo/album/data/image/download/PictureDownloadManager$RequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/pinguo/album/data/image/download/PictureDownloadManager;
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v0, v3, v2}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;-><init>(Landroid/content/Context;Ljava/util/List;)V
new-instance v3, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-direct {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;-><init>(Landroid/content/Context;)V
iput-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDownloadProgressBar:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
const/4 v4, -0x3
const v5, 0x7f080035
invoke-virtual {p0, v5}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getString(I)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/pinguo/album/fragment/PGFullImageFragment$6;
invoke-direct {v6, p0, v0}, Lcom/pinguo/album/fragment/PGFullImageFragment$6;-><init>(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/data/image/download/PictureDownloadManager;)V
invoke-virtual {v3, v4, v5, v6}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
new-instance v3, Lcom/pinguo/album/fragment/PGFullImageFragment$7;
invoke-direct {v3, p0}, Lcom/pinguo/album/fragment/PGFullImageFragment$7;-><init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
invoke-virtual {v0, v3}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->addListener(Lcom/pinguo/album/data/image/download/PictureDownloaderListener;)V
invoke-virtual {v0}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->startDownload()V
return-void
.end method
.method private toggleBars()V
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShowBars:Z
if-eqz v0, :cond_8
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->hideBars()V
:goto_7
return-void
:cond_8
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->showBars()V
goto :goto_7
.end method
.method private updateActionBarMessage(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getPGAlbumActionBar()Lcom/pinguo/album/views/PGAlbumActionBar;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/PGAlbumActionBar;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method private updateCurrentPhoto(Lcom/pinguo/album/data/MediaItem;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v0}, Lcom/pinguo/album/views/FullImageView;->getFilmMode()Z
move-result v0
if-eqz v0, :cond_13
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->requestDeferredUpdate()V
goto :goto_4
:cond_13
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->updateUIForCurrentPhoto()V
goto :goto_4
.end method
.method private updateUIForCurrentPhoto()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentPhoto:Lcom/pinguo/album/data/MediaItem;
if-nez v0, :cond_4
:cond_4
return-void
.end method
.method public getGLController()Lcom/pinguo/album/views/GLController;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/fragment/PGFullImageFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v6, 0x7f080324
const v8, 0x7f080036
const v7, 0x7f080035
const/4 v5, 0x1
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v3
const v4, 0x7f0a003f
if-ne v3, v4, :cond_1b
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V
:goto_1a
:cond_1a
const-string v1, " - Lcom/pinguo/album/fragment/PGFullImageFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1b
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v3
const v4, 0x7f0a0054
if-ne v3, v4, :cond_43
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
if-nez v3, :cond_38
new-instance v3, Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-direct {v3, v4}, Lcom/pinguo/share/ui/ShareListView;-><init>(Landroid/app/Activity;)V
iput-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v3, p0}, Lcom/pinguo/share/ui/ShareListView;->setOnClickListener(Lcom/pinguo/share/ui/ShareListView$ShareClickListener;)V
:cond_38
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v3, v5}, Lcom/pinguo/share/ui/ShareListView;->initShowItems(Z)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShareListView:Lcom/pinguo/share/ui/ShareListView;
invoke-virtual {v3}, Lcom/pinguo/share/ui/ShareListView;->show()V
goto :goto_1a
:cond_43
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v3
const v4, 0x7f0a0055
if-ne v3, v4, :cond_89
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z
move-result v3
if-nez v3, :cond_5a
invoke-virtual {p0, v6}, Lcom/pinguo/album/fragment/PGFullImageFragment;->showShortToast(I)V
goto :goto_1a
:cond_5a
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/network/NetworkUtils;->currentNetType(Landroid/content/Context;)I
move-result v3
if-eq v3, v5, :cond_85
new-instance v3, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-direct {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v4, 0x7f080034
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v0
new-instance v2, Lcom/pinguo/album/fragment/PGFullImageFragment$4;
invoke-direct {v2, p0}, Lcom/pinguo/album/fragment/PGFullImageFragment$4;-><init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
invoke-virtual {v0, v8, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v3
invoke-virtual {v3, v7, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_1a
:cond_85
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->startDownload()V
goto :goto_1a
:cond_89
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v3
const v4, 0x7f0a0056
if-ne v3, v4, :cond_1a
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z
move-result v3
if-nez v3, :cond_a1
invoke-virtual {p0, v6}, Lcom/pinguo/album/fragment/PGFullImageFragment;->showShortToast(I)V
goto/16 :goto_1a
:cond_a1
new-instance v1, Lcom/pinguo/album/fragment/DeleteMediaListener;
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
new-instance v6, Lcom/pinguo/album/fragment/PGFullImageFragment$5;
invoke-direct {v6, p0}, Lcom/pinguo/album/fragment/PGFullImageFragment$5;-><init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
invoke-direct {v1, v3, v4, v5, v6}, Lcom/pinguo/album/fragment/DeleteMediaListener;-><init>(Landroid/app/Activity;Lcom/pinguo/album/data/AlbumDataManager;Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/fragment/DeleteMediaListener$DeleteMediaProgressListener;)V
new-instance v3, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-direct {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v4, 0x7f080030
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v0
invoke-virtual {v0, v8, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v3
invoke-virtual {v3, v7, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto/16 :goto_1a
.end method
.method public onCommitDeleteImage()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeletePath:Lcom/pinguo/album/data/MediaPath;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeletePath:Lcom/pinguo/album/data/MediaPath;
goto :goto_4
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/album/fragment/PGFullImageFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/pinguo/album/activities/BaseActivity;
iput-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mActivity:Lcom/pinguo/album/activities/BaseActivity;
invoke-super {p0, p1}, Lcom/pinguo/album/fragment/PGBaseFragment;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/pinguo/album/fragment/PGFullImageFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 15
const/4 v10, 0x1
const/4 v6, 0x0
const v1, 0x7f03000a
invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v9
const v1, 0x7f0a0057
invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/album/views/GLRenderView;
iput-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->initViews()V
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->initDatas()V
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->initBrowseActionBar()V
new-instance v1, Lcom/pinguo/album/fragment/PGFullImageFragment$2;
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v2
invoke-direct {v1, p0, v2}, Lcom/pinguo/album/fragment/PGFullImageFragment$2;-><init>(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/views/GLController;)V
iput-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mSelectionManager:Lcom/pinguo/album/selectors/SelectionManager;
iget-object v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v1, v2}, Lcom/pinguo/album/selectors/SelectionManager;->setSourceMediaSet(Lcom/pinguo/album/data/MediaSet;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
if-nez v1, :cond_4a
sget-object v1, Lcom/pinguo/album/fragment/PGFullImageFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "failed to restore "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mSetPathString:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_4a
const/4 v4, 0x0
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCount()I
move-result v1
iput v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
iget v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
if-lez v1, :cond_71
iget v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
iget v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mTotalCount:I
if-lt v1, v2, :cond_5f
iput v6, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
:cond_5f
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
iget v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
invoke-virtual {v1, v2, v10}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaItem;
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v4
:cond_71
new-instance v0, Lcom/pinguo/album/adapters/PhotoDataAdapter;
iget-object v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
iget v5, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mCurrentIndex:I
move-object v1, p0
move v7, v6
move v8, v6
invoke-direct/range {v0 .. v8}, Lcom/pinguo/album/adapters/PhotoDataAdapter;-><init>(Lcom/pinguo/album/fragment/PGBaseFragment;Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/data/MediaPath;IIZZ)V
iput-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
iget-object v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
invoke-virtual {v1, v2}, Lcom/pinguo/album/views/FullImageView;->setModel(Lcom/pinguo/album/views/FullImageView$Model;)V
new-instance v1, Lcom/pinguo/album/fragment/PGFullImageFragment$3;
invoke-direct {v1, p0}, Lcom/pinguo/album/fragment/PGFullImageFragment$3;-><init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/album/adapters/PhotoDataAdapter;->setDataListener(Lcom/pinguo/album/adapters/PhotoDataAdapter$DataListener;)V
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
iget-boolean v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mStartInFilmstrip:Z
if-eqz v2, :cond_9f
iget-object v2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mMediaSet:Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v2}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCount()I
move-result v2
if-le v2, v10, :cond_9f
move v6, v10
:cond_9f
invoke-virtual {v1, v6}, Lcom/pinguo/album/views/FullImageView;->setFilmMode(Z)V
return-object v9
.end method
.method public onCurrentImageUpdated()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/album/views/GLController;->unfreeze()V
return-void
.end method
.method public onDeleteImage(Lcom/pinguo/album/data/MediaPath;I)V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->onCommitDeleteImage()V
iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mDeletePath:Lcom/pinguo/album/data/MediaPath;
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/album/fragment/PGFullImageFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v0
invoke-interface {v0, v1}, Lcom/pinguo/album/views/GLController;->setOrientationSource(Lcom/pinguo/album/common/OrientationSource;)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onDestroy()V
const-string v1, " - Lcom/pinguo/album/fragment/PGFullImageFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onFilmModeChanged(Z)V
.registers 2
return-void
.end method
.method public onFullScreenChanged(Z)V
.registers 7
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
const/4 v4, 0x4
if-eqz p1, :cond_f
const/4 v1, 0x1
:goto_7
invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
:cond_f
move v1, v2
goto :goto_7
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/album/fragment/PGFullImageFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onPause()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->lockRenderThread()V
const/4 v0, 0x0
:try_start_9
iput-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mIsActive:Z
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/album/views/GLController;->unfreeze()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
invoke-interface {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment$Model;->pause()V
:cond_21
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v0}, Lcom/pinguo/album/views/FullImageView;->pause()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->onCommitDeleteImage()V
:try_end_30
.catchall {:try_start_9 .. :try_end_30} :catchall_3b
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->unlockRenderThread()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->onPause()V
const-string v1, " - Lcom/pinguo/album/fragment/PGFullImageFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_3b
move-exception v0
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v1}, Lcom/pinguo/album/views/GLRenderView;->unlockRenderThread()V
throw v0
.end method
.method public onPictureCenter(Z)V
.registers 2
return-void
.end method
.method public onResume()V
.registers 5
const-string v1, " + Lcom/pinguo/album/fragment/PGFullImageFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onResume()V
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->showBars()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->lockRenderThread()V
:try_start_b
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->freeze()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mIsActive:Z
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mRootPane:Lcom/pinguo/album/views/GLBaseView;
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/GLRenderView;->setContentPane(Lcom/pinguo/album/views/GLBaseView;)V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
invoke-interface {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment$Model;->resume()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v0}, Lcom/pinguo/album/views/FullImageView;->resume()V
iget-boolean v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mShowBars:Z
if-nez v0, :cond_2e
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/GLRenderView;->setLightsOutMode(Z)V
:cond_2e
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mHandler:Landroid/os/Handler;
const/4 v1, 0x6
const-wide/16 v2, 0xfa
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:try_end_36
.catchall {:try_start_b .. :try_end_36} :catchall_41
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->unlockRenderThread()V
iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v0}, Lcom/pinguo/album/views/GLRenderView;->onResume()V
const-string v1, " - Lcom/pinguo/album/fragment/PGFullImageFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_41
move-exception v0
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mGLRootView:Lcom/pinguo/album/views/GLRenderView;
invoke-virtual {v1}, Lcom/pinguo/album/views/GLRenderView;->unlockRenderThread()V
throw v0
.end method
.method public onShareItemClick(I)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
const/4 v3, 0x0
invoke-interface {v1, v3}, Lcom/pinguo/album/fragment/PGFullImageFragment$Model;->getMediaItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/image/CloudImage;
invoke-static {v2, v1}, Lcom/pinguo/share/ShareAccess;->cloudImage2CloudShareInfo(Landroid/content/Context;Lcom/pinguo/album/data/image/CloudImage;)Lcom/pinguo/share/CloudShareInfo;
move-result-object v0
packed-switch p1, :pswitch_data_3e
:pswitch_14
:goto_14
return-void
:pswitch_15
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/pinguo/share/ShareManager;->qqShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
goto :goto_14
:pswitch_1d
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/pinguo/share/ShareManager;->weChatShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
goto :goto_14
:pswitch_25
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/pinguo/share/ShareManager;->weChatFriendsShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
goto :goto_14
:pswitch_2d
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/pinguo/share/ShareManager;->smsShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
goto :goto_14
:pswitch_35
invoke-virtual {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/pinguo/share/ShareManager;->websiteShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
goto :goto_14
nop
:pswitch_data_3e
.packed-switch 0x0
:pswitch_15
:pswitch_1d
:pswitch_25
:pswitch_14
:pswitch_14
:pswitch_14
:pswitch_2d
:pswitch_35
.end packed-switch
.end method
.method public onSingleTapConfirmed(II)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/album/fragment/PGFullImageFragment; onSingleTapConfirmed "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const/4 v6, 0x0
iget-object v7, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mModel:Lcom/pinguo/album/fragment/PGFullImageFragment$Model;
invoke-interface {v7, v6}, Lcom/pinguo/album/fragment/PGFullImageFragment$Model;->getMediaItem(I)Lcom/pinguo/album/data/MediaItem;
move-result-object v1
if-nez v1, :cond_b
:goto_a
const-string v1, " - Lcom/pinguo/album/fragment/PGFullImageFragment; onSingleTapConfirmed"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_b
invoke-virtual {v1}, Lcom/pinguo/album/data/MediaItem;->getSupportedOperations()I
move-result v3
and-int/lit16 v7, v3, 0x80
if-eqz v7, :cond_3f
move v2, v5
:goto_14
if-eqz v2, :cond_3b
iget-object v7, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v7}, Lcom/pinguo/album/views/FullImageView;->getWidth()I
move-result v4
iget-object v7, p0, Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
invoke-virtual {v7}, Lcom/pinguo/album/views/FullImageView;->getHeight()I
move-result v0
div-int/lit8 v7, v4, 0x2
sub-int v7, p1, v7
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
mul-int/lit8 v7, v7, 0xc
if-gt v7, v4, :cond_41
div-int/lit8 v7, v0, 0x2
sub-int v7, p2, v7
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
mul-int/lit8 v7, v7, 0xc
if-gt v7, v0, :cond_41
move v2, v5
:goto_3b
:cond_3b
invoke-direct {p0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->toggleBars()V
goto :goto_a
:cond_3f
move v2, v6
goto :goto_14
:cond_41
move v2, v6
goto :goto_3b
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/album/fragment/PGFullImageFragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/album/fragment/PGBaseFragment;->onStop()V
const-string v1, " - Lcom/pinguo/album/fragment/PGFullImageFragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method