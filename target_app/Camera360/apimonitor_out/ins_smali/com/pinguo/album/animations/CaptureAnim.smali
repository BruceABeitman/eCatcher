.class public Lcom/pinguo/album/animations/CaptureAnim;
.super Ljava/lang/Object;
.source "CaptureAnim.java"
.field private static final ZOOM_DELTA:F = 0.2f
.field private static final ZOOM_IN_BEGIN:F = 0.8f
.field private static final sSlideInterpolator:Landroid/view/animation/Interpolator;
.field private static final sZoomInInterpolator:Landroid/view/animation/Interpolator;
.field private static final sZoomOutInterpolator:Landroid/view/animation/Interpolator;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
sput-object v0, Lcom/pinguo/album/animations/CaptureAnim;->sZoomOutInterpolator:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V
sput-object v0, Lcom/pinguo/album/animations/CaptureAnim;->sZoomInInterpolator:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;
invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V
sput-object v0, Lcom/pinguo/album/animations/CaptureAnim;->sSlideInterpolator:Landroid/view/animation/Interpolator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static calculateScale(F)F
.registers 7
const/high16 v5, 0x4000
const/high16 v3, 0x3f00
const v4, 0x3e4ccccd
cmpg-float v1, p0, v3
if-gtz v1, :cond_19
const/high16 v1, 0x3f80
sget-object v2, Lcom/pinguo/album/animations/CaptureAnim;->sZoomOutInterpolator:Landroid/view/animation/Interpolator;
mul-float v3, p0, v5
invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v2
mul-float/2addr v2, v4
sub-float v0, v1, v2
:goto_18
return v0
:cond_19
const v1, 0x3f4ccccd
sget-object v2, Lcom/pinguo/album/animations/CaptureAnim;->sZoomInInterpolator:Landroid/view/animation/Interpolator;
sub-float v3, p0, v3
mul-float/2addr v3, v5
invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v2
mul-float/2addr v2, v4
add-float v0, v1, v2
goto :goto_18
.end method
.method public static calculateSlide(F)F
.registers 2
sget-object v0, Lcom/pinguo/album/animations/CaptureAnim;->sSlideInterpolator:Landroid/view/animation/Interpolator;
invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v0
return v0
.end method