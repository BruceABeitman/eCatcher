.class public interface abstract Lcom/glympse/android/lib/GCalendarManager;
.super Ljava/lang/Object;
.source "GCalendarManager.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract getEvents()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lib/GCalendarEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refresh()V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract start(Lcom/glympse/android/api/GGlympse;)V
.end method

.method public abstract stop()V
.end method
