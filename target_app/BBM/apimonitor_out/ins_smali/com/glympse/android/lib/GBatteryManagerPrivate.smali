.class public interface abstract Lcom/glympse/android/lib/GBatteryManagerPrivate;
.super Ljava/lang/Object;
.source "GBatteryManagerPrivate.java"
.implements Lcom/glympse/android/api/GBatteryManager;
.method public abstract getListener()Lcom/glympse/android/hal/GBatteryListener;
.end method
.method public abstract getProvider()Lcom/glympse/android/hal/GBatteryProvider;
.end method
.method public abstract logBatteryEvent(Lcom/glympse/android/api/GTicket;)V
.end method
.method public abstract setKeepAwake()V
.end method
.method public abstract start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.end method
.method public abstract stop()V
.end method
.method public abstract updateStatus()V
.end method