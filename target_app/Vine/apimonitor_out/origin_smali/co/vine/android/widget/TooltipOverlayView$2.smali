.class Lco/vine/android/widget/TooltipOverlayView$2;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "TooltipOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/widget/TooltipOverlayView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/TooltipOverlayView;


# direct methods
.method constructor <init>(Lco/vine/android/widget/TooltipOverlayView;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/TooltipOverlayView$2;->this$0:Lco/vine/android/widget/TooltipOverlayView;

    invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v1, p0, Lco/vine/android/widget/TooltipOverlayView$2;->this$0:Lco/vine/android/widget/TooltipOverlayView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lco/vine/android/widget/TooltipOverlayView;->setVisibility(I)V

    iget-object v1, p0, Lco/vine/android/widget/TooltipOverlayView$2;->this$0:Lco/vine/android/widget/TooltipOverlayView;

    invoke-virtual {v1}, Lco/vine/android/widget/TooltipOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lco/vine/android/widget/TooltipOverlayView$2;->this$0:Lco/vine/android/widget/TooltipOverlayView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_16
    return-void
.end method
