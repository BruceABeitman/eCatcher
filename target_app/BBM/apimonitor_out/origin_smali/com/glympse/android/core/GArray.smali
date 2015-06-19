.class public interface abstract Lcom/glympse/android/core/GArray;
.super Ljava/lang/Object;
.source "GArray.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/glympse/android/core/GCommon;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract at(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract clone()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract elements()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method
