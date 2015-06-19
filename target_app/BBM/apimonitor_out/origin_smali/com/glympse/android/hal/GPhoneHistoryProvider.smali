.class public interface abstract Lcom/glympse/android/hal/GPhoneHistoryProvider;
.super Ljava/lang/Object;
.source "GPhoneHistoryProvider.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getCallLog()Lcom/glympse/android/core/GArray;
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

.method public abstract setLookback(J)V
.end method
