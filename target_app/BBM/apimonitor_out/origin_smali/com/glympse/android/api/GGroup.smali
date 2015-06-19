.class public interface abstract Lcom/glympse/android/api/GGroup;
.super Ljava/lang/Object;
.source "GGroup.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract clearInvites()V
.end method

.method public abstract findMemberByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GGroupMember;
.end method

.method public abstract getAvatar()Lcom/glympse/android/api/GImage;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInvites()Lcom/glympse/android/core/GArray;
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

.method public abstract getMembers()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GGroupMember;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract leave()V
.end method

.method public abstract modify(Ljava/lang/String;Lcom/glympse/android/api/GImage;)V
.end method

.method public abstract send(Lcom/glympse/android/api/GInvite;Ljava/lang/String;)Z
.end method
