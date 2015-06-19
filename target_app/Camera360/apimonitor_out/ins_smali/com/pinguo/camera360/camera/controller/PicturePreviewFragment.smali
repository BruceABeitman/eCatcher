.class public Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "PicturePreviewFragment.java"
.implements Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
.field public static final ARGUMENTS_NAME_FROM_ACTIVITY:Ljava/lang/String; = "arguments_name_from_activity"
.field private static final TAG:Ljava/lang/String;
.field private isFromCameraActivity:Z
.field private mCurPictureData:[B
.field private mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
.field private mCurrEffectUninstalled:Z
.field private mEffectPicBitmap:Landroid/graphics/Bitmap;
.field private mFromActivityTag:Ljava/lang/String;
.field private mHandler:Landroid/os/Handler;
.field private mIsNeedShowModeView:Z
.field private mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
.field private mNeedReuseData:Z
.field private mNeedShowPreview:Z
.field private mOrgPicBitmap:Landroid/graphics/Bitmap;
.field private mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
.field private mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
.field private mPreviewData:[B
.field private mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
.field private mShowPicturePreviewEvent:Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurrEffectUninstalled:Z
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->isFromCameraActivity:Z
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mIsNeedShowModeView:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$1;-><init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
new-instance v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;-><init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$1()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;[B)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)[B
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/photoedit/callback/PreCallback;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
return-object v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
return v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/view/PicturePreviewView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)[B
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-object v0
.end method
.method public changeSubEffect(Ljava/lang/String;)V
.registers 9
const/4 v5, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v6
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
const/4 v1, 0x0
invoke-static {p1, v1}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
iget-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->makePreviewNew([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
:goto_2e
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mFromActivityTag:Ljava/lang/String;
invoke-direct {v1, p1, v2}, Lcom/pinguo/camera360/camera/event/OnSubEffectSelectEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
:cond_40
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
iget-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->makePreview([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
goto :goto_2e
.end method
.method public clearBitmapData()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_7
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
:cond_7
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_d
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
:cond_d
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
return-void
.end method
.method public discard()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
const/4 v3, 0x0
invoke-direct {v2, v5, v3}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
invoke-interface {v1}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->discard()V
iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
:cond_23
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_2e
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
:cond_2e
new-instance v0, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->setFromTag(Ljava/lang/String;)V
iput-boolean v5, v0, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->eventFromCancel:Z
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method protected getCurPictureData()[B
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
return-object v0
.end method
.method protected getCurPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
return-object v0
.end method
.method protected getPicturePreviewModel()Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
return-object v0
.end method
.method protected getPicturePreviewView()Lcom/pinguo/camera360/camera/view/PicturePreviewView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
return-object v0
.end method
.method public handleHardKeyEvent(I)Z
.registers 9
const/4 v2, 0x0
const/4 v3, 0x1
iget-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mIsPausing:Z
if-eqz v4, :cond_7
:goto_6
:cond_6
return v2
:cond_7
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
const/4 v4, 0x4
if-ne p1, v4, :cond_7b
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-eqz v4, :cond_6
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isShown()Z
move-result v4
if-eqz v4, :cond_6
sget-object v4, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Click back key to save picture = "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackSavePicture()Z
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " previewView is shown = "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v6}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isShown()Z
move-result v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isProgressLayerShowing()Z
move-result v4
if-eqz v4, :cond_63
new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
const v5, 0x7f08032b
invoke-direct {v1, v4, v5, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
const/16 v2, 0x5dc
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show(I)V
move v2, v3
goto :goto_6
:cond_63
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackSavePicture()Z
move-result v4
if-eqz v4, :cond_76
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
if-eqz v4, :cond_6
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0, v2, v4}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->save(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
move v2, v3
goto :goto_6
:cond_76
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->discard()V
move v2, v3
goto :goto_6
:cond_7b
const/16 v4, 0x19
if-eq p1, v4, :cond_83
const/16 v4, 0x18
if-ne p1, v4, :cond_6
:cond_83
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-eqz v4, :cond_6
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v4}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isShown()Z
move-result v4
if-eqz v4, :cond_6
move v2, v3
goto/16 :goto_6
.end method
.method public hasSubEffect()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->isShowingSubEffect()Z
move-result v0
return v0
.end method
.method public isCurrEffectUninstalled()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurrEffectUninstalled:Z
return v0
.end method
.method public manualClearBitmapData()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->clearPreviewImage()V
:cond_e
return-void
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 2
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onCreate"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string/jumbo v1, "arguments_name_from_activity"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mFromActivityTag:Ljava/lang/String;
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
sget-object v1, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onCreateView"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const v1, 0x7f03009f
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/camera/view/PicturePreviewView;
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setListener(Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_29
instance-of v1, v0, LvStudio/Android/Camera360/activity/CameraActivity;
if-nez v1, :cond_29
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->enablePictureAdjustment(Z)V
:cond_29
new-instance v1, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;
invoke-direct {v1}, Lcom/pinguo/camera360/camera/model/PicturePreviewModel;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
const-class v2, LvStudio/Android/Camera360/activity/CameraActivity;
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->isFromCameraActivity:Z
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
return-object v1
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/CloseCameraEvent;)V
.registers 4
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "CloseCameraEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-eqz v0, :cond_26
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->clearPreviewImage()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setVisibility(I)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "HidePicturePreview"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_26
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;)V
.registers 5
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->getFromTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_30
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Not my event, ignore! From:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->getFromTag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_2f
:cond_2f
return-void
:cond_30
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-eqz v0, :cond_2f
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->clearPreviewImage()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setVisibility(I)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "HidePicturePreview"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;)V
.registers 16
const/4 v5, 0x0
const/4 v13, 0x1
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->getFromTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_32
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Not my event, ignore from:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->getFromTag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_31
:cond_31
return-void
:cond_32
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->getTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->showProgressLayer()V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;->getEffect()Ljava/lang/String;
move-result-object v10
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "get parent alias:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v8
invoke-virtual {v8, v10}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v7
iput-boolean v13, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
const/4 v12, 0x0
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v0
invoke-virtual {v0, v10}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPreferredEffect(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
if-eqz v11, :cond_7e
const/4 v9, 0x0
:goto_78
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v0
if-lt v9, v0, :cond_e7
:cond_7e
:goto_7e
invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v1, v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v1, v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0, v13}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
if-eqz v0, :cond_fb
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
iget-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->makePreviewNew([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
:goto_b2
iput-boolean v13, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
sget-object v1, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v0, "get sub effect alias list:"
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v7, :cond_109
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v0
if-le v0, v13, :cond_109
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
iget-object v1, v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v0, v7, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setSubPreviewImage(Ljava/util/List;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->showSubPreviewImage()V
goto/16 :goto_31
:cond_e7
invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f7
move v12, v9
goto :goto_7e
:cond_f7
add-int/lit8 v9, v9, 0x1
goto/16 :goto_78
:cond_fb
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
iget-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->makePreview([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
goto :goto_b2
:cond_109
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->hideSubPreviewImage()V
goto/16 :goto_31
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/TakePictureOverTimeEvent;)V
.registers 4
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "TakePictureOverTimeEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-eqz v0, :cond_1e
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->clearPreviewImage()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setVisibility(I)V
:cond_1e
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/shop/event/EffectProductChangeEvent;)V
.registers 15
const/4 v12, 0x1
const/4 v5, 0x0
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v8
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v8, v0}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v11
if-nez v11, :cond_42
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->getVisibility()I
move-result v0
if-eqz v0, :cond_24
:cond_20
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-nez v0, :cond_42
:cond_24
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->showProgressLayer()V
const/4 v9, 0x0
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v10
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_40
invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/pinguo/camera360/effect/model/entity/EffectType;
:cond_40
if-nez v9, :cond_43
:goto_42
:cond_42
return-void
:cond_43
iget-object v0, v9, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v8, v0}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByTypeKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v7
iput-boolean v12, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v1, v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v1, v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/pinguo/camera360/photoedit/effect/EffectFactory;->getEffectAppend(Ljava/lang/String;Ljava/lang/String;)Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAppendix(Lcom/pinguo/camera360/photoedit/effect/EffectAppend;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0, v12}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setMakeGPU(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
iget-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->makePreview([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
iput-boolean v12, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
sget-object v1, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v0, "get sub effect alias list:"
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v7, :cond_af
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v0
if-le v0, v12, :cond_af
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
iget-object v1, v6, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-virtual {v0, v7, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setSubPreviewImage(Ljava/util/List;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->showSubPreviewImage()V
goto :goto_42
:cond_af
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->hideSubPreviewImage()V
goto :goto_42
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPause"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onPause()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onResume"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mIsNeedShowModeView:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mShowPicturePreviewEvent:Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
if-eqz v0, :cond_1b
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mIsNeedShowModeView:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mShowPicturePreviewEvent:Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->showPicturePreviewFragment(Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mShowPicturePreviewEvent:Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
:cond_1b
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->updateViewForSony()V
invoke-super {p0}, Lcom/pinguo/camera360/base/BaseFragment;->onResume()V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onShareBtnClick()V
.registers 5
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
const/4 v2, 0x1
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method protected recycleCurPictureData()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
return-void
.end method
.method public replaceEffect()V
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
invoke-interface {v2}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->replaceEffect()V
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v3}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v0
if-nez v0, :cond_2c
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v2
sget-object v3, Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;->EFFECT:Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypes(Lcom/pinguo/camera360/effect/model/IEffectModel$EffectTypeUsage;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_2c
const/4 v2, 0x0
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;
:cond_2c
if-eqz v0, :cond_31
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->sendEventToShowEffectSelect(Lcom/pinguo/camera360/effect/model/entity/EffectType;)V
:cond_31
return-void
.end method
.method public save(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 10
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;
const/4 v2, 0x1
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "start save preview picture"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
move-object v4, p2
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->save(Landroid/content/Context;Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "clear the picture data"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->isFromCameraActivity:Z
if-eqz v0, :cond_5a
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectChildSaveWithPicturePreview(Ljava/lang/String;)V
:goto_3e
new-instance v6, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;
invoke-direct {v6}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v0}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, v6}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
:cond_5a
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;->effectSavePhotoEdit(Ljava/lang/String;)V
goto :goto_3e
.end method
.method protected sendEventToShowEffectSelect(Lcom/pinguo/camera360/effect/model/entity/EffectType;)V
.registers 8
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
iget-object v3, p1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v5
invoke-direct {v1, v2, v3, v4, v5}, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public setOrientation(IZ)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseFragment;->setOrientation(IZ)V
return-void
.end method
.method public share(I)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-interface {v0, v1, v2, v3, p1}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->share(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/PictureInfo;I)V
return-void
.end method
.method public showPicturePreviewFragment(Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;)V
.registers 16
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mIsPausing:Z
if-eqz v0, :cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mIsNeedShowModeView:Z
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mShowPicturePreviewEvent:Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;
:goto_9
return-void
:cond_a
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->getFromTag()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3a
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Not my event, ignore! From:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->getFromTag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
:cond_3a
sget-object v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->TAG:Ljava/lang/String;
const-string/jumbo v1, "receive the event of ShowPicturePreviewEvent"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->needShowPreview()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->getPictureData()[B
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->getPictureInfo()Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->makeCopy()Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
if-eqz v0, :cond_11d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->showProgressLayerNoBg()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
if-nez v0, :cond_77
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getOrgPath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_97
:cond_77
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getCameraModeIndex()I
move-result v13
const/4 v0, 0x1
if-eq v13, v0, :cond_83
const/4 v0, 0x5
if-ne v13, v0, :cond_f6
:cond_83
const/4 v0, 0x5
if-ne v13, v0, :cond_f4
const/4 v5, 0x1
:goto_87
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
iget-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->makePreview([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
:cond_97
:goto_97
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->renderAsEffect()Z
move-result v0
if-eqz v0, :cond_117
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v8
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
invoke-virtual {v0, v8}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v11
if-nez v11, :cond_10d
const/4 v0, 0x1
:goto_b0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurrEffectUninstalled:Z
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
invoke-virtual {v0, v11}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffects(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
move-result-object v10
if-eqz v10, :cond_111
invoke-interface {v10}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_111
iget-object v0, v11, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
const-string/jumbo v1, "C360_TiltShift_Other"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_111
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffect()Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v7
if-eqz v7, :cond_10f
iget-object v9, v7, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
:goto_d8
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0, v10, v9}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setSubPreviewImage(Ljava/util/List;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->showSubPreviewImage()V
:goto_e2
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->canChangeEffect()Z
move-result v6
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->enableEffectReplace(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/share/ShareManager;->reqNationForBeeTalk(Landroid/content/Context;)V
goto/16 :goto_9
:cond_f4
const/4 v5, 0x0
goto :goto_87
:cond_f6
new-instance v0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;-><init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)V
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Boolean;
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/ShowPicturePreviewEvent;->canChangeEffect()Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_97
:cond_10d
const/4 v0, 0x0
goto :goto_b0
:cond_10f
move-object v9, v8
goto :goto_d8
:cond_111
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->hideSubPreviewImage()V
goto :goto_e2
:cond_117
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->hideSubPreviewImage()V
goto :goto_e2
:cond_11d
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mSaveCallback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->makePreviewAndSave([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
new-instance v12, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;
invoke-direct {v12}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;-><init>()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v12, v0}, Lcom/pinguo/camera360/camera/event/HidePicturePreviewEvent;->setFromTag(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v0
invoke-virtual {v0, v12}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
goto/16 :goto_9
.end method
.method public startAdjustPictureOri()V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/adjustOrientation/AdjustOrientationActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string/jumbo v1, "bundle_key_adjust_type"
const-string/jumbo v2, "adjust_picture"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string/jumbo v1, "bundle_key_adjust_camera_id"
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public updateViewForSony()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->updateViewForSony()V
:cond_9
return-void
.end method