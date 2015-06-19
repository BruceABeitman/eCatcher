.class public Lcom/ubermedia/ui/widgets/MyGallery;
.super Landroid/widget/Gallery;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 7
const/high16 v0, 0x4170
invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F
move-result v0
const/high16 v1, -0x3e90
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
invoke-super {p0, p1, p2, v0, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
move-result v0
return v0
.end method