.class final Lcom/glympse/android/hal/DebugBase$1;
.super Ljava/lang/Object;
.source "DebugBase.java"
.implements Ljava/lang/Runnable;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
const/4 v0, 0x0
invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->logDiagnostics(Landroid/content/Context;)V
return-void
.end method