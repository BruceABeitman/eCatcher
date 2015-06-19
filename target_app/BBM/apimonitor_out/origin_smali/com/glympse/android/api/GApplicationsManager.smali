.class public interface abstract Lcom/glympse/android/api/GApplicationsManager;
.super Ljava/lang/Object;
.source "GApplicationsManager.java"

# interfaces
.implements Lcom/glympse/android/api/GEventSink;


# virtual methods
.method public abstract canInstall(Lcom/glympse/android/api/GApplication;)Z
.end method

.method public abstract canSend(Lcom/glympse/android/api/GInvite;)Z
.end method

.method public abstract getApplications()Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GApplication;",
            ">;"
        }
    .end annotation
.end method

.method public abstract install(Lcom/glympse/android/api/GApplication;)Z
.end method

.method public abstract isInstalled(Lcom/glympse/android/api/GApplication;)Z
.end method
