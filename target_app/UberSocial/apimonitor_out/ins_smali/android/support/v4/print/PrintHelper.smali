.class public final Landroid/support/v4/print/PrintHelper;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final COLOR_MODE_COLOR:I = 0x2
.field public static final COLOR_MODE_MONOCHROME:I = 0x1
.field public static final ORIENTATION_LANDSCAPE:I = 0x1
.field public static final ORIENTATION_PORTRAIT:I = 0x2
.field public static final SCALE_MODE_FILL:I = 0x2
.field public static final SCALE_MODE_FIT:I = 0x1
.field  mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Landroid/support/v4/print/PrintHelper;->systemSupportsPrint()Z
move-result v0
if-eqz v0, :cond_11
new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;
invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
:goto_10
return-void
:cond_11
new-instance v0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;
const/4 v1, 0x0
invoke-direct {v0, v1}, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;-><init>(Landroid/support/v4/print/PrintHelper$1;)V
iput-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
goto :goto_10
.end method
.method public static systemSupportsPrint()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public getColorMode()I
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getColorMode()I
move-result v0
return v0
.end method
.method public getOrientation()I
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getOrientation()I
move-result v0
return v0
.end method
.method public getScaleMode()I
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->getScaleMode()I
move-result v0
return v0
.end method
.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
invoke-interface {v0, p1, p2}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
return-void
.end method
.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
invoke-interface {v0, p1, p2}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
return-void
.end method
.method public setColorMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setColorMode(I)V
return-void
.end method
.method public setOrientation(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setOrientation(I)V
return-void
.end method
.method public setScaleMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/print/PrintHelper;->mImpl:Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;->setScaleMode(I)V
return-void
.end method