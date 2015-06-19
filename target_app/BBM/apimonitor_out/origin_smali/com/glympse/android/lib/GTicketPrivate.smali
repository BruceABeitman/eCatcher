.class public interface abstract Lcom/glympse/android/lib/GTicketPrivate;
.super Ljava/lang/Object;
.source "GTicketPrivate.java"

# interfaces
.implements Lcom/glympse/android/api/GTicket;
.implements Lcom/glympse/android/core/GPersistable;


# virtual methods
.method public abstract addInviteCore(Lcom/glympse/android/api/GInvite;)V
.end method

.method public abstract clearProperty(JLjava/lang/String;)V
.end method

.method public abstract generateUri()Ljava/lang/String;
.end method

.method public abstract getDurationRaw()I
.end method

.method public abstract getEtaRaw()J
.end method

.method public abstract getEtaTs()J
.end method

.method public abstract getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNext()J
.end method

.method public abstract getParent()Lcom/glympse/android/lib/GTicketParent;
.end method

.method public abstract getPartner(Ljava/lang/Long;)Lcom/glympse/android/core/GPrimitive;
.end method

.method public abstract getPartners()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProperties()Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/glympse/android/core/GPrimitive;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestCode()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getXoaRegion()Lcom/glympse/android/core/GRegion;
.end method

.method public abstract isCompletedRaw()Z
.end method

.method public abstract isStandalone()Z
.end method

.method public abstract merge(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GGlympsePrivate;ZZ)V
.end method

.method public abstract removeAllInvites()V
.end method

.method public abstract removeInvite(Lcom/glympse/android/api/GInvite;Z)V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract setCode(Ljava/lang/String;)V
.end method

.method public abstract setCompleted()V
.end method

.method public abstract setDestination(Lcom/glympse/android/api/GPlace;)V
.end method

.method public abstract setDuration(I)V
.end method

.method public abstract setEta(JJ)V
.end method

.method public abstract setEtaTs(J)V
.end method

.method public abstract setExpireTime(JZ)V
.end method

.method public abstract setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketParent;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setMine(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNext(J)V
.end method

.method public abstract setOwner(Lcom/glympse/android/api/GAppProfile;)V
.end method

.method public abstract setProperties(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/glympse/android/core/GPrimitive;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setProperty(JLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
.end method

.method public abstract setRequestCode(Ljava/lang/String;)V
.end method

.method public abstract setRoute(Lcom/glympse/android/api/GTrack;)V
.end method

.method public abstract setSource(Ljava/lang/String;)V
.end method

.method public abstract setStandalone(Z)V
.end method

.method public abstract setStartTime(J)V
.end method

.method public abstract setState(I)Z
.end method

.method public abstract setTravelMode(Lcom/glympse/android/api/GTravelMode;)V
.end method

.method public abstract setXoaRegion(Lcom/glympse/android/core/GRegion;)V
.end method

.method public abstract updateEta(IJJILcom/glympse/android/api/GTrack;)V
.end method

.method public abstract updateState(J)Z
.end method

.method public abstract updateTravelMode(Lcom/glympse/android/api/GTravelMode;)V
.end method

.method public abstract updateWatchingState()Z
.end method

.method public abstract visibilityChanged()V
.end method
