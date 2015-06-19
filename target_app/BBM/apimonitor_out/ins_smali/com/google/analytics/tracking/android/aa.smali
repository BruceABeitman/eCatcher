.class final Lcom/google/analytics/tracking/android/aa;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/analytics/tracking/android/y;
.method constructor <init>(Lcom/google/analytics/tracking/android/y;)V
.registers 2
iput-object p1, p0, Lcom/google/analytics/tracking/android/aa;->a:Lcom/google/analytics/tracking/android/y;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/aa;->a:Lcom/google/analytics/tracking/android/y;
invoke-virtual {v0}, Lcom/google/analytics/tracking/android/y;->f()V
return-void
.end method