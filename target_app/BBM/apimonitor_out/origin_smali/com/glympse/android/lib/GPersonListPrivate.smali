.class public interface abstract Lcom/glympse/android/lib/GPersonListPrivate;
.super Ljava/lang/Object;
.source "GPersonListPrivate.java"

# interfaces
.implements Lcom/glympse/android/lib/GPersonList;


# virtual methods
.method public abstract abort()V
.end method

.method public abstract search(Lcom/glympse/android/hal/GVector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPeopleFound(Lcom/glympse/android/hal/GVector;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GPerson;",
            ">;I)V"
        }
    .end annotation
.end method
