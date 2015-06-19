.class public Lcom/pinguo/camera360/gallery/AlbumSetPage;
.super Lcom/pinguo/camera360/gallery/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/EyePosition$EyePositionListener;
.implements Lcom/pinguo/camera360/gallery/data/MediaSet$SyncListener;
.implements Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field private static final MSG_PICK_ALBUM:I = 0x1

.field private static final REQUEST_DO_ANIMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlbumSetPage"


# instance fields
.field private mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

.field private mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

.field private mEyePosition:Lcom/pinguo/camera360/gallery/EyePosition;

.field private mHandler:Landroid/os/Handler;

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLoadingBits:I

.field private mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;

.field private mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

.field private final mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

.field protected mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

.field private mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

.field private mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

.field private mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ActivityState;-><init>()V

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mIsActive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;

    iput v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mLoadingBits:I

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mInitialSynced:Z

    new-instance v0, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/gallery/AlbumSetPage$1;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/EyePosition;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mEyePosition:Lcom/pinguo/camera360/gallery/EyePosition;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/ui/SlotView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/gallery/AlbumSetPage;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/gallery/AlbumSetPage;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mInitialSynced:Z

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/gallery/AlbumSetPage;)F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mX:F

    return v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/gallery/AlbumSetPage;)F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/gallery/AlbumSetPage;)F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mZ:F

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/gallery/AlbumSetPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->pickAlbum(I)V

    return-void
.end method

.method private clearLoadingBit(I)V
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mLoadingBits:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mLoadingBits:I

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mLoadingBits:I

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mIsActive:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/StateManager;->getStateCount()I

    :cond_20
    return-void
.end method

.method private getSlotCenter(I[I)V
    .registers 11

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v4, v5, v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->getBoundsOf(Lcom/pinguo/camera360/gallery/ui/GLView;Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getScrollX()I

    move-result v2

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    return-void
.end method

.method private hideTips()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopTip()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

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

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaSet(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->setSourceMediaSet(Lcom/pinguo/camera360/gallery/data/MediaSet;)V

    new-instance v0, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/data/MediaSet;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    new-instance v1, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;Lcom/pinguo/camera360/gallery/AlbumSetPage$MyLoadingListener;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->setLoadingListener(Lcom/pinguo/camera360/gallery/LoadingListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->setModel(Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->hideTips()V

    return-void
.end method

.method private initializeViews()V
    .registers 7

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-static {v1}, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->get(Landroid/content/Context;)Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;

    move-result-object v0

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->slotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-direct {v1, v2, v4}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Z)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->setSelectionListener(Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;)V

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/SlotView;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    invoke-direct {v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;-><init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;I)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    new-instance v1, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    iget-object v5, v0, Lcom/pinguo/camera360/gallery/UIConfig$AlbumSetPage;->labelSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;-><init>(Lcom/pinguo/camera360/gallery/RootActivity;Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/SelectionManager;Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setSlotRenderer(Lcom/pinguo/camera360/gallery/ui/SlotView$SlotRenderer;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    new-instance v2, Lcom/pinguo/camera360/gallery/AlbumSetPage$3;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/gallery/AlbumSetPage$3;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;)V

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->setListener(Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLView;->addComponent(Lcom/pinguo/camera360/gallery/ui/GLView;)V

    return-void
.end method

.method private onDown(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onUp(Z)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->setPressedUp()V

    goto :goto_8
.end method

.method private pickAlbum(I)V
    .registers 8

    iget-boolean v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mIsActive:Z

    if-nez v3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v3, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->getBucketId(I)I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "media-type"

    const/16 v4, 0x3eb

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "media-path-id"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "media-name"

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v4, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->getMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v1, v3, [I

    invoke-direct {p0, p1, v1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->getSlotCenter(I[I)V

    const-string/jumbo v3, "set-center"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/RootActivity;->getStateManager()Lcom/pinguo/camera360/gallery/StateManager;

    move-result-object v3

    const-class v4, Lcom/pinguo/camera360/gallery/AlbumPage;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v2}, Lcom/pinguo/camera360/gallery/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_4
.end method

.method private setLoadingBit(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mLoadingBits:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mLoadingBits:I

    return-void
.end method


# virtual methods
.method public hideAlbums()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->hidePhotoList(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->notifyContentChanged()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const v2, 0x7f08008e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_24
    return-void
.end method

.method public invalidate()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->leaveSelectionMode()V

    :goto_d
    return-void

    :cond_e
    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onBackPressed()V

    goto :goto_d
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->initializeViews()V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/gallery/EyePosition;

    invoke-direct {v1, v0, p0}, Lcom/pinguo/camera360/gallery/EyePosition;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/gallery/EyePosition$EyePositionListener;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mEyePosition:Lcom/pinguo/camera360/gallery/EyePosition;

    new-instance v1, Lcom/pinguo/camera360/gallery/AlbumSetPage$2;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/RootActivity;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/gallery/AlbumSetPage$2;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;Lcom/pinguo/camera360/gallery/ui/GLRoot;)V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/RootActivity;->setProgressBar(Z)V

    return-void
.end method

.method public onEyePositionChanged(FFF)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->lockRendering()V

    iput p1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mX:F

    iput p2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mY:F

    iput p3, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mZ:F

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->unlockRendering()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V

    return-void
.end method

.method public onLongTap(I)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->getMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->toggle(Lcom/pinguo/camera360/gallery/data/Path;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    goto :goto_8
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mIsActive:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->pause()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->pause()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mEyePosition:Lcom/pinguo/camera360/gallery/EyePosition;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/EyePosition;->pause()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->clearLoadingBit(I)V

    :cond_25
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setAlbumSetSelector(Lcom/pinguo/camera360/gallery/ui/SelectionManager;)V

    return-void
.end method

.method public onResume()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/pinguo/camera360/gallery/ActivityState;->onResume()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActvityState(Lcom/pinguo/camera360/gallery/ActivityState;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setAlbumSetSelector(Lcom/pinguo/camera360/gallery/ui/SelectionManager;)V

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->highLightC360AlbumBtn(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/DataManager;->getActivityMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6a

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V

    :goto_2d
    iput-boolean v5, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mIsActive:Z

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->setContentPane(Lcom/pinguo/camera360/gallery/ui/GLView;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/pinguo/camera360/gallery/util/Utils;->intColorToFloatARGBArray(I)[F

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->setContentPaneBackground([F)V

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->setLoadingBit(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->resume()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->resume()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mEyePosition:Lcom/pinguo/camera360/gallery/EyePosition;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/EyePosition;->resume()V

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mInitialSynced:Z

    if-nez v1, :cond_69

    invoke-direct {p0, v4}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->setLoadingBit(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->requestSync(Lcom/pinguo/camera360/gallery/data/MediaSet$SyncListener;)Lcom/pinguo/camera360/gallery/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSyncTask:Lcom/pinguo/camera360/gallery/util/Future;

    :cond_69
    return-void

    :cond_6a
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V

    goto :goto_2d

    :cond_7e
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V

    goto :goto_2d
.end method

.method public onSelectionChange()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateAlbumSetTopBarText()V

    return-void
.end method

.method public onSelectionModeChange(I)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_4a

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V

    goto :goto_5

    :pswitch_17
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mMediaPath:Lcom/pinguo/camera360/gallery/data/Path;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V

    :goto_2a
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V

    goto :goto_5

    :cond_30
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->setActionBarMode(IZ)V

    goto :goto_2a

    :pswitch_3a
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateAlbumSetTopBarText()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mRootPane:Lcom/pinguo/camera360/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/GLView;->invalidate()V

    goto :goto_5

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_17
        :pswitch_3a
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .registers 7

    iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mIsActive:Z

    if-nez v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetDataLoader:Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/gallery/AlbumSetDataLoader;->getMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->toggle(Lcom/pinguo/camera360/gallery/data/Path;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    goto :goto_4

    :cond_24
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->setPressedIndex(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mAlbumSetSlotRenderer:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer;->setPressedUp()V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .registers 5

    packed-switch p1, :pswitch_data_a

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->startRisingAnimation()V

    goto :goto_3

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onSyncDone(Lcom/pinguo/camera360/gallery/data/MediaSet;I)V
    .registers 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2c

    const-string/jumbo v0, "AlbumSetPage"

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

    :cond_2c
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumSetPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;

    new-instance v1, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;

    invoke-direct {v1, p0, p2}, Lcom/pinguo/camera360/gallery/AlbumSetPage$4;-><init>(Lcom/pinguo/camera360/gallery/AlbumSetPage;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
