.class public interface abstract Lcom/glympse/android/hal/GCalendarProvider;
.super Ljava/lang/Object;
.source "GCalendarProvider.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getEvents()Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GCalendarEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refresh()V
.end method

.method public abstract start(Lcom/glympse/android/hal/GCalendarListener;Lcom/glympse/android/core/GHandler;)V
.end method

.method public abstract stop()V
.end method
