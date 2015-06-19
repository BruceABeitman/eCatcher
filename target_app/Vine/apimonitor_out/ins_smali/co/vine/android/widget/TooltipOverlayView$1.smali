.class  Lco/vine/android/widget/TooltipOverlayView$1;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "TooltipOverlayView.java"
.field final synthetic this$0:Lco/vine/android/widget/TooltipOverlayView;
.method constructor <init>(Lco/vine/android/widget/TooltipOverlayView;)V
.registers 2
iput-object p1, p0, Lco/vine/android/widget/TooltipOverlayView$1;->this$0:Lco/vine/android/widget/TooltipOverlayView;
invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 3
iget-object v0, p0, Lco/vine/android/widget/TooltipOverlayView$1;->this$0:Lco/vine/android/widget/TooltipOverlayView;
invoke-virtual {v0}, Lco/vine/android/widget/TooltipOverlayView;->clearAnimation()V
return-void
.end method