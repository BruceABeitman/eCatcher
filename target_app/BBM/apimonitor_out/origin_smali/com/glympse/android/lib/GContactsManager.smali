.class public interface abstract Lcom/glympse/android/lib/GContactsManager;
.super Ljava/lang/Object;
.source "GContactsManager.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract abort(Lcom/glympse/android/lib/GPersonList;)V
.end method

.method public abstract addProvider(Lcom/glympse/android/hal/GContactsProvider;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clearLookup()V
.end method

.method public abstract clearSearch()V
.end method

.method public abstract findPeopleForInvites(Lcom/glympse/android/core/GArray;Lcom/glympse/android/lib/GEvent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;",
            "Lcom/glympse/android/lib/GEvent;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPersonList(Ljava/lang/String;I)Lcom/glympse/android/lib/GPersonList;
.end method

.method public abstract refresh()V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract start(Lcom/glympse/android/api/GGlympse;)V
.end method

.method public abstract stop()V
.end method
