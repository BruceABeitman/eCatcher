.class public abstract Lcom/pinguo/camera360/video/view/AbsVideoView;
.super Ljava/lang/Object;
.source "AbsVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract updateTopMenuBar(Landroid/app/Activity;ZZZZ)V
.end method

.method protected abstract updateVideoView(Z)V
.end method
