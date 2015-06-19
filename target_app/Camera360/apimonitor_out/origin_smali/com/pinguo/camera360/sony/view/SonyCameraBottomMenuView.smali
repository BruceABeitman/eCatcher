.class public Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;
.super Landroid/widget/RelativeLayout;
.source "SonyCameraBottomMenuView.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;
    }
.end annotation


# static fields
.field private static final MOVE_DISTANCE:F = 100.0f

.field private static final SELECT_RATION_STRING_ARR:[Ljava/lang/String;

.field private static final SELECT_RATIO_ARR:[I

.field private static final SELECT_RATIO_RESID_ARR:[I


# instance fields
.field private mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

.field private mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;

.field private mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

.field private mModeSelectBtnNewPoint:Landroid/view/View;

.field private mPreviewFunBtn:Landroid/widget/ImageView;

.field private mShutterBtn:Landroid/widget/ImageButton;

.field private mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchUpX:F

.field private mTouchUpY:F

.field private previewRationIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATIO_RESID_ARR:[I

    new-array v0, v1, [I

    aput v3, v0, v3

    aput v4, v0, v4

    aput v1, v0, v5

    sput-object v0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATIO_ARR:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "None"

    aput-object v2, v0, v1

    const-string/jumbo v1, "16x9"

    aput-object v1, v0, v3

    const-string/jumbo v1, "4x3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "1x1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;

    return-void

    nop

    :array_30
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x7ft
        0x32t 0x2t 0x2t 0x7ft
        0x34t 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownX:F

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownY:F

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpX:F

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownX:F

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownY:F

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpX:F

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;)Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    return-object v0
.end method

.method private clearTouchValue()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownX:F

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownY:F

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpX:F

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpY:F

    return-void
.end method

.method public static getPreviewFrame()I
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v3

    const-string/jumbo v4, "key_preview_frame"

    const-string/jumbo v5, "None"

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_10
    sget-object v3, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_1a

    sget-object v3, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATIO_ARR:[I

    aget v3, v3, v1

    return v3

    :cond_1a
    sget-object v3, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v1, v0

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static getPreviewFrameIndex()I
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v3

    const-string/jumbo v4, "key_preview_frame"

    const-string/jumbo v5, "None"

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_10
    sget-object v3, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_16

    return v1

    :cond_16
    sget-object v3, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v1, v0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method


# virtual methods
.method public changePreviewRation()I
    .registers 5

    iget v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    iget v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    sget-object v2, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATIO_ARR:[I

    array-length v2, v2

    if-ge v1, v2, :cond_11

    iget v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    if-gez v1, :cond_14

    :cond_11
    const/4 v1, 0x0

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    :cond_14
    iget-object v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    sget-object v2, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATIO_RESID_ARR:[I

    iget v3, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;

    iget v2, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    aget-object v0, v1, v2

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v1

    const-string/jumbo v2, "key_preview_frame"

    invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATIO_ARR:[I

    iget v2, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    aget v1, v1, v2

    return v1
.end method

.method public closeModePickerBtn()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->close()V

    :cond_e
    return-void
.end method

.method public dismissPreviewRationFun()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    return-void
.end method

.method public getModeFunctionBtn()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    return-object v0
.end method

.method public getModePickerBtn()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    return-object v0
.end method

.method public getPreviewFunBtn()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getShutterBtn()Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getThumbNailBtn()Lcom/pinguo/camera360/camera/view/ThumbnailView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

    return-object v0
.end method

.method public loadPreviewRationFun()I
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->getPreviewFrameIndex()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    sget-object v1, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATIO_RESID_ARR:[I

    iget v2, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->SELECT_RATIO_ARR:[I

    iget v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->previewRationIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;->onGalleryEnterClick()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    if-ne p1, v0, :cond_41

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->open()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$1;-><init>(Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;)V

    const-wide/16 v2, 0x186

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16

    :cond_41
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    if-ne p1, v0, :cond_53

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;->onModeFunctionClick()V

    goto :goto_16

    :cond_53
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6e

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;->onPreviewFunClick()V

    goto :goto_16

    :cond_6e
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;->onShutterBtnClick()V

    goto :goto_16
.end method

.method protected onFinishInflate()V
    .registers 3

    const/4 v1, 0x4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0579

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0577

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/view/ThumbnailView;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a057b

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/view/AnimCircleView;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a057a

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    const v0, 0x7f0a0578

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a057c

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeSelectBtnNewPoint:Landroid/view/View;

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;->onShutterBtnLongClick()V

    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v1, 0x1

    const/high16 v4, 0x42c8

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownY:F

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_6b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpY:F

    iget v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpX:F

    iget v2, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3d

    iget v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_50

    :cond_3d
    iget v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchUpY:F

    iget v2, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_59

    iget v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mTouchDownY:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_59

    :cond_50
    iget-object v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    invoke-interface {v1}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;->onShutterBtnMoving()V

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->clearTouchValue()V

    goto :goto_17

    :cond_59
    iget-object v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    invoke-interface {v1}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;->onShutterBtnClick()V

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->clearTouchValue()V

    goto :goto_17

    :cond_6b
    move v0, v1

    goto :goto_17
.end method

.method public setAdapter(Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;)V
    .registers 4

    const v1, 0x7f0a03e2

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setListener(Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mListener:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView$ICameraBottomMenuView;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setOrientation(IZ)V

    return-void
.end method

.method public setThumbNail(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setThumb(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setThumbNail(Landroid/graphics/Bitmap;Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setThumb(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public showOrHideNewCameraFlag()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isShowNewCameraFlag()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeSelectBtnNewPoint:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;->mModeSelectBtnNewPoint:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method
