.class public Lcom/pinguo/album/views/ThumbnailView$SimpleListener;
.super Ljava/lang/Object;
.source "ThumbnailView.java"

# interfaces
.implements Lcom/pinguo/album/views/ThumbnailView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/ThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(I)V
    .registers 2

    return-void
.end method

.method public onLongTap(I)V
    .registers 2

    return-void
.end method

.method public onScrollPositionChanged(II)V
    .registers 3

    return-void
.end method

.method public onSingleTagTapUp(I)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(I)V
    .registers 2

    return-void
.end method

.method public onUp(Z)V
    .registers 2

    return-void
.end method