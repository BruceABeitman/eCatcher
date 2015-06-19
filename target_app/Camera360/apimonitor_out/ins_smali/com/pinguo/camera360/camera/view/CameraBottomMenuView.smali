.class public Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;
.super Landroid/widget/RelativeLayout;
.source "CameraBottomMenuView.java"
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.field private static final MOVE_DISTANCE:F = 100.0f
.field private static final SELECT_RATION_STRING_ARR:[Ljava/lang/String;
.field private static final SELECT_RATIO_ARR:[I
.field private static final SELECT_RATIO_RESID_ARR:[I
.field private mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
.field private mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mModeFunctionBtnNewPoint:Landroid/widget/ImageView;
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
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v1, 0x4
new-array v0, v1, [I
fill-array-data v0, :array_30
sput-object v0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_RESID_ARR:[I
new-array v0, v1, [I
aput v3, v0, v3
aput v4, v0, v4
aput v1, v0, v5
sput-object v0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
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
sput-object v0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;
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
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownX:F
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownY:F
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpX:F
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpY:F
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownX:F
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownY:F
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpX:F
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpY:F
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;)Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
return-object v0
.end method
.method private clearTouchValue()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownX:F
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownY:F
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpX:F
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpY:F
return-void
.end method
.method public static getPreviewFrame()I
.registers 7
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v4
const-string/jumbo v5, "key_preview_frame"
const-string/jumbo v6, "None"
invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v4
const-string/jumbo v5, "key_effect_preview_frame"
const-string/jumbo v6, "None"
invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrame(Ljava/lang/String;)I
move-result v2
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrame(Ljava/lang/String;)I
move-result v3
if-eqz v3, :cond_27
:goto_26
return v3
:cond_27
move v3, v2
goto :goto_26
.end method
.method public static getPreviewFrame(Ljava/lang/String;)I
.registers 4
if-nez p0, :cond_4
const/4 v2, 0x0
:goto_3
return v2
:cond_4
const/4 v1, 0x0
const/4 v0, 0x0
:goto_6
sget-object v2, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;
array-length v2, v2
if-lt v0, v2, :cond_10
sget-object v2, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
aget v2, v2, v1
goto :goto_3
:cond_10
sget-object v2, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1b
move v1, v0
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method private static getPreviewFrameIndex()I
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrame()I
move-result v1
const/4 v0, 0x0
:goto_5
sget-object v2, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
array-length v2, v2
if-lt v0, v2, :cond_c
const/4 v0, 0x0
:cond_b
return v0
:cond_c
sget-object v2, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
aget v2, v2, v0
if-eq v2, v1, :cond_b
add-int/lit8 v0, v0, 0x1
goto :goto_5
.end method
.method public changePreviewRation(ZI)I
.registers 8
const/4 v3, 0x0
if-eqz p1, :cond_45
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
sget-object v2, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
array-length v2, v2
if-ge v1, v2, :cond_14
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
if-gez v1, :cond_16
:cond_14
iput v3, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
:cond_16
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v1
const-string/jumbo v2, "key_effect_preview_frame"
const-string/jumbo v3, "None"
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v1
const-string/jumbo v2, "key_preview_frame"
sget-object v3, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;
iget v4, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
aget-object v3, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_33
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
sget-object v2, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_RESID_ARR:[I
iget v3, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
aget v2, v2, v3
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
sget-object v1, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
iget v2, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
aget v1, v1, v2
return v1
:cond_45
if-nez p2, :cond_5b
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v1
const-string/jumbo v2, "key_effect_preview_frame"
const-string/jumbo v3, "None"
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrameIndex()I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
goto :goto_33
:cond_5b
iput v3, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
const/4 v0, 0x0
:goto_5e
sget-object v1, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
array-length v1, v1
if-lt v0, v1, :cond_74
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v1
const-string/jumbo v2, "key_effect_preview_frame"
sget-object v3, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATION_STRING_ARR:[Ljava/lang/String;
iget v4, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
aget-object v3, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_33
:cond_74
sget-object v1, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
aget v1, v1, v0
if-ne v1, p2, :cond_7c
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
:cond_7c
add-int/lit8 v0, v0, 0x1
goto :goto_5e
.end method
.method public closeModePickerBtn()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getCurrentState()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->close()V
:cond_e
return-void
.end method
.method public dismissPreviewRationFun()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
return-void
.end method
.method public getModeFunctionBtn()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
return-object v0
.end method
.method public getModePickerBtn()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
return-object v0
.end method
.method public getPreviewFunBtn()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
return-object v0
.end method
.method public getShutterBtn()Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;
return-object v0
.end method
.method public getThumbNailBtn()Lcom/pinguo/camera360/camera/view/ThumbnailView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
return-object v0
.end method
.method public hideModeFunctionNewPoint()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtnNewPoint:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public loadPreviewRationFun()I
.registers 4
invoke-static {}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFrameIndex()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
sget-object v1, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_RESID_ARR:[I
iget v2, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
aget v1, v1, v2
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
sget-object v0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->SELECT_RATIO_ARR:[I
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->previewRationIndex:I
aget v0, v0, v1
return v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/view/CameraBottomMenuView; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
if-ne p1, v0, :cond_17
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->getId()I
move-result v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;->onGalleryEnterClick()V
:cond_16
:goto_16
const-string v1, " - Lcom/pinguo/camera360/camera/view/CameraBottomMenuView; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_17
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
if-ne p1, v0, :cond_41
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->isClickable()Z
move-result v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getId()I
move-result v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->open()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v1, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$1;-><init>(Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;)V
const-wide/16 v2, 0x186
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_16
:cond_41
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
if-ne p1, v0, :cond_53
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->isClickable()Z
move-result v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;->onModeFunctionClick()V
goto :goto_16
:cond_53
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
if-ne p1, v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->isClickable()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I
move-result v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;->onPreviewFunClick()V
goto :goto_16
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a023b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;
invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;
invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a0239
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/ThumbnailView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a023e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/AnimCircleView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModePickerBtn:Lcom/pinguo/camera360/camera/view/AnimCircleView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a023c
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a023d
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtnNewPoint:Landroid/widget/ImageView;
const v0, 0x7f0a023a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mPreviewFunBtn:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a023f
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeSelectBtnNewPoint:Landroid/view/View;
return-void
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/view/CameraBottomMenuView; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;->onShutterBtnLongClick()V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/camera/view/CameraBottomMenuView; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
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
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownX:F
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownY:F
:goto_17
return v0
:cond_18
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-ne v2, v1, :cond_6b
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpX:F
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpY:F
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpX:F
iget v2, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownX:F
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v1, v1, v4
if-lez v1, :cond_3d
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownX:F
cmpl-float v1, v1, v3
if-nez v1, :cond_50
:cond_3d
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchUpY:F
iget v2, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownY:F
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v1, v1, v4
if-lez v1, :cond_59
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mTouchDownY:F
cmpl-float v1, v1, v3
if-eqz v1, :cond_59
:cond_50
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
invoke-interface {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;->onShutterBtnMoving()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->clearTouchValue()V
goto :goto_17
:cond_59
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mShutterBtn:Landroid/widget/ImageButton;
invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I
move-result v1
invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
invoke-interface {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;->onShutterBtnClick()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->clearTouchValue()V
goto :goto_17
:cond_6b
move v0, v1
goto :goto_17
.end method
.method public setAdapter(Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;)V
.registers 4
const v1, 0x7f0a03e2
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridView;
invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setListener(Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mListener:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView$ICameraBottomMenuView;
return-void
.end method
.method public setOrientation(IZ)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtn:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setOrientation(IZ)V
return-void
.end method
.method public setThumbNail(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setThumb(Landroid/graphics/Bitmap;Z)V
return-void
.end method
.method public setThumbNail(Landroid/graphics/Bitmap;Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mThumbNailBtn:Lcom/pinguo/camera360/camera/view/ThumbnailView;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/camera/view/ThumbnailView;->setThumb(Landroid/graphics/Bitmap;Z)V
return-void
.end method
.method public showModeFunctionNewPoint()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeFunctionBtnNewPoint:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public showOrHideNewCameraFlag()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isShowNewCameraFlag()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeSelectBtnNewPoint:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->mModeSelectBtnNewPoint:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_10
.end method