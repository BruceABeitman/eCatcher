.class public final Lcom/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;
.super Ljava/lang/Object;
.source "SimpleBitmapDisplayer.java"
.implements Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public display(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)Landroid/graphics/Bitmap;
.registers 4
invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-object p1
.end method