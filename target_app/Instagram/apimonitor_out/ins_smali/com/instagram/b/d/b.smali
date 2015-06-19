.class public final Lcom/instagram/b/d/b;
.super Lcom/instagram/common/analytics/b;
.source "PerfEvent.java"
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v0, "event_type"
const-string v1, "perf"
invoke-virtual {p0, v0, v1}, Lcom/instagram/b/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
return-void
.end method