.class public Landroid/support/v4/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat;
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_10
new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompatJB;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V
:goto_f
return-object v0
:cond_10
new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat;
invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V
goto :goto_f
.end method
.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat;
.registers 7
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_10
new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompatJB;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V
:goto_f
return-object v0
:cond_10
new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat;
invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V
goto :goto_f
.end method
.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat;
.registers 6
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_10
new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompatJB;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V
:goto_f
return-object v0
:cond_10
new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat;
invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V
goto :goto_f
.end method
.method public toBundle()Landroid/os/Bundle;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
.registers 2
return-void
.end method