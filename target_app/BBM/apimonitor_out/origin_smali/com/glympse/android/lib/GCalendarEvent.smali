.class public interface abstract Lcom/glympse/android/lib/GCalendarEvent;
.super Ljava/lang/Object;
.source "GCalendarEvent.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getAttendees()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getOrganizer()Lcom/glympse/android/api/GInvite;
.end method

.method public abstract getStartTime()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isAllDay()Z
.end method

.method public abstract toTicket()Lcom/glympse/android/api/GTicket;
.end method
