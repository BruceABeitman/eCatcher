.class public Lcom/handmark/pulltorefresh/library/internal/ViewCompat;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_a
invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$SDK16;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
:goto_9
return-void
:cond_a
const-wide/16 v0, 0x10
invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
goto :goto_9
.end method
.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_a
invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$SDK16;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
:goto_9
return-void
:cond_a
invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_9
.end method
.method public static setLayerType(Landroid/view/View;I)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_9
invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$SDK11;->setLayerType(Landroid/view/View;I)V
:cond_9
return-void
.end method