.class public interface abstract Lcom/glympse/android/hal/GContactsProvider;
.super Ljava/lang/Object;
.source "GContactsProvider.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract getPeople()Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadAvatar(J)Lcom/glympse/android/core/GDrawable;
.end method

.method public abstract refresh()V
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract start(Lcom/glympse/android/hal/GContactsListener;Lcom/glympse/android/core/GHandler;)V
.end method

.method public abstract stop()V
.end method
