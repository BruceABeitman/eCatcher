.class public interface abstract Lcom/glympse/android/lib/GGroupPrivate;
.super Ljava/lang/Object;
.source "GGroupPrivate.java"

# interfaces
.implements Lcom/glympse/android/api/GGroup;
.implements Lcom/glympse/android/core/GPersistable;


# virtual methods
.method public abstract addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V
.end method

.method public abstract clearMembers()V
.end method

.method public abstract getCode()Ljava/lang/String;
.end method

.method public abstract getEventsNext()J
.end method

.method public abstract getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
.end method

.method public abstract isPublic()Z
.end method

.method public abstract mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;)V
.end method

.method public abstract mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V
.end method

.method public abstract mergeMembers(Lcom/glympse/android/hal/GVector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GGroupMemberPrivate;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V
.end method

.method public abstract setCode(Ljava/lang/String;)V
.end method

.method public abstract setEventsNext(J)V
.end method

.method public abstract setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setState(I)V
.end method

.method public abstract startTracking(I)V
.end method

.method public abstract stopTracking(I)V
.end method
