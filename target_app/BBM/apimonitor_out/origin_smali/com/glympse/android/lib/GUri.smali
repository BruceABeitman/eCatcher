.class public interface abstract Lcom/glympse/android/lib/GUri;
.super Ljava/lang/Object;
.source "GUri.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPort()Ljava/lang/String;
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getSegments()Lcom/glympse/android/core/GArray;
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

.method public abstract getUriString()Ljava/lang/String;
.end method
