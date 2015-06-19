.class public Lco/vine/android/player/StaticSizeVideoView;
.super Lco/vine/android/player/SdkVideoView;
.source "StaticSizeVideoView.java"
.field private mHeight:I
.field private mWidth:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1}, Lco/vine/android/player/SdkVideoView;-><init>(Landroid/content/Context;)V
iput v0, p0, Lco/vine/android/player/StaticSizeVideoView;->mWidth:I
iput v0, p0, Lco/vine/android/player/StaticSizeVideoView;->mHeight:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Lco/vine/android/player/SdkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v0, p0, Lco/vine/android/player/StaticSizeVideoView;->mWidth:I
iput v0, p0, Lco/vine/android/player/StaticSizeVideoView;->mHeight:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/player/SdkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v0, p0, Lco/vine/android/player/StaticSizeVideoView;->mWidth:I
iput v0, p0, Lco/vine/android/player/StaticSizeVideoView;->mHeight:I
return-void
.end method
.method protected onMeasure(II)V
.registers 5
iget v0, p0, Lco/vine/android/player/StaticSizeVideoView;->mWidth:I
iget v1, p0, Lco/vine/android/player/StaticSizeVideoView;->mHeight:I
invoke-virtual {p0, v0, v1}, Lco/vine/android/player/StaticSizeVideoView;->setMeasuredDimension(II)V
return-void
.end method
.method public setSize(II)V
.registers 3
iput p1, p0, Lco/vine/android/player/StaticSizeVideoView;->mWidth:I
iput p2, p0, Lco/vine/android/player/StaticSizeVideoView;->mHeight:I
return-void
.end method