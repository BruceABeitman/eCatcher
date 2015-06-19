.class public interface abstract Lcom/glympse/android/lib/GPersonList;
.super Ljava/lang/Object;
.source "GPersonList.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract getPeople()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPercentage()I
.end method
