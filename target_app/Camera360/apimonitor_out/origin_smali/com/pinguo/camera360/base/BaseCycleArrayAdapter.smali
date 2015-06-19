.class public abstract Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
.super Lcom/pinguo/camera360/base/BaseArrayAdapter;
.source "BaseCycleArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/pinguo/camera360/base/BaseArrayAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAutoScrollTime(I)I
.end method

.method public abstract getRealCount()I
.end method
