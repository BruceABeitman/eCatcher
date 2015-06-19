.class public interface abstract Lcom/glympse/android/rdbg/GRemoteDebugger;
.super Ljava/lang/Object;
.source "GRemoteDebugger.java"
.implements Lcom/glympse/android/api/GEventListener;
.method public abstract isConnected()Z
.end method
.method public abstract log(ILjava/lang/String;Z)V
.end method
.method public abstract setConsoleDomainEventsEnabled(Z)V
.end method
.method public abstract setConsoleDomainLogLevel(I)V
.end method
.method public abstract setListener(Lcom/glympse/android/rdbg/GRemoteDebugListener;)V
.end method
.method public abstract start(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public abstract stop()V
.end method