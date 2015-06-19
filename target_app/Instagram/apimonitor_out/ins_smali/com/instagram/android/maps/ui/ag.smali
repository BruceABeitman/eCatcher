.class public final Lcom/instagram/android/maps/ui/ag;
.super Lcom/google/android/maps/Overlay;
.source "MapsShadowOverlay.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V
return-void
.end method
.method public final draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
.registers 5
if-eqz p3, :cond_7
const/high16 v0, 0x7700
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V
:cond_7
invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
return-void
.end method