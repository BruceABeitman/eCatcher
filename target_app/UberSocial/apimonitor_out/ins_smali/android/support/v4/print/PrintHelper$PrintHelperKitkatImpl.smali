.class final Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
.field private final mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
.method constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/support/v4/print/PrintHelperKitkat;
invoke-direct {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
return-void
.end method
.method public getColorMode()I
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getColorMode()I
move-result v0
return v0
.end method
.method public getOrientation()I
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getOrientation()I
move-result v0
return v0
.end method
.method public getScaleMode()I
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v0}, Landroid/support/v4/print/PrintHelperKitkat;->getScaleMode()I
move-result v0
return v0
.end method
.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
return-void
.end method
.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
return-void
.end method
.method public setColorMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setColorMode(I)V
return-void
.end method
.method public setOrientation(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setOrientation(I)V
return-void
.end method
.method public setScaleMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperKitkatImpl;->mPrintHelper:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v0, p1}, Landroid/support/v4/print/PrintHelperKitkat;->setScaleMode(I)V
return-void
.end method