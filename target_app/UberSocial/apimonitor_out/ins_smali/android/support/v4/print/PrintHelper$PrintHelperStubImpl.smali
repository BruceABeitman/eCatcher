.class final Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/print/PrintHelper$PrintHelperVersionImpl;
.field  mColorMode:I
.field  mOrientation:I
.field  mScaleMode:I
.method private constructor <init>()V
.registers 2
const/4 v0, 0x2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I
iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I
const/4 v0, 0x1
iput v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/print/PrintHelper$1;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;-><init>()V
return-void
.end method
.method public getColorMode()I
.registers 2
iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I
return v0
.end method
.method public getOrientation()I
.registers 2
iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I
return v0
.end method
.method public getScaleMode()I
.registers 2
iget v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I
return v0
.end method
.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 3
return-void
.end method
.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
.registers 3
return-void
.end method
.method public setColorMode(I)V
.registers 2
iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mColorMode:I
return-void
.end method
.method public setOrientation(I)V
.registers 2
iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mOrientation:I
return-void
.end method
.method public setScaleMode(I)V
.registers 2
iput p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperStubImpl;->mScaleMode:I
return-void
.end method