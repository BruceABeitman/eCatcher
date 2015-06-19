.class public interface abstract Lcom/glympse/android/lib/GSearchResult;
.super Ljava/lang/Object;
.source "GSearchResult.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getIcon()Lcom/glympse/android/api/GImage;
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLongitude()D
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPhoneNumberTypes()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneNumbers()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method
