.class public Lcom/nostra13/universalimageloader/core/assist/SimpleImageLoadingListener;
.super Ljava/lang/Object;
.source "SimpleImageLoadingListener.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .registers 4

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method
