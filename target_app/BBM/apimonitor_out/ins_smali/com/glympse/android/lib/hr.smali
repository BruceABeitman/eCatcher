.class public Lcom/glympse/android/lib/hr;
.super Ljava/lang/Object;
.source "SineLocationProvider.java"
.implements Ljava/lang/Runnable;
.field private ss:Lcom/glympse/android/lib/SineLocationProvider;
.method public constructor <init>(Lcom/glympse/android/lib/SineLocationProvider;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/hr;->ss:Lcom/glympse/android/lib/SineLocationProvider;
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/hr;->ss:Lcom/glympse/android/lib/SineLocationProvider;
invoke-virtual {v0}, Lcom/glympse/android/lib/SineLocationProvider;->locationUpdated()V
return-void
.end method