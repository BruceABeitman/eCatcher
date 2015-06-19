.class public Lcom/instagram/android/maps/ui/FadingMapItem;
.super Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
.source "FadingMapItem.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected final a(Landroid/view/animation/AnimationSet;)V
.registers 5
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x64
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
return-void
.end method