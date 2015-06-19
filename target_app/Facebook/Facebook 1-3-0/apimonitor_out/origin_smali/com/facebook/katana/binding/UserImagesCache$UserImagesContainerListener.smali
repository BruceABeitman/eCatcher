.class public interface abstract Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
.super Ljava/lang/Object;
.source "UserImagesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/binding/UserImagesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "UserImagesContainerListener"
.end annotation


# virtual methods
.method public abstract onUserImageDownload(Landroid/content/Context;JLjava/lang/String;)V
.end method

.method public abstract onUserImageLoaded(Landroid/content/Context;Lcom/facebook/katana/binding/UserImage;)V
.end method
