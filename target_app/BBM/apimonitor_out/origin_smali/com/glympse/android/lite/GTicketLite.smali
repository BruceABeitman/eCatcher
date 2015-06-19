.class public interface abstract Lcom/glympse/android/lite/GTicketLite;
.super Ljava/lang/Object;
.source "GTicketLite.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract add15Minutes()V
.end method

.method public abstract addInvite(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract expire()V
.end method

.method public abstract getDestination()Lcom/glympse/android/api/GPlace;
.end method

.method public abstract getExpireTime()J
.end method

.method public abstract getInvites()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lite/GInviteLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getStartTime()J
.end method

.method public abstract modify(I)Z
.end method
