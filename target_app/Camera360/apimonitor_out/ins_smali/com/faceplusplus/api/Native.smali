.class public Lcom/faceplusplus/api/Native;
.super Ljava/lang/Object;
.source "Native.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static native createDTHandle()I
.end method
.method static native createDTResult()I
.end method
.method static native detectFaceFromBitmap(IILandroid/graphics/Bitmap;)[F
.end method
.method static native detectFaceFromGraybyte(II[BII)[F
.end method
.method static native getGrayByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B
.end method
.method static native init(Landroid/content/Context;Ljava/lang/String;)I
.end method
.method static native release(Landroid/content/Context;II)I
.end method
.method static native setHighAccuracy(IZ)I
.end method
.method static native setMinFaceSize(II)I
.end method
.method static native setTrackingMode(IZ)I
.end method