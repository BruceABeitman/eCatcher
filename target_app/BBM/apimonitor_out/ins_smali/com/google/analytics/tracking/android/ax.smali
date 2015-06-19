.class final Lcom/google/analytics/tracking/android/ax;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"
.implements Lcom/google/analytics/tracking/android/l;
.field final synthetic a:Lcom/google/analytics/tracking/android/aw;
.method constructor <init>(Lcom/google/analytics/tracking/android/aw;)V
.registers 2
iput-object p1, p0, Lcom/google/analytics/tracking/android/ax;->a:Lcom/google/analytics/tracking/android/aw;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()J
.registers 3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
return-wide v0
.end method