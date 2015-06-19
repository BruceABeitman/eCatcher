.class public abstract Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;
.super Landroid/widget/RelativeLayout;
.source "AbsIDPhotoGuideView.java"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public static getDeviation(FF)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
.registers 11
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
const/16 v6, 0x280
const/16 v7, 0x470
invoke-direct {v0, v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v3
invoke-static {v0, v3}, Lcom/pinguo/lib/util/MathUtils;->scaleSizeByCenterCrop(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v2
sget-object v6, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "scaleSizeInfo = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
sget-object v6, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "screenSizeInfo = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v6
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v7
if-ne v6, v7, :cond_9a
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v6
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v7
sub-int/2addr v6, v7
div-int/lit8 v1, v6, 0x2
sget-object v6, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "halfSizeOfScreen = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v6
int-to-float v6, v6
mul-float v4, v6, p0
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v6
int-to-float v6, v6
mul-float/2addr v6, p1
int-to-float v7, v1
sub-float v5, v6, v7
sget-object v6, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "yDeviation = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v6, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v7
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v8
invoke-direct {v6, v7, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
:goto_99
return-object v6
:cond_9a
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v6
invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v7
sub-int/2addr v6, v7
div-int/lit8 v1, v6, 0x2
sget-object v6, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "halfSizeOfScreen = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v6
int-to-float v6, v6
mul-float/2addr v6, p0
int-to-float v7, v1
sub-float v4, v6, v7
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v6
int-to-float v6, v6
mul-float v5, v6, p1
sget-object v6, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "xDeviation = "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
new-instance v6, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v7
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v8
invoke-direct {v6, v7, v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
goto :goto_99
.end method
.method public abstract clearResource()V
.end method
.method public abstract initGuideView()V
.end method
.method public abstract restoreGuideView()V
.end method
.method public abstract startGuideViewAnimation()V
.end method