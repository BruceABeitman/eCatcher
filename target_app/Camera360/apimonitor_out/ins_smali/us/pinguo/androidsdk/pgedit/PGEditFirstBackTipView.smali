.class public Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;
.super Landroid/widget/RelativeLayout;
.source "PGEditFirstBackTipView.java"
.field private static final LEFT_TO_TIP_WIDTH:I = 0x29
.field private static final PHOTO_HEIGHT:I = 0x37
.field private static final PHOTO_WIDTH:I = 0xa1
.field private mContext:Landroid/content/Context;
.field private mHandler:Landroid/os/Handler;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mHandler:Landroid/os/Handler;
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mContext:Landroid/content/Context;
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mHandler:Landroid/os/Handler;
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mContext:Landroid/content/Context;
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mHandler:Landroid/os/Handler;
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mContext:Landroid/content/Context;
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->init()V
return-void
.end method
.method private init()V
.registers 5
const/4 v1, -0x1
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mHandler:Landroid/os/Handler;
const/4 v1, 0x0
const-wide/32 v2, 0xea60
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method
.method public measureTipMargin(IIIILandroid/util/DisplayMetrics;)V
.registers 12
sub-int v3, p1, p2
div-int/lit8 v3, v3, 0x2
div-int/lit8 v4, p3, 0x2
add-int/2addr v3, v4
const/high16 v4, 0x4224
iget v5, p5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
sub-int v1, v3, v4
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
const/high16 v3, 0x4321
iget v4, p5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v3, v4
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
const/high16 v4, 0x425c
iget v5, p5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mContext:Landroid/content/Context;
invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v3
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->mContext:Landroid/content/Context;
const-string/jumbo v5, "pg_sdk_edit_org_photo"
invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getLayout(Landroid/content/Context;Ljava/lang/String;)I
move-result v4
const/4 v5, 0x0
invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditFirstBackTipView;->addView(Landroid/view/View;)V
return-void
.end method