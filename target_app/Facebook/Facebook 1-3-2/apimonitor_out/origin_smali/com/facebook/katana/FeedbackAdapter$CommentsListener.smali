.class public interface abstract Lcom/facebook/katana/FeedbackAdapter$CommentsListener;
.super Ljava/lang/Object;
.source "FeedbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/FeedbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommentsListener"
.end annotation


# virtual methods
.method public abstract onLike(Z)V
.end method

.method public abstract onMediaItemClicked(Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
.end method
