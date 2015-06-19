.class public final Lcom/instagram/common/q/a/a;
.super Lcom/instagram/common/analytics/b;
.source "NotificationAnalyticsEvent.java"
.field private final a:Lcom/instagram/common/q/c/a;
.method public constructor <init>(Lcom/instagram/common/q/c/a;Ljava/lang/String;)V
.registers 5
const-string v0, "push_notification"
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
iput-object p1, p0, Lcom/instagram/common/q/a/a;->a:Lcom/instagram/common/q/c/a;
invoke-direct {p0}, Lcom/instagram/common/q/a/a;->g()V
const-string v0, "step"
invoke-virtual {p0, v0, p2}, Lcom/instagram/common/q/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
return-void
.end method
.method private g()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/q/a/a;->a:Lcom/instagram/common/q/c/a;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/common/q/a/a;->a:Lcom/instagram/common/q/c/a;
invoke-interface {v0}, Lcom/instagram/common/q/c/a;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_11
const-string v1, "pi"
invoke-virtual {p0, v1, v0}, Lcom/instagram/common/q/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
:cond_11
return-void
.end method