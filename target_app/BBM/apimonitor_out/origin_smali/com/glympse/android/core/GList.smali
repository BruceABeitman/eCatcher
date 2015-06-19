.class public interface abstract Lcom/glympse/android/core/GList;
.super Ljava/lang/Object;
.source "GList.java"

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
.method public abstract clone()Lcom/glympse/android/core/GList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GList",
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

.method public abstract elementsReversed()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getFirst()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getLast()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method
