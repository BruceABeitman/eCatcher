.class public interface abstract Lcom/pinguo/share/bind/SinaBinder$ISinaSSOLoginCallback;
.super Ljava/lang/Object;
.source "SinaBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/bind/SinaBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISinaSSOLoginCallback"
.end annotation


# virtual methods
.method public abstract onCancelled()V
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onSuccessed(Ljava/lang/String;)V
.end method
