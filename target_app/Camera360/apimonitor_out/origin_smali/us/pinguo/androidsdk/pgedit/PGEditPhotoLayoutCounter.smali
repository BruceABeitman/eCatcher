.class public final Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;
.super Ljava/lang/Object;
.source "PGEditPhotoLayoutCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
    }
.end annotation


# static fields
.field static centerHeight:I

.field static firstMenusMarginLeft:I

.field static leastShowWidth:I

.field static menusMarginLeft:I

.field static phoneWidth:I

.field static showPhotoHeightForHorizontal:I

.field static showPhotoHeightForVertical:I

.field static showPhotoSize:I

.field static showPhotoWidthForHorizontal:I

.field static showPhotoWidthForVertical:I

.field static showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;-><init>()V

    sput-object v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs changeEditViewLayout(II[Landroid/view/View;)V
    .registers 7

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    array-length v3, p2

    const/4 v2, 0x0

    :goto_b
    if-lt v2, v3, :cond_e

    return-void

    :cond_e
    aget-object v1, p2, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method static varargs changeEditViewLayout([Landroid/view/View;)V
    .registers 3

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v0

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v1

    invoke-static {v0, v1, p0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->changeEditViewLayout(II[Landroid/view/View;)V

    return-void
.end method

.method static countPhotoSize(Landroid/util/DisplayMetrics;)V
    .registers 6

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x431f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v0, v2, v3

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    const/high16 v4, 0x4120

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v1, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initPreviewImageData,width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method static initLayoutParameters(Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "pg_sdk_edit_other_margin_left"

    invoke-static {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x3fc0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_32

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "pg_sdk_edit_other_1point5_margin_left"

    invoke-static {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->menusMarginLeft:I

    :cond_32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "pg_sdk_edit_first_margin_left"

    invoke-static {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->firstMenusMarginLeft:I

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->leastShowWidth:I

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->phoneWidth:I

    return-void
.end method

.method static measure(IILandroid/util/DisplayMetrics;)V
    .registers 4

    sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-static {p0, p1, p2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->measure(IILandroid/util/DisplayMetrics;Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;)V

    return-void
.end method

.method static measure(IILandroid/util/DisplayMetrics;Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;)V
    .registers 7

    iget v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x4303

    iget v2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->centerHeight:I

    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->centerHeight:I

    const/high16 v1, 0x41e0

    iget v2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForVertical:I

    int-to-float v0, p0

    sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForVertical:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForVertical:I

    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x41a0

    iget v2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForHorizontal:I

    int-to-float v0, p1

    sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForHorizontal:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, p0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForHorizontal:I

    if-lt p1, p0, :cond_62

    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForVertical:I

    sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForHorizontal:I

    if-gt v0, v1, :cond_57

    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForVertical:I

    invoke-virtual {p3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->setHeight(I)V

    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForVertical:I

    invoke-virtual {p3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->setWidth(I)V

    :goto_56
    return-void

    :cond_57
    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForHorizontal:I

    invoke-virtual {p3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->setHeight(I)V

    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForHorizontal:I

    invoke-virtual {p3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->setWidth(I)V

    goto :goto_56

    :cond_62
    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForHorizontal:I

    sget v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForVertical:I

    if-gt v0, v1, :cond_73

    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForHorizontal:I

    invoke-virtual {p3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->setHeight(I)V

    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForHorizontal:I

    invoke-virtual {p3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->setWidth(I)V

    goto :goto_56

    :cond_73
    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoHeightForVertical:I

    invoke-virtual {p3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->setHeight(I)V

    sget v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPhotoWidthForVertical:I

    invoke-virtual {p3, v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->setWidth(I)V

    goto :goto_56
.end method

.method static measureAndChangeViewLayout(Landroid/view/View;IILandroid/util/DisplayMetrics;Landroid/view/View;)V
    .registers 11

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;

    invoke-direct {v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;-><init>()V

    invoke-static {p1, p2, p3, v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->measure(IILandroid/util/DisplayMetrics;Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;)V

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->changeEditViewLayout(II[Landroid/view/View;)V

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->centerHeight:I

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x40a0

    iget v4, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
