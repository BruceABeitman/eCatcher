.class public interface abstract Lcom/glympse/android/hal/GBatteryProvider;
.super Ljava/lang/Object;
.source "GBatteryProvider.java"
.implements Lcom/glympse/android/core/GCommon;
.method public abstract acquireWakeLock()V
.end method
.method public abstract getLevel()I
.end method
.method public abstract isPlugged()Z
.end method
.method public abstract isPresent()Z
.end method
.method public abstract releaseWakeLock()V
.end method
.method public abstract setBatteryListener(Lcom/glympse/android/hal/GBatteryListener;)V
.end method
.method public abstract start()V
.end method
.method public abstract stop()V
.end method