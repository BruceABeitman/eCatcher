.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
.registers 13
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I
move-result v3
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I
move-result v2
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I
move-result v5
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I
move-result v4
const/4 v1, 0x1
div-int v6, v3, v5
div-int v0, v2, v4
sget-object v7, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I
invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I
move-result v8
aget v7, v7, v8
packed-switch v7, :pswitch_data_52
:goto_20
:cond_20
const/4 v7, 0x1
if-ge v1, v7, :cond_24
const/4 v1, 0x1
:cond_24
return v1
:pswitch_25
if-eqz p3, :cond_36
:goto_27
div-int/lit8 v7, v3, 0x2
if-ge v7, v5, :cond_2f
div-int/lit8 v7, v2, 0x2
if-lt v7, v4, :cond_20
:cond_2f
div-int/lit8 v3, v3, 0x2
div-int/lit8 v2, v2, 0x2
mul-int/lit8 v1, v1, 0x2
goto :goto_27
:cond_36
invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I
move-result v1
goto :goto_20
:pswitch_3b
if-eqz p3, :cond_4c
:goto_3d
div-int/lit8 v7, v3, 0x2
if-lt v7, v5, :cond_20
div-int/lit8 v7, v2, 0x2
if-lt v7, v4, :cond_20
div-int/lit8 v3, v3, 0x2
div-int/lit8 v2, v2, 0x2
mul-int/lit8 v1, v1, 0x2
goto :goto_3d
:cond_4c
invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I
move-result v1
goto :goto_20
nop
:pswitch_data_52
.packed-switch 0x1
:pswitch_25
:pswitch_3b
.end packed-switch
.end method
.method public static computeImageScale(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
.registers 15
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I
move-result v5
invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I
move-result v4
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I
move-result v7
invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I
move-result v6
int-to-float v9, v5
int-to-float v10, v7
div-float v8, v9, v10
int-to-float v9, v4
int-to-float v10, v6
div-float v2, v9, v10
sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
if-ne p2, v9, :cond_20
cmpl-float v9, v8, v2
if-gez v9, :cond_28
:cond_20
sget-object v9, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
if-ne p2, v9, :cond_3f
cmpg-float v9, v8, v2
if-gez v9, :cond_3f
:cond_28
move v1, v7
int-to-float v9, v4
div-float/2addr v9, v8
float-to-int v0, v9
:goto_2c
const/high16 v3, 0x3f80
if-nez p3, :cond_34
if-ge v1, v5, :cond_34
if-lt v0, v4, :cond_3a
:cond_34
if-eqz p3, :cond_3e
if-eq v1, v5, :cond_3e
if-eq v0, v4, :cond_3e
:cond_3a
int-to-float v9, v1
int-to-float v10, v5
div-float v3, v9, v10
:cond_3e
return v3
:cond_3f
int-to-float v9, v5
div-float/2addr v9, v2
float-to-int v1, v9
move v0, v6
goto :goto_2c
.end method
.method public static defineTargetSizeForView(Landroid/widget/ImageView;II)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
.registers 9
const/4 v1, 0x0
const/4 v5, -0x2
invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
if-eqz v2, :cond_51
iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ne v4, v5, :cond_51
move v3, v1
:goto_19
if-gtz v3, :cond_1f
if-eqz v2, :cond_1f
iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
:cond_1f
if-gtz v3, :cond_28
const-string/jumbo v4, "mMaxWidth"
invoke-static {p0, v4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
move-result v3
:cond_28
if-gtz v3, :cond_2b
move v3, p1
:cond_2b
if-gtz v3, :cond_2f
iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I
:cond_2f
if-eqz v2, :cond_56
iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ne v4, v5, :cond_56
:goto_35
if-gtz v1, :cond_3b
if-eqz v2, :cond_3b
iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_3b
if-gtz v1, :cond_44
const-string/jumbo v4, "mMaxHeight"
invoke-static {p0, v4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
move-result v1
:cond_44
if-gtz v1, :cond_47
move v1, p2
:cond_47
if-gtz v1, :cond_4b
iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
:cond_4b
new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;
invoke-direct {v4, v3, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V
return-object v4
:cond_51
invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I
move-result v3
goto :goto_19
:cond_56
invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I
move-result v1
goto :goto_35
.end method
.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
.registers 7
const/4 v3, 0x0
:try_start_1
const-class v4, Landroid/widget/ImageView;
invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
const/4 v4, 0x1
invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Integer;
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
:try_end_14
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1e
move-result v2
if-lez v2, :cond_1d
const v4, 0x7fffffff
if-ge v2, v4, :cond_1d
move v3, v2
:goto_1d
:cond_1d
return v3
:catch_1e
move-exception v0
invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V
goto :goto_1d
.end method