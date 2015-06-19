.class public interface abstract Lcom/glympse/android/lib/GCalendarEvent;
.super Ljava/lang/Object;
.source "GCalendarEvent.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract getAttendees()Lcom/glympse/android/core/GArray;
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