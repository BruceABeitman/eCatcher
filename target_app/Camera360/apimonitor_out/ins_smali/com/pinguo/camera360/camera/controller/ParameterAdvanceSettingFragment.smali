.class public Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
.super Lcom/pinguo/camera360/base/BaseFragment;
.source "ParameterAdvanceSettingFragment.java"
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
.field public static final FAD_OUT_DURATION:I = 0xc8
.field public static final GUEST_V:I = 0x258
.field private static final MSG_FADE_OUT_TIPS:I = 0xb
.field private mArcSeekbarContainer:Landroid/view/ViewGroup;
.field private mGestureDetector:Landroid/view/GestureDetector;
.field private mHandler:Landroid/os/Handler;
.field private mIsScrolling:Z
.field private mPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
.field private mRoot:Landroid/widget/RelativeLayout;
.field private mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.field private mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.field private mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.field private mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.field private mSupportedCount:I
.field private mTipLayout:Landroid/view/View;
.field private mTipSummer:Landroid/widget/TextView;
.field private mTipValue:Landroid/widget/TextView;
.field private mTlpLayoutMargin:I
.field private sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseFragment;-><init>()V
new-instance v0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$1;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mHandler:Landroid/os/Handler;
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mIsScrolling:Z
iput v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->fadeoutTips()V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;ILcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->updateParameters(ILcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->resetTipLayoutPosition()V
return-void
.end method
.method static synthetic access$3(I)I
.registers 2
invoke-static {p0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->caculateViewCount(I)I
move-result v0
return v0
.end method
.method private static caculateViewCount(I)I
.registers 1
return p0
.end method
.method private fadeoutTips()V
.registers 5
const/4 v3, 0x0
const/4 v2, 0x4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipValue:Landroid/widget/TextView;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->obtainFadeOutAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipValue:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipSummer:Landroid/widget/TextView;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->obtainFadeOutAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipSummer:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
return-void
.end method
.method private initSeekBars()V
.registers 14
const v12, 0x7f0a0165
const/16 v11, 0x8
const/4 v9, 0x0
iput v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
const/4 v7, 0x0
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isWhiteBalanceSupported()Z
move-result v9
if-eqz v9, :cond_165
iget v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
const-string/jumbo v10, "key_camera_whitebalance"
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
new-instance v10, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;
invoke-direct {v10, p0, v8}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setScaleAdapter(Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
new-instance v10, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$3;
invoke-direct {v10, p0, v8}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$3;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setOnScaleChangedListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getCurrValueIndex()I
move-result v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setCurrentScaleItem(I)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setOnScrollingListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iget v10, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
add-int/lit8 v10, v10, -0x1
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setTag(Ljava/lang/Object;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, v12, v8}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setTag(ILjava/lang/Object;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
:goto_5a
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupportISO()Z
move-result v9
if-eqz v9, :cond_16c
iget v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
const-string/jumbo v10, "pref_camera_iso_key"
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v2
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
new-instance v10, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$4;
invoke-direct {v10, p0, v2}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$4;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setScaleAdapter(Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
new-instance v10, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$5;
invoke-direct {v10, p0, v2}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$5;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setOnScaleChangedListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getCurrValueIndex()I
move-result v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setCurrentScaleItem(I)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setOnScrollingListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iget v10, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
add-int/lit8 v10, v10, -0x1
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setTag(Ljava/lang/Object;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, v12, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setTag(ILjava/lang/Object;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
:goto_a5
invoke-direct {p0, v4}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->isExposureSupportedEx(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;)Z
move-result v9
if-eqz v9, :cond_173
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
const-string/jumbo v10, "key_camera_exposure"
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v1
iget v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
new-instance v10, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$6;
invoke-direct {v10, p0, v1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$6;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setScaleAdapter(Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
new-instance v10, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$7;
invoke-direct {v10, p0, v1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$7;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setOnScaleChangedListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getCurrValueIndex()I
move-result v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setCurrentScaleItem(I)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setOnScrollingListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iget v10, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
add-int/lit8 v10, v10, -0x1
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setTag(Ljava/lang/Object;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, v12, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setTag(ILjava/lang/Object;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
:goto_f0
invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSharpnessSupported()Z
move-result v9
if-eqz v9, :cond_17a
iget v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
add-int/lit8 v9, v9, 0x1
iput v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
const-string/jumbo v10, "key_camera_sharpness"
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v6
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v5
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v9
array-length v9, v9
div-int/lit8 v9, v9, 0x8
add-int/lit8 v0, v9, 0x1
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v9
array-length v9, v9
div-int v3, v9, v0
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
new-instance v10, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;
invoke-direct {v10, p0, v3, v0, v5}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;II[Ljava/lang/Object;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setScaleAdapter(Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
new-instance v10, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;
invoke-direct {v10, p0, v0, v5, v6}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;-><init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;I[Ljava/lang/Object;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setOnScaleChangedListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getCurrValueIndex()I
move-result v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setCurrentScaleItem(I)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setOnScrollingListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iget v10, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
add-int/lit8 v10, v10, -0x1
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setTag(Ljava/lang/Object;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, v12, v6}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setTag(ILjava/lang/Object;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
:goto_14f
iget v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
if-eqz v9, :cond_164
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
invoke-virtual {v9, v7}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->setArc(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
iget v10, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSupportedCount:I
invoke-virtual {v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->setArcCount(I)V
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
invoke-virtual {v9}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->requestLayout()V
:cond_164
return-void
:cond_165
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, v11}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setVisibility(I)V
goto/16 :goto_5a
:cond_16c
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, v11}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setVisibility(I)V
goto/16 :goto_a5
:cond_173
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, v11}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setVisibility(I)V
goto/16 :goto_f0
:cond_17a
iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v9, v11}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setVisibility(I)V
goto :goto_14f
.end method
.method private isExposureSupportedEx(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;)Z
.registers 6
const/4 v1, 0x1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
const-string/jumbo v3, "key_camera_exposure"
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
move-result-object v0
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isExposureSupported()Z
move-result v2
if-eqz v2, :cond_1e
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntryValues()[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_1e
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntryValues()[Ljava/lang/String;
move-result-object v2
array-length v2, v2
if-le v2, v1, :cond_1e
:goto_1d
return v1
:cond_1e
const/4 v1, 0x0
goto :goto_1d
.end method
.method public static obtainFadeInAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return-object v0
.end method
.method public static obtainFadeOutAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
return-object v0
.end method
.method private resetTipLayoutPosition()V
.registers 8
const/4 v6, 0x0
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipLayout:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v0, 0x0
const/4 v1, 0x0
:goto_b
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mArcSeekbarContainer:Landroid/view/ViewGroup;
invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I
move-result v4
if-lt v1, v4, :cond_31
:goto_13
if-eqz v0, :cond_30
const/4 v4, 0x2
new-array v2, v4, [I
invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V
const/4 v4, 0x1
aget v4, v2, v4
iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipLayout:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getHeight()I
move-result v5
sub-int/2addr v4, v5
iget v5, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTlpLayoutMargin:I
sub-int/2addr v4, v5
invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipLayout:Landroid/view/View;
invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_30
return-void
:cond_31
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mArcSeekbarContainer:Landroid/view/ViewGroup;
invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_44
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mArcSeekbarContainer:Landroid/view/ViewGroup;
invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
goto :goto_13
:cond_44
add-int/lit8 v1, v1, 0x1
goto :goto_b
.end method
.method private setInfoFadeInTips(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipValue:Landroid/widget/TextView;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->obtainFadeInAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipValue:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipSummer:Landroid/widget/TextView;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->obtainFadeInAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipSummer:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipSummer:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getTitle()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipValue:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry()Ljava/lang/Object;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method private setTipLayoutPosition(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
.registers 7
const/4 v4, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipLayout:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v2, 0x2
new-array v0, v2, [I
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getLocationOnScreen([I)V
const/4 v2, 0x1
aget v2, v0, v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipLayout:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getHeight()I
move-result v3
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTlpLayoutMargin:I
sub-int/2addr v2, v3
invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipLayout:Landroid/view/View;
invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private updateParameters(ILcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 8
const/16 v4, 0xb
new-instance v0, Lcom/pinguo/camera360/camera/event/AdvanceParameterClickEvent;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/AdvanceParameterClickEvent;-><init>()V
iput-object p2, v0, Lcom/pinguo/camera360/camera/event/AdvanceParameterClickEvent;->pref:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
iget-object v1, v0, Lcom/pinguo/camera360/camera/event/AdvanceParameterClickEvent;->pref:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-virtual {v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueByIndex(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipValue:Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry()Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mIsScrolling:Z
if-nez v1, :cond_2e
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V
invoke-direct {p0, p2}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->setInfoFadeInTips(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mHandler:Landroid/os/Handler;
const-wide/16 v2, 0x1f4
invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_2e
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
return-void
.end method
.method public handleKeyBack(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mIsPausing:Z
if-eqz v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->getVisibility()I
move-result v2
if-nez v2, :cond_6
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->hide(Z)Z
move v0, v1
goto :goto_6
.end method
.method public hide(Z)Z
.registers 6
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mIsScrolling:Z
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->isShown()Z
move-result v0
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->hide()Z
move-result v2
if-eqz v2, :cond_5b
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->isExposureSupportedEx(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;)Z
move-result v2
if-eqz v2, :cond_20
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->hide()V
:cond_20
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSharpnessSupported()Z
move-result v2
if-eqz v2, :cond_2b
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->hide()V
:cond_2b
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupportISO()Z
move-result v2
if-eqz v2, :cond_36
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->hide()V
:cond_36
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isWhiteBalanceSupported()Z
move-result v2
if-eqz v2, :cond_41
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->hide()V
:cond_41
if-eqz p1, :cond_5b
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v2
new-instance v3, Lcom/pinguo/camera360/camera/event/ShowSubEffectSelectorEvent;
invoke-direct {v3}, Lcom/pinguo/camera360/camera/event/ShowSubEffectSelectorEvent;-><init>()V
invoke-virtual {v2, v3}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v2
new-instance v3, Lcom/pinguo/camera360/camera/event/UpdateTimerAndAntiShakeViewEvent;
invoke-direct {v3}, Lcom/pinguo/camera360/camera/event/UpdateTimerAndAntiShakeViewEvent;-><init>()V
invoke-virtual {v2, v3}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
:cond_5b
return v0
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;
const v0, 0x7f030046
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
new-instance v0, Landroid/view/GestureDetector;
invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mGestureDetector:Landroid/view/GestureDetector;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a0167
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a016b
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
const v1, 0x7f0201c4
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setThumbDrawable(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a016a
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
const v1, 0x7f0201c5
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setThumbDrawable(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a016c
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
const v1, 0x7f0201c6
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setThumbDrawable(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a0169
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
const v1, 0x7f0201c7
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setThumbDrawable(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->setArc(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a0166
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipValue:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a0165
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipSummer:Landroid/widget/TextView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a0164
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTipLayout:Landroid/view/View;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b004a
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mTlpLayoutMargin:I
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const v1, 0x7f0a0168
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mArcSeekbarContainer:Landroid/view/ViewGroup;
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method public onDown(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->hide(Z)Z
move-result v0
iput-boolean v0, p1, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;->interrupt:Z
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/OnShutterBtnClickEvent;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->hide(Z)Z
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->hide(Z)Z
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->hide(Z)Z
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowParameterAdvanceSetting;)V
.registers 3
const/4 v0, 0x2
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraLayBtnClick(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->initSeekBars()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->show()V
return-void
.end method
.method public onEvent(Lcom/pinguo/camera360/camera/event/ShowSceneSelectEvent;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->hide(Z)Z
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
const/4 v0, 0x1
const/high16 v2, 0x4416
cmpl-float v1, p3, v2
if-lez v1, :cond_f
cmpg-float v1, p4, v2
if-gez v1, :cond_f
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->hide(Z)Z
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onLongPress(Landroid/view/MotionEvent;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onShowPress(Landroid/view/MotionEvent;)V
.registers 2
return-void
.end method
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->hide(Z)Z
const/4 v0, 0x0
return v0
.end method
.method public onStartScrolling(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
.registers 6
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mIsScrolling:Z
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mHandler:Landroid/os/Handler;
const/16 v3, 0xb
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v1
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->isExposureSupportedEx(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;)Z
move-result v2
if-eqz v2, :cond_21
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_21
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeOut()V
:cond_21
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSharpnessSupported()Z
move-result v2
if-eqz v2, :cond_34
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_34
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeOut()V
:cond_34
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupportISO()Z
move-result v2
if-eqz v2, :cond_47
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_47
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeOut()V
:cond_47
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isWhiteBalanceSupported()Z
move-result v2
if-eqz v2, :cond_5a
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_5a
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeOut()V
:cond_5a
const v2, 0x7f0a0165
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->setInfoFadeInTips(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->setTipLayoutPosition(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
invoke-virtual {p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getTag()Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->setCurrentArcIndex(I)V
return-void
.end method
.method public onStopScrolling(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
.registers 5
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mIsScrolling:Z
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->isExposureSupportedEx(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;)Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeIn()V
:cond_1a
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSharpnessSupported()Z
move-result v1
if-eqz v1, :cond_2d
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_2d
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeIn()V
:cond_2d
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupportISO()Z
move-result v1
if-eqz v1, :cond_40
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_40
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeIn()V
:cond_40
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isWhiteBalanceSupported()Z
move-result v1
if-eqz v1, :cond_53
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_53
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeIn()V
:cond_53
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
const/4 v2, -0x1
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->setCurrentArcIndex(I)V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->fadeoutTips()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->isShown()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mGestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_e
return v0
:cond_f
invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_e
.end method
.method public show()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mRoot:Landroid/widget/RelativeLayout;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
:cond_a
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->sector:Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->show()Z
move-result v1
if-eqz v1, :cond_42
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->isExposureSupportedEx(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;)Z
move-result v1
if-eqz v1, :cond_21
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbExposure:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->show()V
:cond_21
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSharpnessSupported()Z
move-result v1
if-eqz v1, :cond_2c
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbSharpness:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->show()V
:cond_2c
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupportISO()Z
move-result v1
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbISO:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->show()V
:cond_37
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isWhiteBalanceSupported()Z
move-result v1
if-eqz v1, :cond_42
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->mSbWhiteBalance:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->show()V
:cond_42
return-void
.end method