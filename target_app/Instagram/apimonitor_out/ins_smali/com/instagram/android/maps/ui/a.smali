.class final Lcom/instagram/android/maps/ui/a;
.super Landroid/view/animation/Animation;
.source "IgAnimatingMapItem.java"
.field final synthetic a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
.method constructor <init>(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
return-void
.end method
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V
const v0, 0x3f666666
cmpl-float v0, p1, v0
if-lez v0, :cond_21
iget-object v0, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
iget-object v0, v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->e:Lcom/instagram/android/maps/ui/e;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
invoke-static {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->a(Lcom/instagram/android/maps/ui/IgAnimatingMapItem;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
iget-object v0, v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->e:Lcom/instagram/android/maps/ui/e;
iget-object v1, p0, Lcom/instagram/android/maps/ui/a;->a:Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
invoke-interface {v0}, Lcom/instagram/android/maps/ui/e;->a()V
:cond_21
return-void
.end method