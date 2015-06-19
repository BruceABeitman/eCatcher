.class public interface abstract Lcom/glympse/android/lib/GTicketProtocol;
.super Ljava/lang/Object;
.source "GTicketProtocol.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract addInvite(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
.end method
.method public abstract appendCompleted(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method
.method public abstract appendData(Lcom/glympse/android/lib/GTicketPrivate;JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.end method
.method public abstract clearTicket(Lcom/glympse/android/api/GTicket;ZZ)V
.end method
.method public abstract deleteInvite(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V
.end method
.method public abstract deleteTicket(Lcom/glympse/android/api/GTicket;)V
.end method
.method public abstract expireTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method
.method public abstract ownTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method
.method public abstract prepareEtaProperty(JJJ)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract prepareMessageProperty(JLjava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract preparePlaceProperty(JLcom/glympse/android/api/GPlace;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract prepareProperty(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract prepareRouteProperty(JLcom/glympse/android/api/GTrack;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract prepareTravelModeProperty(JLcom/glympse/android/api/GTravelMode;)Lcom/glympse/android/core/GPrimitive;
.end method
.method public abstract refreshInvites()V
.end method
.method public abstract refreshTicket(Lcom/glympse/android/lib/GTicketPrivate;Z)V
.end method
.method public abstract setVisibility(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/core/GPrimitive;)V
.end method
.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method
.method public abstract stop()V
.end method
.method public abstract updateInvite(Lcom/glympse/android/api/GInvite;)V
.end method
.method public abstract updateTicket(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/api/GPlace;)V
.end method
.method public abstract updateTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
.end method
.method public abstract updateTicketEta(Lcom/glympse/android/api/GTicket;IJJILcom/glympse/android/api/GTrack;)V
.end method
.method public abstract updateTravelMode(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/api/GTravelMode;)V
.end method