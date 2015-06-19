.class public Lcom/pinguo/camera360/camera/view/CameraGuideView;
.super Landroid/widget/RelativeLayout;
.source "CameraGuideView.java"
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;
.field public static final GUIDE_TYPE_CLOUD_HOME:I = 0x2
.field public static final GUIDE_TYPE_EFFECT_SELECT:I = 0x3
.field public static final GUIDE_TYPE_FIRST_IN:I = 0x0
.field public static final GUIDE_TYPE_MODE_PICKER:I = 0x4
.field public static final GUIDE_TYPE_SELF_TIMER:I = 0x1
.field public static final GUIDE_TYPE_UNTOUCH_COVER:I = 0x5
.field private mBottomIndicator:Landroid/widget/TextView;
.field private mGuideType:I
.field private mIvCloudHome:Landroid/widget/ImageView;
.field private mIvEffectSelect:Landroid/widget/ImageView;
.field private mIvFillLightMasker:Landroid/widget/ImageView;
.field private mModePicker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mModePickerLight:Landroid/widget/ImageView;
.field private mOnTouchListener:Landroid/view/View$OnTouchListener;
.field private mRivCloudHome:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mRivEffectSelect:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mRivFillLightMasker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mSecondLevel:Lcom/pinguo/camera360/lib/ui/RotateImageView;
.field private mSecondLevelLight:Landroid/widget/ImageView;
.field private mTopIndicator:Landroid/widget/TextView;
.field private mTouchable:Z
.field private mTvCloudHome:Landroid/widget/TextView;
.field private mTvEffectSelect:Landroid/widget/TextView;
.field private mTvFillLightMasker:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mGuideType:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTouchable:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mGuideType:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTouchable:Z
return-void
.end method
.method private initIndicatorWords()V
.registers 11
const/16 v9, 0x21
const/4 v6, 0x0
const/4 v2, 0x0
const/4 v5, 0x0
const/4 v4, 0x0
const/4 v1, 0x0
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getContext()Landroid/content/Context;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/lib/util/Util;->getLanguage(Landroid/content/Context;)Ljava/lang/String;
move-result-object v7
sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
iget v7, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mGuideType:I
packed-switch v7, :pswitch_data_198
const-string/jumbo v7, ""
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "Invalid guide type:"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v9, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mGuideType:I
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_33
return-void
:pswitch_34
new-instance v6, Landroid/text/SpannableString;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f08028a
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
new-instance v2, Landroid/text/SpannableString;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f08028f
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
const-string/jumbo v7, "zh"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_8d
const/16 v5, 0x15
const/16 v4, 0x19
const/4 v1, 0x5
const/16 v0, 0x9
:cond_64
:goto_64
new-instance v7, Landroid/text/style/ForegroundColorSpan;
const-string/jumbo v8, "#FFD02C"
invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v8
invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v6, v7, v5, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
new-instance v7, Landroid/text/style/ForegroundColorSpan;
const-string/jumbo v8, "#FFD02C"
invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v8
invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v2, v7, v1, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTopIndicator:Landroid/widget/TextView;
invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mBottomIndicator:Landroid/widget/TextView;
invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_33
:cond_8d
const-string/jumbo v7, "en"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_9e
const/16 v5, 0x1d
const/16 v4, 0x2a
const/4 v1, 0x0
const/16 v0, 0x17
goto :goto_64
:cond_9e
const-string/jumbo v7, "th"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_64
const/16 v5, 0x13
const/16 v4, 0x1f
goto :goto_64
:pswitch_ac
new-instance v2, Landroid/text/SpannableString;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f080289
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
const-string/jumbo v7, "zh"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_de
const/4 v1, 0x5
const/16 v0, 0x9
:goto_c8
new-instance v7, Landroid/text/style/ForegroundColorSpan;
const-string/jumbo v8, "#FFD02C"
invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v8
invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v2, v7, v1, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvFillLightMasker:Landroid/widget/TextView;
invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_33
:cond_de
const-string/jumbo v7, "en"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_ec
const/16 v1, 0x11
const/16 v0, 0x26
goto :goto_c8
:cond_ec
const-string/jumbo v7, "th"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
goto :goto_c8
:pswitch_f3
new-instance v6, Landroid/text/SpannableString;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f08028b
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
const-string/jumbo v7, "zh"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_125
const/4 v5, 0x2
const/16 v4, 0x8
:goto_10f
new-instance v7, Landroid/text/style/ForegroundColorSpan;
const-string/jumbo v8, "#FFD02C"
invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v8
invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v6, v7, v5, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvCloudHome:Landroid/widget/TextView;
invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_33
:cond_125
const-string/jumbo v7, "en"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_133
const/16 v5, 0xa
const/16 v4, 0x17
goto :goto_10f
:cond_133
const-string/jumbo v7, "th"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
goto :goto_10f
:pswitch_13a
new-instance v6, Landroid/text/SpannableString;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f08027d
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
const-string/jumbo v7, "zh"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_16b
const/4 v5, 0x5
const/4 v4, 0x7
:goto_155
new-instance v7, Landroid/text/style/ForegroundColorSpan;
const-string/jumbo v8, "#FFD02C"
invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v8
invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v6, v7, v5, v4, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvEffectSelect:Landroid/widget/TextView;
invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_33
:cond_16b
const-string/jumbo v7, "en"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_179
const/16 v5, 0x9
const/16 v4, 0x10
goto :goto_155
:cond_179
const-string/jumbo v7, "th"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
goto :goto_155
:pswitch_180
new-instance v6, Landroid/text/SpannableString;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f08027c
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
iget-object v7, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mBottomIndicator:Landroid/widget/TextView;
invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_33
nop
:pswitch_data_198
.packed-switch 0x0
:pswitch_34
:pswitch_ac
:pswitch_f3
:pswitch_13a
:pswitch_180
.end packed-switch
.end method
.method private initView()V
.registers 4
const v0, 0x7f0a0250
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTopIndicator:Landroid/widget/TextView;
const v0, 0x7f0a0251
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mBottomIndicator:Landroid/widget/TextView;
const v0, 0x7f0a0253
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePicker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePicker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
const/16 v1, 0x10e
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
const v0, 0x7f0a0255
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevel:Lcom/pinguo/camera360/lib/ui/RotateImageView;
const v0, 0x7f0a0252
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePickerLight:Landroid/widget/ImageView;
const v0, 0x7f0a0254
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevelLight:Landroid/widget/ImageView;
const v0, 0x7f0a0256
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvFillLightMasker:Landroid/widget/TextView;
const v0, 0x7f0a0257
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvFillLightMasker:Landroid/widget/ImageView;
const v0, 0x7f0a0258
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivFillLightMasker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
const v0, 0x7f0a0259
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvCloudHome:Landroid/widget/TextView;
const v0, 0x7f0a025a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvCloudHome:Landroid/widget/ImageView;
const v0, 0x7f0a025b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivCloudHome:Lcom/pinguo/camera360/lib/ui/RotateImageView;
const v0, 0x7f0a025c
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvEffectSelect:Landroid/widget/TextView;
const v0, 0x7f0a025d
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvEffectSelect:Landroid/widget/ImageView;
const v0, 0x7f0a025e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivEffectSelect:Lcom/pinguo/camera360/lib/ui/RotateImageView;
return-void
.end method
.method private setTouchAble(Z)V
.registers 3
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTouchable:Z
if-eqz p1, :cond_b
const v0, 0x7f070041
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->setBackgroundResource(I)V
:goto_a
return-void
:cond_b
const v0, 0x7f070043
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->setBackgroundResource(I)V
goto :goto_a
.end method
.method protected onFinishInflate()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->initView()V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 103
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v91
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v69
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v91
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v68
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevel:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I
move-result v59
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevel:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredHeight()I
move-result v58
move/from16 v0, v59
int-to-float v0, v0
move/from16 v91, v0
const/high16 v92, 0x4040
mul-float v91, v91, v92
const/high16 v92, 0x4080
div-float v91, v91, v92
invoke-static/range {v91 .. v91}, Ljava/lang/Math;->round(F)I
move-result v91
sub-int v91, v69, v91
move/from16 v0, v69
int-to-float v0, v0
move/from16 v92, v0
const/high16 v93, 0x4120
div-float v92, v92, v93
invoke-static/range {v92 .. v92}, Ljava/lang/Math;->round(F)I
move-result v92
sub-int v57, v91, v92
const/16 v61, 0x0
move/from16 v60, v69
move/from16 v56, v58
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevel:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v57
move/from16 v2, v61
move/from16 v3, v60
move/from16 v4, v56
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevelLight:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v80
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevelLight:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v76
move/from16 v0, v58
neg-int v0, v0
move/from16 v91, v0
div-int/lit8 v91, v91, 0x4
sub-int v91, v57, v91
sub-int v92, v59, v80
invoke-static/range {v92 .. v92}, Ljava/lang/Math;->abs(I)I
move-result v92
sub-int v77, v91, v92
add-int v91, v61, v58
div-int/lit8 v92, v58, 0x4
sub-int v91, v91, v92
sub-int v92, v58, v76
invoke-static/range {v92 .. v92}, Ljava/lang/Math;->abs(I)I
move-result v92
sub-int v79, v91, v92
add-int v78, v77, v80
add-int v75, v79, v76
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevelLight:Landroid/widget/ImageView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v77
move/from16 v2, v79
move/from16 v3, v78
move/from16 v4, v75
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePicker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I
move-result v55
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePicker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredHeight()I
move-result v42
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v91
const v92, 0x7f0b0063
invoke-virtual/range {v91 .. v92}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v51
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v91
const v92, 0x7f0b001b
invoke-virtual/range {v91 .. v92}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v7
sub-int v91, v7, v42
div-int/lit8 v52, v91, 0x2
sub-int v91, v69, v55
sub-int v44, v91, v51
sub-int v91, v68, v42
sub-int v54, v91, v52
add-int v53, v44, v55
add-int v41, v54, v42
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePicker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v44
move/from16 v2, v54
move/from16 v3, v53
move/from16 v4, v41
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePickerLight:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v50
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePickerLight:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v46
move/from16 v47, v44
sub-int v49, v54, v46
add-int v48, v47, v50
add-int v45, v49, v46
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePickerLight:Landroid/widget/ImageView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v47
move/from16 v2, v49
move/from16 v3, v48
move/from16 v4, v45
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTopIndicator:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v82
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTopIndicator:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v81
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mBottomIndicator:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v13
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mBottomIndicator:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v9
sub-int v91, v77, v82
div-int/lit8 v92, v80, 0x4
add-int v72, v91, v92
mul-int/lit8 v91, v76, 0x3
div-int/lit8 v91, v91, 0x4
add-int v74, v79, v91
add-int v73, v72, v82
add-int v71, v74, v81
div-int/lit8 v91, v50, 0x4
sub-int v91, v48, v91
sub-int v10, v91, v13
sub-int v12, v49, v9
add-int v11, v10, v13
add-int v8, v12, v9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTopIndicator:Landroid/widget/TextView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v72
move/from16 v2, v74
move/from16 v3, v73
move/from16 v4, v71
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mBottomIndicator:Landroid/widget/TextView;
move-object/from16 v91, v0
move-object/from16 v0, v91
invoke-virtual {v0, v10, v12, v11, v8}, Landroid/widget/TextView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivFillLightMasker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I
move-result v32
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivFillLightMasker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredHeight()I
move-result v21
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvFillLightMasker:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v28
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvFillLightMasker:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v24
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvFillLightMasker:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v19
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvFillLightMasker:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v15
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v91
const v92, 0x7f0b001b
invoke-virtual/range {v91 .. v92}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v6
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v91
const v92, 0x7f0b0063
invoke-virtual/range {v91 .. v92}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v5
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v91
const v92, 0x7f0b0062
invoke-virtual/range {v91 .. v92}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v43
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v91
const v92, 0x7f0b0064
invoke-virtual/range {v91 .. v92}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v22
sub-int v91, v69, v43
sub-int v91, v91, v32
sub-int v91, v91, v22
sub-int v29, v91, v5
sub-int v91, v68, v21
sub-int v92, v6, v32
div-int/lit8 v92, v92, 0x2
sub-int v31, v91, v92
add-int v30, v29, v32
add-int v20, v31, v21
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivFillLightMasker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v29
move/from16 v2, v31
move/from16 v3, v30
move/from16 v4, v20
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->layout(IIII)V
div-int/lit8 v91, v19, 0x8
add-int v16, v29, v91
sub-int v91, v31, v15
div-int/lit8 v92, v19, 0x4
add-int v18, v91, v92
add-int v17, v16, v19
add-int v14, v18, v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvFillLightMasker:Landroid/widget/ImageView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v16
move/from16 v2, v18
move/from16 v3, v17
invoke-virtual {v0, v1, v2, v3, v14}, Landroid/widget/ImageView;->layout(IIII)V
div-int/lit8 v91, v19, 0x4
add-int v26, v17, v91
move/from16 v23, v18
sub-int v25, v26, v28
sub-int v27, v23, v24
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvFillLightMasker:Landroid/widget/TextView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v25
move/from16 v2, v27
move/from16 v3, v26
move/from16 v4, v23
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivCloudHome:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredWidth()I
move-result v67
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivCloudHome:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getMeasuredHeight()I
move-result v63
div-int/lit8 v64, v67, 0x4
const/16 v66, 0x0
add-int v65, v64, v67
add-int v62, v66, v63
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivCloudHome:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v64
move/from16 v2, v66
move/from16 v3, v65
move/from16 v4, v62
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvCloudHome:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v40
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvCloudHome:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v36
div-int/lit8 v91, v67, 0x5
add-int v37, v64, v91
div-int/lit8 v91, v63, 0x4
sub-int v39, v62, v91
add-int v38, v37, v40
add-int v35, v39, v36
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvCloudHome:Landroid/widget/ImageView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v37
move/from16 v2, v39
move/from16 v3, v38
move/from16 v4, v35
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvCloudHome:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v90
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvCloudHome:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v86
div-int/lit8 v91, v40, 0x4
sub-int v87, v38, v91
div-int/lit8 v91, v36, 0xa
sub-int v89, v35, v91
add-int v88, v87, v90
add-int v85, v89, v86
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvCloudHome:Landroid/widget/TextView;
move-object/from16 v91, v0
move-object/from16 v0, v91
move/from16 v1, v87
move/from16 v2, v89
move/from16 v3, v88
move/from16 v4, v85
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getResources()Landroid/content/res/Resources;
move-result-object v91
const v92, 0x7f0b001f
invoke-virtual/range {v91 .. v92}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v70
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivEffectSelect:Lcom/pinguo/camera360/lib/ui/RotateImageView;
move-object/from16 v91, v0
sub-int v92, v69, v70
div-int/lit8 v92, v92, 0x2
div-int/lit8 v93, v6, 0x2
sub-int v92, v92, v93
sub-int v93, v68, v6
div-int/lit8 v94, v6, 0x8
sub-int v93, v93, v94
sub-int v94, v69, v70
div-int/lit8 v94, v94, 0x2
div-int/lit8 v95, v6, 0x2
sub-int v94, v94, v95
add-int v94, v94, v6
sub-int v95, v68, v6
div-int/lit8 v96, v6, 0x8
sub-int v95, v95, v96
add-int v95, v95, v6
invoke-virtual/range {v91 .. v95}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvEffectSelect:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v34
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvEffectSelect:Landroid/widget/ImageView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v33
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvEffectSelect:Landroid/widget/ImageView;
move-object/from16 v91, v0
sub-int v92, v69, v70
div-int/lit8 v92, v92, 0x2
div-int/lit8 v93, v6, 0x2
sub-int v92, v92, v93
sub-int v93, v68, v6
div-int/lit8 v94, v6, 0x8
sub-int v93, v93, v94
sub-int v93, v93, v33
sub-int v94, v69, v70
div-int/lit8 v94, v94, 0x2
div-int/lit8 v95, v6, 0x2
sub-int v94, v94, v95
add-int v94, v94, v34
sub-int v95, v68, v6
div-int/lit8 v96, v6, 0x8
sub-int v95, v95, v96
invoke-virtual/range {v91 .. v95}, Landroid/widget/ImageView;->layout(IIII)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvEffectSelect:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v84
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvEffectSelect:Landroid/widget/TextView;
move-object/from16 v91, v0
invoke-virtual/range {v91 .. v91}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v83
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvEffectSelect:Landroid/widget/TextView;
move-object/from16 v91, v0
sub-int v92, v69, v70
div-int/lit8 v92, v92, 0x2
div-int/lit8 v93, v6, 0x2
sub-int v92, v92, v93
add-int/lit8 v92, v92, -0x14
add-int v92, v92, v34
sub-int v93, v68, v6
div-int/lit8 v94, v6, 0x8
sub-int v93, v93, v94
sub-int v93, v93, v33
div-int/lit8 v94, v83, 0x2
sub-int v93, v93, v94
sub-int v94, v69, v70
div-int/lit8 v94, v94, 0x2
div-int/lit8 v95, v6, 0x2
sub-int v94, v94, v95
add-int/lit8 v94, v94, -0x14
add-int v94, v94, v34
add-int v94, v94, v84
sub-int v95, v68, v6
div-int/lit8 v96, v6, 0x8
sub-int v95, v95, v96
sub-int v95, v95, v33
div-int/lit8 v96, v83, 0x2
add-int v95, v95, v96
invoke-virtual/range {v91 .. v95}, Landroid/widget/TextView;->layout(IIII)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 4
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->getVisibility()I
move-result v1
if-nez v1, :cond_20
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTouchable:Z
if-nez v1, :cond_c
:goto_b
:cond_b
return v0
:cond_c
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-nez v1, :cond_b
const/4 v1, 0x4
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
if-eqz v1, :cond_b
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
goto :goto_b
:cond_20
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_b
.end method
.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mOnTouchListener:Landroid/view/View$OnTouchListener;
return-void
.end method
.method public setOrientation(IZ)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePicker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
add-int/lit16 v1, p1, 0xb4
invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevel:Lcom/pinguo/camera360/lib/ui/RotateImageView;
add-int/lit16 v1, p1, 0x10e
invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivFillLightMasker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
add-int/lit16 v1, p1, 0x10e
invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivCloudHome:Lcom/pinguo/camera360/lib/ui/RotateImageView;
add-int/lit16 v1, p1, 0x10e
invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setOrientation(IZ)V
return-void
.end method
.method public showFirstInGuide()V
.registers 4
const/4 v2, 0x0
const/16 v1, 0x8
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTopIndicator:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mBottomIndicator:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePicker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevel:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mModePickerLight:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mSecondLevelLight:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvFillLightMasker:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvFillLightMasker:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivFillLightMasker:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvCloudHome:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvCloudHome:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivCloudHome:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mTvEffectSelect:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mIvEffectSelect:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mRivEffectSelect:Lcom/pinguo/camera360/lib/ui/RotateImageView;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V
iput v2, p0, Lcom/pinguo/camera360/camera/view/CameraGuideView;->mGuideType:I
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->initIndicatorWords()V
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/view/CameraGuideView;->setTouchAble(Z)V
return-void
.end method