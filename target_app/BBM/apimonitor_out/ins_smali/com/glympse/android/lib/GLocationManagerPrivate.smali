.class public interface abstract Lcom/glympse/android/lib/GLocationManagerPrivate;
.super Ljava/lang/Object;
.source "GLocationManagerPrivate.java"
.implements Lcom/glympse/android/api/GLocationManager;
.implements Lcom/glympse/android/core/GLocationListener;
.implements Lcom/glympse/android/core/GProximityListener;
.method public abstract getLocationProvider()Lcom/glympse/android/core/GLocationProvider;
.end method
.method public abstract restartProvider()V
.end method
.method public abstract setActive(Z)V
.end method
.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method
.method public abstract startMonitoring(Lcom/glympse/android/core/GRegion;)V
.end method
.method public abstract startStopLocation(Z)V
.end method
.method public abstract stop()V
.end method
.method public abstract stopMonitoring(Lcom/glympse/android/core/GRegion;)V
.end method