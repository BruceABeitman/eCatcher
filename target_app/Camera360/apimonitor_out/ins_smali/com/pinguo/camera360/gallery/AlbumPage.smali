.class public Lcom/pinguo/camera360/gallery/AlbumPage;
.super Lcom/pinguo/camera360/gallery/ActivityState;
.source "AlbumPage.java"
.implements Lcom/pinguo/camera360/gallery/data/MediaSet$SyncListener;
.implements Lcom/pinguo/camera360/gallery/ui/PhotoSelector$SelectionListener;
.field private static final BIT_LOADING_RELOAD:I = 0x1
.field private static final BIT_LOADING_SYNC:I = 0x2
.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"
.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"
.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"
.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"
.field public static final KEY_SYNC_PHOTO:Ljava/lang/String; = "sync_photo"
.field private static final MSG_CHECK_PHOTO:I = 0x3
.field private static final MSG_PICK_PHOTO:I = 0x1
.field private static final MSG_SYNC_PHOTO:I = 0x2
.field private static final REQUEST_DO_ANIMATION:I = 0x3
.field private static final REQUEST_PHOTO:I = 0x2
.field private static final TAG:Ljava/lang/String; = null
.field private static final TIME_DAY:J = 0x5265c00L
.field private static final TIP_SHOW_MEDIA_COUNT:I = 0x12c
.field private static final USER_DISTANCE_METER:F = 0.3f
.field private mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
.field private mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
.field private mFileObserver:Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;
.field private mFocusIndex:I
.field private mHandler:Landroid/os/Handler;
.field private mInitialSynced:Z
.field private mIsActive:Z
.field private mLoadingBits:I
.field private mMediaCount:I
.field private mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;
.field private mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
.field private mMediaSetName:Ljava/lang/String;
.field private mOpenCenter:Lcom/pinguo/camera360/gallery/ui/RelativePosition;
.field protected mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
.field private mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
.field private mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
.field private final mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;
.field private mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
.field private mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
.field private mState:Lcom/pinguo/camera360/gallery/ActivityState$State;
.field private mSyncProgressDlg:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.field private mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;
.field private mUserDistance:F
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/gallery/AlbumPage;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/gallery/AlbumPage;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ActivityState;-><init>()V
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
sget-object v0, Lcom/pinguo/camera360/gallery/ActivityState$State;->Normal:Lcom/pinguo/camera360/gallery/ActivityState$State;
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mState:Lcom/pinguo/camera360/gallery/ActivityState$State;
iput v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mLoadingBits:I
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mInitialSynced:Z
iput-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;
iput-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSetName:Ljava/lang/String;
iput v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mFocusIndex:I
new-instance v0, Lcom/pinguo/camera360/gallery/ui/RelativePosition;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/RelativePosition;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mOpenCenter:Lcom/pinguo/camera360/gallery/ui/RelativePosition;
new-instance v0, Lcom/pinguo/camera360/gallery/AlbumPage$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/AlbumPage$1;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;
new-instance v0, Lcom/pinguo/camera360/gallery/AlbumPage$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/AlbumPage$2;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/RelativePosition;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mOpenCenter:Lcom/pinguo/camera360/gallery/ui/RelativePosition;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->updateTitle(I)V
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->setLoadingBit(I)V
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
return-void
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/gallery/AlbumPage;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
return v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->clearLoadingBit(I)V
return-void
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/gallery/AlbumPage;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->onDown(I)V
return-void
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/gallery/AlbumPage;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->onUp(Z)V
return-void
.end method
.method static synthetic access$18(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->onSingleTapUp(I)V
return-void
.end method
.method static synthetic access$19(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->onSingleTagTapUp(I)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
return-object v0
.end method
.method static synthetic access$20(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->pickPhotoToReturn(I)V
return-void
.end method
.method static synthetic access$21(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->pickPhotoToBrowse(I)V
return-void
.end method
.method static synthetic access$22(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncProgressDlg:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-object v0
.end method
.method static synthetic access$23(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncProgressDlg:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;
return-void
.end method
.method static synthetic access$24(Lcom/pinguo/camera360/gallery/AlbumPage;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mInitialSynced:Z
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/AlbumPage;)F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mUserDistance:F
return v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/AlbumDataLoader;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/gallery/AlbumPage;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
return v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/gallery/ActivityState$State;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mState:Lcom/pinguo/camera360/gallery/ActivityState$State;
return-void
.end method
.method private clearLoadingBit(I)V
.registers 4
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mLoadingBits:I
xor-int/lit8 v1, p1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mLoadingBits:I
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mLoadingBits:I
if-nez v0, :cond_14
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->size()I
:cond_14
return-void
.end method
.method private initializeData(Landroid/os/Bundle;)V
.registers 5
new-instance v0, Lcom/pinguo/camera360/gallery/data/Path;
const-string/jumbo v1, "media-type"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
const-string/jumbo v2, "media-path-id"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(ILjava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;
const-string/jumbo v0, "media-name"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSetName:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSetName:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaSet(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->setSourceMediaSet(Lcom/pinguo/camera360/gallery/data/MediaSet;)V
new-instance v0, Lcom/pinguo/camera360/gallery/AlbumDataLoader;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/data/MediaSet;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
new-instance v1, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/gallery/AlbumPage$MyLoadingListener;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->setLoadingListener(Lcom/pinguo/camera360/gallery/LoadingListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->setModel(Lcom/pinguo/camera360/gallery/AlbumDataLoader;)V
return-void
.end method
.method private initializeViews()V
.registers 7
const/4 v4, 0x0
new-instance v1, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Z)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->setAutoLeaveSelectionMode(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->setSelectionListener(Lcom/pinguo/camera360/gallery/ui/PhotoSelector$SelectionListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v1}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;
move-result-object v1
iget-object v1, v1, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/SlotView;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;I)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
iget-object v5, v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumPage;->sortTagSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;-><init>(Lcom/pinguo/camera360/gallery/RootActivity;Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/PhotoSelector;Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SortTagSpec;)V
iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotRenderer(Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLView;->addComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
new-instance v2, Lcom/pinguo/camera360/gallery/AlbumPage$4;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/gallery/AlbumPage$4;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setListener(Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;)V
return-void
.end method
.method private onDown(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->setPressedIndex(I)V
return-void
.end method
.method private onSingleTagTapUp(I)V
.registers 5
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
if-eqz v2, :cond_c
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v2
if-nez v2, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getSortTags()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;
iget-boolean v2, v1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->checked:Z
if-eqz v2, :cond_2b
const/4 v0, 0x0
:goto_1e
iput-boolean v0, v1, Lcom/pinguo/camera360/gallery/data/MediaSet$SortTag;->checked:Z
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v2, p1, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->toggleTag(IZ)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
goto :goto_c
:cond_2b
const/4 v0, 0x1
goto :goto_1e
.end method
.method private onSingleTapUp(I)V
.registers 12
const/4 v9, 0x0
iget-boolean v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
if-nez v6, :cond_6
:goto_5
:cond_5
return-void
:cond_6
const/4 v4, 0x1
const/4 v2, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-virtual {v6, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->get(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
move-result-object v3
if-eqz v3, :cond_5
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/MediaItem;->existOnStorage()Z
move-result v2
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_80
sget-object v6, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
invoke-static {v6, v5}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->getAvilidPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
:goto_28
sget-object v6, Lcom/pinguo/camera360/gallery/AlbumPage;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "-------\u56fe\u7247\u662f\u5426\u5b58\u5728\uff1a"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, ":\u662f\u5426\u4e0d\u5728\u5236\u56fe\u8fc7\u7a0b\u4e2d:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, ":\u8def\u5f84:"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v6
if-eqz v6, :cond_a4
if-nez v4, :cond_82
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v7, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0800b5
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(Ljava/lang/String;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
goto :goto_5
:cond_80
const/4 v4, 0x1
goto :goto_28
:cond_82
if-nez v2, :cond_98
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
iget-object v7, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0801fa
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/pinguo/camera360/gallery/RootActivity;->showToastShort(Ljava/lang/String;)Lcom/pinguo/camera360/lib/ui/RotateTextToast;
goto/16 :goto_5
:cond_98
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v6, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->toggleSlot(I)V
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
goto/16 :goto_5
:cond_a4
if-nez v2, :cond_db
if-eqz v4, :cond_db
new-instance v1, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-direct {v1, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v6, 0x7f0801ed
invoke-virtual {v1, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setMessage(I)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
const v6, 0x7f0802c5
new-instance v7, Lcom/pinguo/camera360/gallery/AlbumPage$3;
invoke-direct {v7, p0}, Lcom/pinguo/camera360/gallery/AlbumPage$3;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
invoke-virtual {v1, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v6
const v7, 0x7f0802c6
const/4 v8, 0x0
invoke-virtual {v6, v7, v8}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog$Builder;->show()Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/RootActivity;->getOrientation()I
move-result v6
invoke-virtual {v0, v6, v9}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V
invoke-virtual {v0, v9}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
goto/16 :goto_5
:cond_db
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
invoke-virtual {v6, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->setPressedIndex(I)V
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->setPressedUp()V
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
iget-object v7, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
const/4 v8, 0x1
invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;
move-result-object v7
const-wide/16 v8, 0xb4
invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto/16 :goto_5
.end method
.method private onUp(Z)V
.registers 4
if-eqz p1, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->setPressedIndex(I)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->setPressedUp()V
goto :goto_8
.end method
.method private onUpPressed()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/StateManager;->getStateCount()I
move-result v0
const/4 v1, 0x1
if-lt v0, v1, :cond_10
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onBackPressed()V
:cond_10
return-void
.end method
.method private pickPhotoToBrowse(I)V
.registers 11
iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
if-nez v4, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-virtual {v4, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->get(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
move-result-object v1
if-eqz v1, :cond_4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v4, "index-hint"
invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v4, "media-type"
iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I
move-result v5
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v4, "media-path-id"
iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v4, p1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;
move-result-object v2
new-instance v3, Landroid/graphics/Rect;
iget v4, v2, Landroid/graphics/Rect;->left:I
iget v5, v2, Landroid/graphics/Rect;->top:I
iget-object v6, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getScrollY()I
move-result v6
sub-int/2addr v5, v6
iget v6, v2, Landroid/graphics/Rect;->right:I
iget v7, v2, Landroid/graphics/Rect;->bottom:I
iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getScrollY()I
move-result v8
sub-int/2addr v7, v8
invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
const-string/jumbo v4, "open-animation-rect"
invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;
move-result-object v4
const-class v5, Lcom/pinguo/camera360/gallery/PhotoPage;
const/4 v6, 0x2
invoke-virtual {v4, v5, v6, v0}, Lcom/pinguo/camera360/gallery/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
goto :goto_4
.end method
.method private pickPhotoToReturn(I)V
.registers 6
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
if-nez v2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->get(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Utils;->notifyInCannotEdited(Ljava/lang/String;Lcom/pinguo/camera360/base/BaseActivity;)Z
move-result v2
if-nez v2, :cond_4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string/jumbo v2, "intent_key_replated_photo_path"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const/4 v3, -0x1
invoke-virtual {v2, v3, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->setResult(ILandroid/content/Intent;)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/RootActivity;->finish()V
goto :goto_4
.end method
.method private setLoadingBit(I)V
.registers 3
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mLoadingBits:I
or-int/2addr v0, p1
iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mLoadingBits:I
return-void
.end method
.method private showTopTip()Z
.registers 15
const-wide/32 v12, 0x5265c00
const/4 v6, 0x0
const/4 v5, -0x1
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v4
iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
instance-of v8, v8, Lcom/pinguo/camera360/gallery/data/C360Album;
if-nez v8, :cond_11
const/4 v8, 0x0
:goto_10
return v8
:cond_11
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
check-cast v0, Lcom/pinguo/camera360/gallery/data/C360Album;
iget v8, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
if-lez v8, :cond_81
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getAblumTopCaptureTipshown()J
move-result-wide v10
sub-long/2addr v8, v10
cmp-long v8, v8, v12
if-lez v8, :cond_4f
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/C360Album;->hasCaptures()Z
move-result v2
sget-object v8, Lcom/pinguo/camera360/gallery/AlbumPage;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "---------hasCapture:"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v2, :cond_4f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-virtual {v4, v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setAblumTopCaptureTipshown(J)V
const v5, 0x7f0800b8
invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryShowTips(I)V
const/4 v6, 0x1
:cond_4f
if-nez v6, :cond_72
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getAblumTopCountTipshown()J
move-result-wide v10
sub-long/2addr v8, v10
cmp-long v8, v8, v12
if-lez v8, :cond_72
iget v8, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
const/16 v9, 0x12c
if-lt v8, v9, :cond_72
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-virtual {v4, v8, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setAblumTopCountTipshown(J)V
const v5, 0x7f0800b7
invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryShowTips(I)V
const/4 v6, 0x1
:cond_72
if-nez v6, :cond_81
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isAblumTopTipshown()Z
move-result v8
if-nez v8, :cond_81
const v5, 0x7f0800b6
invoke-static {v5}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryShowTips(I)V
const/4 v6, 0x1
:cond_81
if-eqz v6, :cond_bd
if-lez v5, :cond_bd
iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopTip()Landroid/view/ViewGroup;
move-result-object v8
const v9, 0x7f0a0143
invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V
move v7, v5
iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopTip()Landroid/view/ViewGroup;
move-result-object v8
new-instance v9, Lcom/pinguo/camera360/gallery/AlbumPage$5;
invoke-direct {v9, p0, v7, v4}, Lcom/pinguo/camera360/gallery/AlbumPage$5;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;ILcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;)V
invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v8, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v8}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopTip()Landroid/view/ViewGroup;
move-result-object v8
const v9, 0x7f0a0144
invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/ImageView;
new-instance v8, Lcom/pinguo/camera360/gallery/AlbumPage$6;
invoke-direct {v8, p0, v7, v4}, Lcom/pinguo/camera360/gallery/AlbumPage$6;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;ILcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;)V
invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_bd
move v8, v6
goto/16 :goto_10
.end method
.method private updateCloudAlbumTips()V
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-static {v2}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopTip()Landroid/view/ViewGroup;
move-result-object v1
invoke-virtual {v0}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z
move-result v2
if-eqz v2, :cond_1e
invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I
move-result v2
if-nez v2, :cond_1d
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V
:goto_1d
:cond_1d
return-void
:cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I
move-result v2
const/16 v3, 0x3ea
if-ne v2, v3, :cond_1d
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/AlbumPage;->showTopTip()Z
move-result v2
if-eqz v2, :cond_1d
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V
goto :goto_1d
.end method
.method private updateTitle(I)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I
move-result v1
const/16 v2, 0x3ea
if-eq v1, v2, :cond_21
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSetName:Ljava/lang/String;
invoke-virtual {v1, v2, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setHeaderTitle(Ljava/lang/String;I)V
:goto_15
if-gtz p1, :cond_38
const/4 v0, 0x1
:goto_18
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->setEmptyAlbumView(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/AlbumPage;->invalidate()V
return-void
:cond_21
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0800a2
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setHeaderTitle(Ljava/lang/String;I)V
goto :goto_15
:cond_38
const/4 v0, 0x0
goto :goto_18
.end method
.method public invalidate()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V
return-void
.end method
.method protected onBackPressed()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->onBackPressedInPickPhotos()V
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->leaveSelectionMode()V
goto :goto_1b
:cond_2a
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/AlbumPage;->onUpPressed()V
goto :goto_1b
.end method
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 2
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/pinguo/camera360/gallery/AlbumPage; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
const v2, 0x3e99999a
invoke-static {v2}, Lcom/pinguo/lib/util/Util;->meterToPixel(F)I
move-result v2
int-to-float v2, v2
iput v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mUserDistance:F
const/4 v2, 0x6
invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterLayShow(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/AlbumPage;->initializeViews()V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumPage;->initializeData(Landroid/os/Bundle;)V
if-nez p2, :cond_33
if-eqz p1, :cond_33
const-string/jumbo v2, "set-center"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I
move-result-object v0
if-eqz v0, :cond_33
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mOpenCenter:Lcom/pinguo/camera360/gallery/ui/RelativePosition;
aget v3, v0, v5
const/4 v4, 0x1
aget v4, v0, v4
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->setAbsolutePosition(II)V
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mOpenCenter:Lcom/pinguo/camera360/gallery/ui/RelativePosition;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/SlotView;->startScatteringAnimation(Lcom/pinguo/camera360/gallery/ui/RelativePosition;)V
:cond_33
new-instance v2, Lcom/pinguo/camera360/gallery/AlbumPage$7;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v3
invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/gallery/AlbumPage$7;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V
iput-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
new-instance v2, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->getSystemPhotoPath()Ljava/lang/String;
move-result-object v3
const/16 v4, 0x200
invoke-direct {v2, p0, v3, v4}, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;Ljava/lang/String;I)V
iput-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mFileObserver:Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mFileObserver:Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;->startWatching()V
const-string/jumbo v2, "sync_photo"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_7e
const-string/jumbo v2, "sync_photo"
invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
if-eqz v2, :cond_7e
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemNeedSync()Ljava/util/ArrayList;
move-result-object v1
if-eqz v1, :cond_7e
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
if-lez v2, :cond_7e
iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
new-instance v3, Lcom/pinguo/camera360/gallery/AlbumPage$8;
invoke-direct {v3, p0, v1}, Lcom/pinguo/camera360/gallery/AlbumPage$8;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;Ljava/util/ArrayList;)V
const-wide/16 v4, 0x64
invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_7e
const-string v1, " - Lcom/pinguo/camera360/gallery/AlbumPage; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/gallery/AlbumPage; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onDestroy()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->setLoadingListener(Lcom/pinguo/camera360/gallery/LoadingListener;)V
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mFileObserver:Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mFileObserver:Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;->stopWatching()V
:cond_16
const-string v1, " - Lcom/pinguo/camera360/gallery/AlbumPage; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLongTap(I)V
.registers 7
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v3
const/4 v4, 0x5
if-ne v3, v4, :cond_e
:goto_d
:cond_d
return-void
:cond_e
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-virtual {v3, p1}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->get(I)Lcom/pinguo/camera360/gallery/data/MediaItem;
move-result-object v1
if-eqz v1, :cond_d
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->existOnStorage()Z
move-result v0
sget-object v3, Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;->share:Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->getAvilidPath(Lcom/pinguo/camera360/gallery/temps/SandBox$ProjectFileType;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/Path;->getPathId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v3
if-nez v3, :cond_d
if-eqz v2, :cond_40
if-nez v0, :cond_4f
:cond_40
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->enterSelectionMode()V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateSelectCounterText()V
goto :goto_d
:cond_4f
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v3, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->toggleSlot(I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V
goto :goto_d
.end method
.method protected onPause()V
.registers 5
const-string v1, " + Lcom/pinguo/camera360/gallery/AlbumPage; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x2
const/4 v2, 0x0
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer$SlotFilter;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->pause()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->pause()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mHandler:Landroid/os/Handler;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setPhotoSelector(Lcom/pinguo/camera360/gallery/ui/PhotoSelector;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V
iput-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;
invoke-direct {p0, v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->clearLoadingBit(I)V
:cond_3f
const-string v1, " - Lcom/pinguo/camera360/gallery/AlbumPage; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 8
const-string v1, " + Lcom/pinguo/camera360/gallery/AlbumPage; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v6, 0x8
const/4 v5, 0x1
invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onResume()V
sget-object v3, Lcom/pinguo/camera360/gallery/AlbumPage;->TAG:Ljava/lang/String;
const-string/jumbo v4, "onResume"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean v5, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getTransitionStore()Lcom/pinguo/camera360/gallery/TransitionStore;
move-result-object v3
const-string/jumbo v4, "resume_animation"
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/gallery/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
iput-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
if-eqz v3, :cond_31
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPositionProvider:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;
invoke-virtual {v3, v4}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->setPositionProvider(Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect$PositionProvider;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->start()V
:cond_31
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v1
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActvityState(Lcom/pinguo/camera360/gallery/ActivityState;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setPhotoSelector(Lcom/pinguo/camera360/gallery/ui/PhotoSelector;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v3
const/4 v4, 0x5
if-ne v3, v4, :cond_b6
const/4 v0, 0x2
:goto_4d
const/4 v3, 0x0
invoke-virtual {v1, v0, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->setContentPane(Lcom/pinguo/camera360/gallery/ui/GLView;)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f07009f
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->intColorToFloatARGBArray(I)[F
move-result-object v2
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/AlbumPage;->setContentPaneBackground([F)V
invoke-direct {p0, v5}, Lcom/pinguo/camera360/gallery/AlbumPage;->setLoadingBit(I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumDataLoader:Lcom/pinguo/camera360/gallery/AlbumDataLoader;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/AlbumDataLoader;->resume()V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mAlbumSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/AlbumSlotRenderer;->resume()V
iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mInitialSynced:Z
if-nez v3, :cond_87
const/4 v3, 0x2
invoke-direct {p0, v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->setLoadingBit(I)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v3, p0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->requestSync(Lcom/pinguo/camera360/gallery/data/MediaSet$SyncListener;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;
:cond_87
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mState:Lcom/pinguo/camera360/gallery/ActivityState$State;
sget-object v4, Lcom/pinguo/camera360/gallery/ActivityState$State;->ResetUI:Lcom/pinguo/camera360/gallery/ActivityState$State;
if-ne v3, v4, :cond_9e
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v3
if-eqz v3, :cond_9a
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->leaveSelectionMode()V
:cond_9a
sget-object v3, Lcom/pinguo/camera360/gallery/ActivityState$State;->Normal:Lcom/pinguo/camera360/gallery/ActivityState$State;
iput-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mState:Lcom/pinguo/camera360/gallery/ActivityState$State;
:cond_9e
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I
move-result v3
iput v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaCount:I
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v3
if-eq v3, v6, :cond_b5
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/AlbumPage;->updateCloudAlbumTips()V
:cond_b5
const-string v1, " - Lcom/pinguo/camera360/gallery/AlbumPage; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_b6
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v3
if-ne v3, v6, :cond_ca
const/16 v0, 0x100
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->enterSelectionMode()V
goto :goto_4d
:cond_ca
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z
move-result v3
if-eqz v3, :cond_d5
const/4 v0, 0x4
goto/16 :goto_4d
:cond_d5
iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I
move-result v3
const/16 v4, 0x3ea
if-eq v3, v4, :cond_e3
const/16 v0, 0x8
goto/16 :goto_4d
:cond_e3
const/4 v0, 0x2
goto/16 :goto_4d
.end method
.method public onSelectionChange()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateSelectPhotosCounterText()V
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateSelectCounterText()V
goto :goto_17
.end method
.method public onSelectionModeChange(I)V
.registers 5
const/4 v2, 0x0
packed-switch p1, :pswitch_data_3c
:goto_4
return-void
:pswitch_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V
goto :goto_4
:pswitch_15
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I
move-result v0
const/16 v1, 0x3ea
if-ne v0, v1, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V
:goto_29
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V
goto :goto_4
:cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V
goto :goto_29
nop
:pswitch_data_3c
.packed-switch 0x1
:pswitch_5
:pswitch_15
.end packed-switch
.end method
.method protected onStateResult(IILandroid/content/Intent;)V
.registers 7
sparse-switch p1, :sswitch_data_34
:goto_3
:cond_3
return-void
:sswitch_4
if-eqz p3, :cond_3
const-string/jumbo v1, "return-index-hint"
const/4 v2, 0x0
invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mFocusIndex:I
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
iget v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mFocusIndex:I
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->makeSlotVisible(I)V
goto :goto_3
:sswitch_18
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->startRisingAnimation()V
goto :goto_3
:sswitch_1e
const/4 v1, -0x1
if-ne v1, p2, :cond_3
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
const-class v2, Lcom/pinguo/album/activities/PGAlbumActivity;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/RootActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_3
nop
:sswitch_data_34
.sparse-switch
0x2 -> :sswitch_4
0x3 -> :sswitch_18
0x1b9e -> :sswitch_1e
.end sparse-switch
.end method
.method public onSyncDone(Lcom/pinguo/camera360/gallery/data/MediaSet;I)V
.registers 6
sget-object v0, Lcom/pinguo/camera360/gallery/AlbumPage;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onSyncDone: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/pinguo/camera360/gallery/util/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " result="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
new-instance v1, Lcom/pinguo/camera360/gallery/AlbumPage$9;
invoke-direct {v1, p0, p2}, Lcom/pinguo/camera360/gallery/AlbumPage$9;-><init>(Lcom/pinguo/camera360/gallery/AlbumPage;I)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/RootActivity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method