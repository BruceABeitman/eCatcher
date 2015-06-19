.class public interface abstract Lcom/spotify/mobile/android/spotlets/common/adapter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TD;"
        }
    .end annotation
.end method

.method public abstract getItemId(I)J
.end method

.method public abstract hasStableIds()Z
.end method

.method public abstract isEnabled(I)Z
.end method
