.class public interface abstract Lcom/glympse/android/api/GDataEvent;
.super Ljava/lang/Object;
.source "GDataEvent.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getProperties()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GDataRow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTicket()Lcom/glympse/android/api/GTicket;
.end method
