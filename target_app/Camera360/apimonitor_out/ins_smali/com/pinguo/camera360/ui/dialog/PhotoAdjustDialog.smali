.class public Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
.super Landroid/app/Dialog;
.source "PhotoAdjustDialog.java"
.implements Landroid/view/View$OnClickListener;
.field private mCloseBtn:Landroid/widget/Button;
.field private mCurRotation:I
.field private mCurState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
.field private mDirectionState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
.field private mFinishBtn:Landroid/widget/Button;
.field private mIsMirror:Z
.field private mLayoutAdjust:Landroid/widget/LinearLayout;
.field private mLeftBtn:Landroid/widget/Button;
.field private mLeftDivider:Landroid/view/View;
.field private mLeftImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mLeftText:Landroid/widget/TextView;
.field private mMidBtn:Landroid/widget/Button;
.field private mMirrorBitmap:Landroid/graphics/Bitmap;
.field private mMirrorState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
.field private mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
.field private mOriginalBitmap:Landroid/graphics/Bitmap;
.field private mResources:Landroid/content/res/Resources;
.field private mRightBtn:Landroid/widget/Button;
.field private mRightImageView:Landroid/widget/ImageView;
.field private mRightText:Landroid/widget/TextView;
.field private mStartBtn:Landroid/widget/Button;
.field private mStepIndicationTv:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const v0, 0x7f090042
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;-><init>(Landroid/content/Context;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mResources:Landroid/content/res/Resources;
iput v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurRotation:I
iput-boolean v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mIsMirror:Z
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->setCancelable(Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->initView()V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->initState()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurRotation:I
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurRotation:I
return-void
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mStepIndicationTv:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/content/res/Resources;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mResources:Landroid/content/res/Resources;
return-object v0
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMidBtn:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
return-object v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
return-void
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mIsMirror:Z
return v0
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mIsMirror:Z
return-void
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mDirectionState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftBtn:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftDivider:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightBtn:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mFinishBtn:Landroid/widget/Button;
return-object v0
.end method
.method private initState()V
.registers 3
const/4 v1, 0x0
new-instance v0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;-><init>(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$MirrorAdjustState;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
new-instance v0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;-><init>(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mDirectionState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
return-void
.end method
.method private initView()V
.registers 5
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mResources:Landroid/content/res/Resources;
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->getWindow()Landroid/view/Window;
move-result-object v1
const v2, 0x7f0300e7
invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V
const v2, 0x7f0a00e6
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateLayout;
invoke-virtual {v0, v3, v3}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->setOrientation(IZ)V
const v2, 0x7f0a052c
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCloseBtn:Landroid/widget/Button;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCloseBtn:Landroid/widget/Button;
invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a0536
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mStartBtn:Landroid/widget/Button;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mStartBtn:Landroid/widget/Button;
invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a0538
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftBtn:Landroid/widget/Button;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftBtn:Landroid/widget/Button;
invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a053a
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMidBtn:Landroid/widget/Button;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMidBtn:Landroid/widget/Button;
invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a053c
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightBtn:Landroid/widget/Button;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightBtn:Landroid/widget/Button;
invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a0539
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftDivider:Landroid/view/View;
const v2, 0x7f0a0530
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/lib/ui/RotateImageView;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;
const v3, 0x7f020191
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V
const v2, 0x7f0a0532
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
const v3, 0x7f02017e
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
const v2, 0x7f0a052f
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftText:Landroid/widget/TextView;
const v2, 0x7f0a0531
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightText:Landroid/widget/TextView;
const v2, 0x7f0a053d
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mFinishBtn:Landroid/widget/Button;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mFinishBtn:Landroid/widget/Button;
invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a0537
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/LinearLayout;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLayoutAdjust:Landroid/widget/LinearLayout;
const v2, 0x7f0a0533
invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iput-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mStepIndicationTv:Landroid/widget/TextView;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mStepIndicationTv:Landroid/widget/TextView;
const v3, 0x7f0802be
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_46
:goto_7
const-string v1, " - Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_8
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
invoke-interface {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;->onAdjustCancel()V
:cond_11
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->dismiss()V
goto :goto_7
:sswitch_15
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
invoke-interface {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;->onAdjustStart()V
:cond_1e
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->dismiss()V
goto :goto_7
:sswitch_22
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
iget v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurRotation:I
iget-boolean v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mIsMirror:Z
invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;->onAdjustFinish(IZ)V
:cond_2f
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->dismiss()V
goto :goto_7
:sswitch_33
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;->adjust()V
goto :goto_7
:sswitch_39
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;->changeStep()V
goto :goto_7
:sswitch_3f
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
invoke-interface {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;->changeStep()V
goto :goto_7
nop
:sswitch_data_46
.sparse-switch
0x7f0a052c -> :sswitch_8
0x7f0a0536 -> :sswitch_15
0x7f0a0538 -> :sswitch_39
0x7f0a053a -> :sswitch_33
0x7f0a053c -> :sswitch_3f
0x7f0a053d -> :sswitch_22
.end sparse-switch
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0}, Landroid/app/Dialog;->onStop()V
iput-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mResources:Landroid/content/res/Resources;
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
:cond_1b
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iput-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
:cond_26
const-string v1, " - Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setOnAdjustListener(Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
return-void
.end method
.method public startDirectionAdjust([BZ)V
.registers 14
const/16 v10, 0x5a
const/16 v9, 0x8
const/4 v1, 0x0
new-instance v7, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v0, 0x4
iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
array-length v0, p1
invoke-static {p1, v1, v0, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
if-eqz p2, :cond_5a
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
const/high16 v0, -0x4080
const/high16 v2, 0x3f80
invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
const/4 v6, 0x1
move v2, v1
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
invoke-static {v0, v10}, Lcom/pinguo/lib/image/BitmapUtils;->getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
:goto_40
if-nez p2, :cond_63
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightBtn:Landroid/widget/Button;
invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mFinishBtn:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
:goto_4c
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
if-nez v0, :cond_6e
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
if-eqz v0, :cond_59
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOnAdjustListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;
invoke-interface {v0}, Lcom/pinguo/camera360/adjustOrientation/AdjustPictureListener;->onAdjustFailed()V
:cond_59
:goto_59
return-void
:cond_5a
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
invoke-static {v0, v10}, Lcom/pinguo/lib/image/BitmapUtils;->getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
goto :goto_40
:cond_63
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mFinishBtn:Landroid/widget/Button;
invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightBtn:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_4c
:cond_6e
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftImageView:Lcom/pinguo/camera360/lib/ui/RotateImageView;
const v2, 0x7f02017f
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v8
const/16 v0, 0x46
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v0
iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-static {v10}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v0
iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
const v2, 0x7f020231
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftText:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightText:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mResources:Landroid/content/res/Resources;
if-nez v0, :cond_b6
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mResources:Landroid/content/res/Resources;
:cond_b6
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mStepIndicationTv:Landroid/widget/TextView;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mResources:Landroid/content/res/Resources;
const v3, 0x7f080244
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mStartBtn:Landroid/widget/Button;
invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLayoutAdjust:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mDirectionState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->show()V
goto :goto_59
.end method