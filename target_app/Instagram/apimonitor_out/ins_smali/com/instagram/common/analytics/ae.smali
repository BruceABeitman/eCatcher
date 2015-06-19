.class final Lcom/instagram/common/analytics/ae;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/analytics/x;
.field private final b:Lcom/instagram/common/analytics/b;
.method private constructor <init>(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/instagram/common/analytics/ae;->b:Lcom/instagram/common/analytics/b;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/ae;-><init>(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;)V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/x;
iget-object v1, p0, Lcom/instagram/common/analytics/ae;->b:Lcom/instagram/common/analytics/b;
invoke-static {v0, v1}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;)V
iget-object v0, p0, Lcom/instagram/common/analytics/ae;->b:Lcom/instagram/common/analytics/b;
iget-object v0, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->d(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
move-result-object v0
if-nez v0, :cond_35
iget-object v0, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/x;
iget-object v1, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/x;
invoke-static {v1}, Lcom/instagram/common/analytics/x;->k(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/f;)Lcom/instagram/common/analytics/f;
iget-object v0, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->d(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/f;->a(J)V
iget-object v0, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->h(Lcom/instagram/common/analytics/x;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x1
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_35
iget-object v0, p0, Lcom/instagram/common/analytics/ae;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->d(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/analytics/ae;->b:Lcom/instagram/common/analytics/b;
invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/f;->a(Lcom/instagram/common/analytics/b;)V
return-void
.end method