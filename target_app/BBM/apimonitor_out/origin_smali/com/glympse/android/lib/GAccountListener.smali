.class public interface abstract Lcom/glympse/android/lib/GAccountListener;
.super Ljava/lang/Object;
.source "GAccountListener.java"

# interfaces
.implements Lcom/glympse/android/core/GCommon;


# virtual methods
.method public abstract accountCreated(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract failedToCreate(ZILcom/glympse/android/api/GServerError;)V
.end method

.method public abstract failedToLogin(ILcom/glympse/android/api/GServerError;)V
.end method

.method public abstract loggedIn(Ljava/lang/String;J)V
.end method
