.class public interface abstract Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;
.super Ljava/lang/Object;
.source "StreamAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/StreamAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "StreamAdapterListener"
.end annotation


# virtual methods
.method public abstract onOpenMediaItem(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
.end method

.method public abstract onUserImageClicked(Lcom/facebook/katana/service/api/FacebookPost;)V
.end method
