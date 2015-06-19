.class public final Lcom/pinguo/lib/UIContants;
.super Ljava/lang/Object;
.source "UIContants.java"
.field private static displayHeight:I
.field private static displayWidth:I
.field private static displaydensity:F
.field private static displaydensityDpi:I
.field private static touchSlop:I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static changeScreen(II)V
.registers 2
sput p0, Lcom/pinguo/lib/UIContants;->displayWidth:I
sput p1, Lcom/pinguo/lib/UIContants;->displayHeight:I
return-void
.end method
.method public static getAbsoluteWidth()I
.registers 3
sget v1, Lcom/pinguo/lib/UIContants;->displayWidth:I
sget v2, Lcom/pinguo/lib/UIContants;->displayHeight:I
if-ge v1, v2, :cond_1c
sget v0, Lcom/pinguo/lib/UIContants;->displayWidth:I
:goto_8
const/16 v1, 0xf0
if-le v0, v1, :cond_10
const/16 v1, 0xfa0
if-lt v0, v1, :cond_1b
:cond_10
const-string/jumbo v1, ""
const-string/jumbo v2, "Error get absolute width, set to:480"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x1e0
:cond_1b
return v0
:cond_1c
sget v0, Lcom/pinguo/lib/UIContants;->displayHeight:I
goto :goto_8
.end method
.method public static getClothesMaxScale()F
.registers 2
sget v0, Lcom/pinguo/lib/UIContants;->displayWidth:I
const/16 v1, 0x64
if-ge v0, v1, :cond_9
const/high16 v0, 0x4020
:goto_8
return v0
:cond_9
sget v0, Lcom/pinguo/lib/UIContants;->displayWidth:I
int-to-float v0, v0
const/high16 v1, 0x4416
div-float/2addr v0, v1
const/high16 v1, 0x4040
mul-float/2addr v0, v1
goto :goto_8
.end method
.method public static getClothesMinScale()F
.registers 3
const/high16 v0, 0x3f00
sget v1, Lcom/pinguo/lib/UIContants;->displayWidth:I
const/16 v2, 0x64
if-ge v1, v2, :cond_9
:goto_8
return v0
:cond_9
sget v1, Lcom/pinguo/lib/UIContants;->displayWidth:I
int-to-float v1, v1
const/high16 v2, 0x4416
div-float/2addr v1, v2
mul-float/2addr v0, v1
goto :goto_8
.end method
.method public static getDisplay(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
.registers 3
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
return-object v0
.end method
.method public static getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.registers 3
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
sget v1, Lcom/pinguo/lib/UIContants;->displayWidth:I
sget v2, Lcom/pinguo/lib/UIContants;->displayHeight:I
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
return-object v0
.end method
.method public static getDisplaydensity()F
.registers 1
sget v0, Lcom/pinguo/lib/UIContants;->displaydensity:F
return v0
.end method
.method public static getGridViewCloudWidth(Landroid/content/Context;)I
.registers 8
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0b001b
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0b0019
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0b001e
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
sget v5, Lcom/pinguo/lib/UIContants;->displayWidth:I
mul-int/lit8 v6, v2, 0x4
sub-int/2addr v5, v6
div-int/lit8 v1, v5, 0x3
sget v5, Lcom/pinguo/lib/UIContants;->displayHeight:I
sub-int/2addr v5, v3
sub-int/2addr v5, v0
mul-int/lit8 v6, v2, 0x5
sub-int/2addr v5, v6
div-int/lit8 v4, v5, 0x4
if-ge v1, v4, :cond_34
:goto_33
return v1
:cond_34
move v1, v4
goto :goto_33
.end method
.method public static getGridViewSpacing(Landroid/content/Context;)I
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b001e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
return v0
.end method
.method public static getPreviewLength()I
.registers 7
const/16 v4, 0x500
const/16 v2, 0x190
const/16 v3, 0x320
sget-boolean v5, Lcom/pinguo/camera360/adapter/GAdapter;->IS_PREVIEW_MOSAICS:Z
if-eqz v5, :cond_d
const/16 v1, 0x200
:goto_c
:cond_c
return v1
:cond_d
sget v0, Lcom/pinguo/lib/UIContants;->displayHeight:I
sget v1, Lcom/pinguo/lib/UIContants;->displayWidth:I
sget v5, Lcom/pinguo/lib/UIContants;->displayWidth:I
sget v6, Lcom/pinguo/lib/UIContants;->displayHeight:I
if-le v5, v6, :cond_1b
sget v0, Lcom/pinguo/lib/UIContants;->displayWidth:I
sget v1, Lcom/pinguo/lib/UIContants;->displayHeight:I
:cond_1b
if-ge v0, v2, :cond_1f
move v1, v2
goto :goto_c
:cond_1f
if-le v0, v3, :cond_29
if-ge v1, v3, :cond_25
move v1, v3
goto :goto_c
:cond_25
if-le v1, v4, :cond_c
move v1, v4
goto :goto_c
:cond_29
move v1, v0
goto :goto_c
.end method
.method public static getSceneTemplateIconSize(Landroid/content/Context;)I
.registers 8
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0b001b
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0b0019
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0b001e
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
sget v5, Lcom/pinguo/lib/UIContants;->displayWidth:I
mul-int/lit8 v6, v2, 0x5
sub-int/2addr v5, v6
div-int/lit8 v4, v5, 0x3
sget v5, Lcom/pinguo/lib/UIContants;->displayHeight:I
sub-int/2addr v5, v3
sub-int/2addr v5, v0
mul-int/lit8 v6, v2, 0x5
sub-int/2addr v5, v6
div-int/lit8 v1, v5, 0x3
if-ge v1, v4, :cond_34
:goto_33
return v1
:cond_34
move v1, v4
goto :goto_33
.end method
.method public static getTouchSlop()I
.registers 1
sget v0, Lcom/pinguo/lib/UIContants;->touchSlop:I
return v0
.end method
.method public static loadUIContants(Landroid/app/Activity;)V
.registers 6
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
sput v1, Lcom/pinguo/lib/UIContants;->displayWidth:I
iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
sput v1, Lcom/pinguo/lib/UIContants;->displayHeight:I
iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I
sput v1, Lcom/pinguo/lib/UIContants;->displaydensityDpi:I
iget v1, v0, Landroid/util/DisplayMetrics;->density:F
sput v1, Lcom/pinguo/lib/UIContants;->displaydensity:F
invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v1
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v1
sput v1, Lcom/pinguo/lib/UIContants;->touchSlop:I
const-string/jumbo v1, "Contants"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Display width:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v3, Lcom/pinguo/lib/UIContants;->displayWidth:I
int-to-float v3, v3
sget v4, Lcom/pinguo/lib/UIContants;->displaydensity:F
div-float/2addr v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "dp"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method