.class public Lcom/facebook/katana/ViewPhotoActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "ViewPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;,
        Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;,
        Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;,
        Lcom/facebook/katana/ViewPhotoActivity$PhotoQuery;,
        Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;,
        Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DELETE_PHOTO_MENU_ID:I = 0x2

.field private static final DELETE_PHOTO_QUESTION_DIALOG_ID:I = 0x2

.field private static final EDIT_PHOTO_MENU_ID:I = 0x1

.field public static final EXTRA_FROM_ALBUM:Ljava/lang/String; = "extra_from_album"

.field private static final INFO_ALBUM_ID:I = 0x4

.field private static final INFO_PHOTO_MENU_ID:I = 0x3

.field private static final MAX_CACHED_PHOTOS:I = 0x5

.field private static final PHOTO_INFO_DIALOG_ID:I = 0x3

.field private static final PROGRESS_DELETE_PHOTO_DIALOG_ID:I = 0x4

.field private static final PROGRESS_EDIT_DIALOG_ID:I = 0x1

.field private static final SET_AS_RESULT_CODE:I = 0x1

.field private static final SHARE_RESULT_CODE:I = 0x2

.field private static final STATE_ALBUM_METADATA_TASK:Ljava/lang/String; = "album_metadata"

.field private static final STATE_ALBUM_PHOTOS_METADATA_TASK:Ljava/lang/String; = "album_photos_metadata"

.field private static final STATE_CURRENT_ALBUM_ID:Ljava/lang/String; = "state_current_album_id"

.field private static final STATE_CURRENT_OWNER_ID:Ljava/lang/String; = "state_current_owner_id"

.field private static final STATE_CURRENT_PHOTO_ID:Ljava/lang/String; = "state_current_photo_id"

.field private static final STATE_CURRENT_PHOTO_METADATA_TASK:Ljava/lang/String; = "current_photo_metadata"

.field private static final STATE_FULL_DATA_TASK:Ljava/lang/String; = "full_data"


# instance fields
.field private mActionIconPanelView:Landroid/view/View;

.field private mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

.field private mAlbumId:Ljava/lang/String;

.field private mAlbumMetadataTask:Lcom/facebook/katana/util/TaskContext;

.field private mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;

.field private mAppSession:Lcom/facebook/katana/binding/AppSession;

.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

.field private mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;

.field private mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

.field private mDeletePhotoReqId:Ljava/lang/String;

.field private final mDismissOnScreenControlRunner:Ljava/lang/Runnable;

.field private final mDownloadedPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEditBarView:Landroid/view/View;

.field private mFromAlbum:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mHideNextImageViewAnimation:Landroid/view/animation/Animation;

.field private final mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

.field private mImageView:Lcom/facebook/katana/ImageViewTouchBase;

.field private mNextImageView:Landroid/view/View;

.field private mOwnerId:J

.field private mPaused:Z

.field private final mPendingDownloadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoContentUri:Landroid/net/Uri;

.field private mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;

.field private mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;

.field private mPhotoId:Ljava/lang/String;

.field private mPhotosCursor:Landroid/database/Cursor;

.field private mPrevImageView:Landroid/view/View;

.field private mPullDownAnimation:Landroid/view/animation/Animation;

.field private mPullUpAnimation:Landroid/view/animation/Animation;

.field private mQueryHandler:Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;

.field private mScaleGestureDetector:Lcom/facebook/katana/util/ScaleGestureDetector;

.field private final mShowNextImageViewAnimation:Landroid/view/animation/Animation;

.field private final mShowPrevImageViewAnimation:Landroid/view/animation/Animation;

.field private mUserTaskProgress:Landroid/app/ProgressDialog;

.field private mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mShowNextImageViewAnimation:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mShowPrevImageViewAnimation:Landroid/view/animation/Animation;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPendingDownloadMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDownloadedPhotos:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPaused:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/katana/ViewPhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/ViewPhotoActivity$1;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    return-void
.end method

.method private static D(Ljava/lang/String;)V
    .registers 2

    const-string v0, "ViewPhotoActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$11(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->exitEditMode()V

    return-void
.end method

.method static synthetic access$12(Lcom/facebook/katana/ViewPhotoActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDeletePhotoReqId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/facebook/katana/ViewPhotoActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/ViewPhotoActivity;->setPhotoId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/util/TaskContext;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;

    return-object v0
.end method

.method static synthetic access$17(Lcom/facebook/katana/ViewPhotoActivity;Landroid/database/Cursor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/ViewPhotoActivity;->refreshCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$18(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPendingDownloadMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$19(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDownloadedPhotos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$20(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/util/TaskContext;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    return-object v0
.end method

.method static synthetic access$21(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/util/TaskContext;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;

    return-object v0
.end method

.method static synthetic access$23(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->loadAlbum()V

    return-void
.end method

.method static synthetic access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    return-object v0
.end method

.method static synthetic access$25(Lcom/facebook/katana/ViewPhotoActivity;Landroid/database/Cursor;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic access$26(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->refreshUI()V

    return-void
.end method

.method static synthetic access$27(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->enterEditMode()V

    return-void
.end method

.method static synthetic access$28(Lcom/facebook/katana/ViewPhotoActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$29(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$30(Lcom/facebook/katana/ViewPhotoActivity;Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoContentUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$31(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->editPhoto()V

    return-void
.end method

.method static synthetic access$32(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/binding/AppSession;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    return-object v0
.end method

.method static synthetic access$33(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->scheduleDismissOnScreenControls()V

    return-void
.end method

.method static synthetic access$34(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->showOnScreenControls()V

    return-void
.end method

.method static synthetic access$35(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$9(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->hideOnScreenControls()V

    return-void
.end method

.method private dispatchTouchEventToImageView(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mScaleGestureDetector:Lcom/facebook/katana/util/ScaleGestureDetector;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mScaleGestureDetector:Lcom/facebook/katana/util/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Lcom/facebook/katana/util/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mScaleGestureDetector:Lcom/facebook/katana/util/ScaleGestureDetector;

    invoke-virtual {v2}, Lcom/facebook/katana/util/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    :cond_11
    if-nez v0, :cond_19

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_19
    return v1
.end method

.method private editPhoto()V
    .registers 5

    const v1, 0x7f0b00c9

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->showDialog(I)V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/facebook/katana/binding/AppSession;->photoEditPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_28
    return-void
.end method

.method public static editPhotoIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11

    const-string v5, "android.intent.action.EDIT"

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/ViewPhotoActivity;->photoIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private enableActions(Z)V
    .registers 10

    const v7, 0x7f0b00c6

    const v6, 0x7f0b00c5

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->getOwner()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_47

    invoke-virtual {p0, v6}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_43

    move v1, v4

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_45

    move v1, v4

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_42
    return-void

    :cond_43
    move v1, v5

    goto :goto_2e

    :cond_45
    move v1, v5

    goto :goto_3f

    :cond_47
    invoke-virtual {p0, v6}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v6}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42
.end method

.method private enterEditMode()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPullUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->hideOnScreenControls()V

    :cond_18
    return-void
.end method

.method private exitEditMode()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPullDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method private hideOnScreenControls()V
    .registers 8

    const-wide/16 v5, 0x1f4

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mActionIconPanelView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mActionIconPanelView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mActionIconPanelView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_37

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_37
    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4e

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4e
    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/katana/ZoomButtonsController;->setVisible(Z)V

    return-void
.end method

.method private loadAlbum()V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumMetadataTask:Lcom/facebook/katana/util/TaskContext;

    iget-boolean v0, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    if-nez v0, :cond_46

    const-string v0, "sending request for album"

    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumMetadataTask:Lcom/facebook/katana/util/TaskContext;

    iput-boolean v4, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isAlbumsGetPending(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->photoGetAlbums(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;

    iget-boolean v0, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    if-nez v0, :cond_46

    const-string v0, "sending request for all photos in album"

    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;

    iput-boolean v4, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->isPhotosGetPending(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->photoGetPhotos(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;J)Ljava/lang/String;

    goto :goto_46
.end method

.method private moveNextOrPrevious(I)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    if-lez p1, :cond_29

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    :goto_1c
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->setPhotoId(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/facebook/katana/ViewPhotoActivity;->showImage(Z)V

    goto :goto_5

    :cond_29
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_1c
.end method

.method private static photoIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/ViewPhotoActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "facebook:/photos?album="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, -0x1

    cmp-long v3, v3, p1

    if-eqz v3, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&user="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private refreshCursor(Landroid/database/Cursor;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->refreshUI()V

    return-void
.end method

.method private refreshUI()V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    if-nez v0, :cond_11

    const-string v0, "firstShowPhoto"

    const-string v1, "Null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->finish()V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1a
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v6, 0x1

    :cond_29
    :goto_29
    if-eqz v6, :cond_38

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->showImage(Z)V

    goto :goto_10

    :cond_2f
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_29

    :cond_38
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    iget-boolean v0, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    if-nez v0, :cond_67

    invoke-direct {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->showProgress(Z)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    iput-boolean v1, v0, Lcom/facebook/katana/util/TaskContext;->sentRequest:Z

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-wide v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/katana/binding/AppSession;->isPhotosGetPending(Ljava/util/Collection;J)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->photoGetPhotos(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;J)Ljava/lang/String;

    goto :goto_10

    :cond_67
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    iget-boolean v0, v0, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f0800d3

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->finish()V

    goto :goto_10

    :cond_83
    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->finish()V

    goto :goto_10
.end method

.method private scheduleDismissOnScreenControls()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setPhotoId(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->clear()V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->clear()V

    return-void
.end method

.method private setupOnScreenControls(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/facebook/katana/ViewPhotoActivity$4;

    invoke-direct {v0, p0}, Lcom/facebook/katana/ViewPhotoActivity$4;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/ViewPhotoActivity;->setupZoomButtonController(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b00c2

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    const v1, 0x7f0b00c1

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b00c5

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b00c7

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupZoomButtonController(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;-><init>(Lcom/facebook/katana/ViewPhotoActivity;Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    :try_start_d
    new-instance v0, Lcom/facebook/katana/util/ScaleGestureDetector;

    new-instance v1, Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;-><init>(Lcom/facebook/katana/ViewPhotoActivity;Lcom/facebook/katana/ViewPhotoActivity$MyScaleGestureListener;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/util/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mScaleGestureDetector:Lcom/facebook/katana/util/ScaleGestureDetector;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1a} :catch_39

    :goto_1a
    new-instance v0, Lcom/facebook/katana/ZoomButtonsController;

    invoke-direct {v0, p1}, Lcom/facebook/katana/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->setAutoDismissed(Z)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/ZoomButtonsController;->setZoomSpeed(J)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    new-instance v1, Lcom/facebook/katana/ViewPhotoActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/katana/ViewPhotoActivity$6;-><init>(Lcom/facebook/katana/ViewPhotoActivity;Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->setOnZoomListener(Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;)V

    return-void

    :catch_39
    move-exception v0

    goto :goto_1a
.end method

.method private showOnScreenControls()V
    .registers 4

    iget-boolean v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPaused:Z

    if-eqz v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mActionIconPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/katana/ViewPhotoActivity$5;

    invoke-direct {v2, p0}, Lcom/facebook/katana/ViewPhotoActivity$5;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_18
    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->updateNextPrevControls()V

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->updateZoomButtonsEnabled()V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ZoomButtonsController;->setVisible(Z)V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mActionIconPanelView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mActionIconPanelView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mActionIconPanelView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private showProgress(Z)V
    .registers 4

    const v0, 0x7f0b00c0

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->enableActions(Z)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method

.method private updateNextPrevControls()V
    .registers 13

    const/16 v11, 0x8

    const-wide/16 v9, 0x1f4

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    if-nez v5, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-lez v5, :cond_5d

    move v4, v8

    :goto_14
    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    sub-int/2addr v6, v8

    if-ge v5, v6, :cond_5f

    move v3, v8

    :goto_24
    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_61

    move v2, v8

    :goto_2d
    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_63

    move v1, v8

    :goto_36
    if-eqz v4, :cond_65

    if-nez v2, :cond_65

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mShowPrevImageViewAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_49
    :goto_49
    if-eqz v3, :cond_79

    if-nez v1, :cond_79

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mShowNextImageViewAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_5d
    move v4, v7

    goto :goto_14

    :cond_5f
    move v3, v7

    goto :goto_24

    :cond_61
    move v2, v7

    goto :goto_2d

    :cond_63
    move v1, v7

    goto :goto_36

    :cond_65
    if-nez v4, :cond_49

    if-eqz v2, :cond_49

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49

    :cond_79
    if-nez v3, :cond_a

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method private updateZoomButtonsEnabled()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/katana/ImageViewTouchBase;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    iget v3, v0, Lcom/facebook/katana/ImageViewTouchBase;->mMaxZoom:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_21

    move v3, v5

    :goto_11
    invoke-virtual {v2, v3}, Lcom/facebook/katana/ZoomButtonsController;->setZoomInEnabled(Z)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    const/high16 v3, 0x3f80

    cmpl-float v3, v1, v3

    if-lez v3, :cond_23

    move v3, v5

    :goto_1d
    invoke-virtual {v2, v3}, Lcom/facebook/katana/ZoomButtonsController;->setZoomOutEnabled(Z)V

    return-void

    :cond_21
    move v3, v4

    goto :goto_11

    :cond_23
    move v3, v4

    goto :goto_1d
.end method

.method private uriForPhotoQuery()Landroid/net/Uri;
    .registers 4

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_AID_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_PID_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static viewPhotoIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 11

    const-string v5, "android.intent.action.VIEW"

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/ViewPhotoActivity;->photoIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPaused:Z

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-direct {p0, p1}, Lcom/facebook/katana/ViewPhotoActivity;->dispatchTouchEventToImageView(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    invoke-virtual {v1}, Lcom/facebook/katana/ZoomButtonsController;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/facebook/katana/ZoomButtonsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->scheduleDismissOnScreenControls()V

    :cond_44
    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-direct {p0, p1}, Lcom/facebook/katana/ViewPhotoActivity;->dispatchTouchEventToImageView(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2f
.end method

.method public facebookOnBackPressed()Z
    .registers 3

    const/high16 v1, 0x3f80

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->exitEditMode()V

    :goto_d
    const/4 v0, 0x1

    return v0

    :cond_f
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    invoke-virtual {v0}, Lcom/facebook/katana/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ImageViewTouchBase;->zoomTo(F)V

    goto :goto_d

    :cond_1f
    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->finish()V

    goto :goto_d
.end method

.method public bridge synthetic finish()V
    .registers 1

    invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/FacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_18

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoContentUri:Landroid/net/Uri;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iput-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoContentUri:Landroid/net/Uri;

    goto :goto_7

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v4, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_66

    :cond_8
    :goto_8
    return-void

    :sswitch_9
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v3, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHandler:Landroid/os/Handler;

    const-string v5, "android.intent.action.ATTACH_DATA"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;-><init>(Lcom/facebook/katana/ViewPhotoActivity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->execute()V

    goto :goto_8

    :sswitch_1e
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v3, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mHandler:Landroid/os/Handler;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;-><init>(Lcom/facebook/katana/ViewPhotoActivity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->execute()V

    goto :goto_8

    :sswitch_33
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/PhotoFeedbackActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_PID_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :sswitch_49
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/facebook/katana/ViewPhotoActivity;->moveNextOrPrevious(I)V

    goto :goto_8

    :sswitch_4e
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/facebook/katana/ViewPhotoActivity;->moveNextOrPrevious(I)V

    goto :goto_8

    :sswitch_53
    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->editPhoto()V

    goto :goto_8

    :sswitch_57
    const v3, 0x7f0b00c9

    invoke-virtual {p0, v3}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    nop

    :sswitch_data_66
    .sparse-switch
        0x7f0b0067 -> :sswitch_57
        0x7f0b00c1 -> :sswitch_4e
        0x7f0b00c2 -> :sswitch_49
        0x7f0b00c5 -> :sswitch_9
        0x7f0b00c6 -> :sswitch_1e
        0x7f0b00c7 -> :sswitch_33
        0x7f0b00ca -> :sswitch_53
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const-wide/16 v6, -0x1

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    const v4, 0x7f03004f

    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_ed

    const-string v4, "state_current_photo_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    const-string v4, "state_current_album_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    const-string v4, "state_current_owner_id"

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    const-string v4, "current_photo_metadata"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/util/TaskContext;

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    const-string v4, "full_data"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/util/TaskContext;

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;

    const-string v4, "album_metadata"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/util/TaskContext;

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumMetadataTask:Lcom/facebook/katana/util/TaskContext;

    const-string v4, "album_photos_metadata"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/util/TaskContext;

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;

    :goto_5a
    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->loadAlbum()V

    const v4, 0x7f0b00c4

    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mActionIconPanelView:Landroid/view/View;

    const v4, 0x7f0b00bf

    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/ImageViewTouchBase;

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    const v4, 0x7f0b00c8

    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mEditBarView:Landroid/view/View;

    const v4, 0x7f040001

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPullUpAnimation:Landroid/view/animation/Animation;

    const/high16 v4, 0x7f04

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPullDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200bd

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200bc

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;

    const v4, 0x7f0b00be

    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->setupOnScreenControls(Landroid/view/View;)V

    const v4, 0x7f0b00c9

    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v4, Lcom/facebook/katana/ViewPhotoActivity$2;

    invoke-direct {v4, p0}, Lcom/facebook/katana/ViewPhotoActivity$2;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v4, 0x7f0b00ca

    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b0067

    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;

    invoke-direct {v4, p0, p0}, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;-><init>(Lcom/facebook/katana/ViewPhotoActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mQueryHandler:Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;

    new-instance v4, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;-><init>(Lcom/facebook/katana/ViewPhotoActivity;Lcom/facebook/katana/ViewPhotoActivity$ViewPhotoAppSessionListener;)V

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    const-string v4, "extra_from_album"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mFromAlbum:Z

    return-void

    :cond_ed
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    const-string v4, "album"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_129

    iput-wide v6, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    :goto_10b
    new-instance v4, Lcom/facebook/katana/util/TaskContext;

    invoke-direct {v4}, Lcom/facebook/katana/util/TaskContext;-><init>()V

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    new-instance v4, Lcom/facebook/katana/util/TaskContext;

    invoke-direct {v4}, Lcom/facebook/katana/util/TaskContext;-><init>()V

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;

    new-instance v4, Lcom/facebook/katana/util/TaskContext;

    invoke-direct {v4}, Lcom/facebook/katana/util/TaskContext;-><init>()V

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;

    new-instance v4, Lcom/facebook/katana/util/TaskContext;

    invoke-direct {v4}, Lcom/facebook/katana/util/TaskContext;-><init>()V

    iput-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumMetadataTask:Lcom/facebook/katana/util/TaskContext;

    goto/16 :goto_5a

    :cond_129
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    goto :goto_10b
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 14

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_72

    move-object v0, v7

    :goto_7
    return-object v0

    :pswitch_8
    new-instance v5, Lcom/facebook/katana/ViewPhotoActivity$3;

    invoke-direct {v5, p0}, Lcom/facebook/katana/ViewPhotoActivity$3;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0801a2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->createAlert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    :pswitch_33
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v0, v10

    goto :goto_7

    :pswitch_4d
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-direct {v10, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v10, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v0, v10

    goto :goto_7

    :pswitch_67
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookPhoto;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPhoto;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/facebook/katana/PhotoInfoDialog;->create(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookPhoto;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_33
        :pswitch_8
        :pswitch_67
        :pswitch_4d
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x3

    const v1, 0x7f080195

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020090

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mFromAlbum:Z

    if-nez v0, :cond_24

    const/4 v0, 0x4

    const v1, 0x7f08001d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020079

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mZoomButtonsController:Lcom/facebook/katana/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ZoomButtonsController;->setVisible(Z)V

    :cond_a
    invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const/4 v4, 0x2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_42

    :goto_8
    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    :pswitch_d
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0b00c9

    invoke-virtual {p0, v3}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->enterEditMode()V

    goto :goto_8

    :pswitch_23
    invoke-virtual {p0, v4}, Lcom/facebook/katana/ViewPhotoActivity;->showDialog(I)V

    goto :goto_8

    :pswitch_27
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/facebook/katana/ViewPhotoActivity;->showDialog(I)V

    goto :goto_8

    :pswitch_2c
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    invoke-static {v3, v4, v5}, Lcom/facebook/katana/PhotosActivity;->uriForAlbum(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/PhotosActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_d
        :pswitch_23
        :pswitch_27
        :pswitch_2c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPaused:Z

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumMetadataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->reset()V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->reset()V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->reset()V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {v0}, Lcom/facebook/katana/util/TaskContext;->clear()V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;

    :cond_31
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPendingDownloadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    packed-switch p1, :pswitch_data_e

    :goto_3
    return-void

    :pswitch_4
    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/facebook/katana/service/api/FacebookPhoto;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPhoto;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/katana/PhotoInfoDialog;->update(Landroid/app/Dialog;Lcom/facebook/katana/service/api/FacebookPhoto;)V

    goto :goto_3

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->getOwner()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_31

    const v0, 0x7f080191

    invoke-interface {p1, v4, v5, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_31
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_44

    const v0, 0x7f080190

    invoke-interface {p1, v4, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_44
    :goto_44
    iget-boolean v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPaused:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    if-nez v0, :cond_55

    :cond_4c
    move v0, v4

    :goto_4d
    return v0

    :cond_4e
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_44

    :cond_55
    move v0, v5

    goto :goto_4d
.end method

.method protected onResume()V
    .registers 10

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onResume()V

    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPaused:Z

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDeletePhotoReqId:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDeletePhotoReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->isRequestPending(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->removeDialog(I)V

    iput-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mDeletePhotoReqId:Ljava/lang/String;

    :cond_30
    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->loadAlbum()V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mQueryHandler:Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->uriForPhotoQuery()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/ViewPhotoActivity$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/ViewPhotoActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_47
    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->refreshUI()V

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->enterEditMode()V

    goto :goto_11
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, "state_current_photo_id"

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string v0, "state_current_album_id"

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    const-string v0, "state_current_owner_id"

    iget-wide v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mOwnerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_28
    const-string v0, "current_photo_metadata"

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoMetadataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "full_data"

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "album_metadata"

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumMetadataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "album_photos_metadata"

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumPhotosMetadataTask:Lcom/facebook/katana/util/TaskContext;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public bridge synthetic onSearchRequested()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .registers 4

    invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onStop()V

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    invoke-virtual {v1}, Lcom/facebook/katana/ImageViewTouchBase;->clear()V

    invoke-virtual {p0}, Lcom/facebook/katana/ViewPhotoActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_AID_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/provider/PhotosProvider;->clearPhotoFiles(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_19
    return-void
.end method

.method public showImage(Z)V
    .registers 11

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    if-nez v3, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->loadAlbum()V

    :cond_17
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a0

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mCurrentPhotoFullDataTask:Lcom/facebook/katana/util/TaskContext;

    iget-boolean v3, v3, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    new-instance v4, Lcom/facebook/katana/RotateBitmap;

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v6}, Lcom/facebook/katana/ImageViewTouchBase;->setImageBitmapResetBaseNoScale(Lcom/facebook/katana/RotateBitmap;Z)V

    :cond_32
    :goto_32
    const v3, 0x7f0b00c3

    invoke-virtual {p0, v3}, Lcom/facebook/katana/ViewPhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->updateZoomButtonsEnabled()V

    if-eqz p1, :cond_4d

    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->showOnScreenControls()V

    :cond_4d
    invoke-direct {p0}, Lcom/facebook/katana/ViewPhotoActivity;->scheduleDismissOnScreenControls()V

    goto :goto_7

    :cond_51
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_93

    array-length v3, v2

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    new-instance v4, Lcom/facebook/katana/RotateBitmap;

    invoke-direct {v4, v0, v5}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v4, v6}, Lcom/facebook/katana/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/facebook/katana/RotateBitmap;Z)V

    :goto_69
    invoke-direct {p0, v6}, Lcom/facebook/katana/ViewPhotoActivity;->showProgress(Z)V

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPendingDownloadMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "downloading full photo data"

    invoke-static {v3}, Lcom/facebook/katana/ViewPhotoActivity;->D(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/facebook/katana/binding/AppSession;->downloadFullPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPendingDownloadMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_93
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    new-instance v4, Lcom/facebook/katana/RotateBitmap;

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v6}, Lcom/facebook/katana/ImageViewTouchBase;->setImageBitmapResetBaseNoScale(Lcom/facebook/katana/RotateBitmap;Z)V

    goto :goto_69

    :cond_a0
    invoke-direct {p0, v5}, Lcom/facebook/katana/ViewPhotoActivity;->showProgress(Z)V

    invoke-static {v1, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;

    new-instance v4, Lcom/facebook/katana/RotateBitmap;

    invoke-direct {v4, v0, v5}, Lcom/facebook/katana/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v4, v6}, Lcom/facebook/katana/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/facebook/katana/RotateBitmap;Z)V

    invoke-direct {p0, v6}, Lcom/facebook/katana/ViewPhotoActivity;->enableActions(Z)V

    goto/16 :goto_32
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarClickHandler(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarSearchClickHandler(Landroid/view/View;)V

    return-void
.end method
