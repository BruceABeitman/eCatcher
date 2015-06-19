.class final Lcom/google/analytics/tracking/android/ag;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"
.field final synthetic a:Lcom/google/analytics/tracking/android/y;
.method private constructor <init>(Lcom/google/analytics/tracking/android/y;)V
.registers 2
iput-object p1, p0, Lcom/google/analytics/tracking/android/ag;->a:Lcom/google/analytics/tracking/android/y;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/y;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/ag;-><init>(Lcom/google/analytics/tracking/android/y;)V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/google/analytics/tracking/android/ag;->a:Lcom/google/analytics/tracking/android/y;
invoke-virtual {v0}, Lcom/google/analytics/tracking/android/y;->h()V
return-void
.end method