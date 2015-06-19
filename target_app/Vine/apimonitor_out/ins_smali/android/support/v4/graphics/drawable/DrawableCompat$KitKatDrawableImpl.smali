.class  Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.source "DrawableCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V
return-void
.end method
.method public isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
move-result v0
return v0
.end method
.method public setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
return-void
.end method