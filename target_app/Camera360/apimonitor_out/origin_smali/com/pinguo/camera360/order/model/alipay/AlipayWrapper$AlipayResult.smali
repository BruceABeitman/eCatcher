.class public interface abstract Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper$AlipayResult;
.super Ljava/lang/Object;
.source "AlipayWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/order/model/alipay/AlipayWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AlipayResult"
.end annotation


# virtual methods
.method public abstract onAlipayCancel()V
.end method

.method public abstract onAlipayError(ILjava/lang/String;)V
.end method

.method public abstract onAlipayPrevExecute()V
.end method

.method public abstract onAlipaySuccess(Lcom/pinguo/camera360/order/model/alipay/Result;)V
.end method

.method public abstract onAlipayUpgrade()V
.end method
