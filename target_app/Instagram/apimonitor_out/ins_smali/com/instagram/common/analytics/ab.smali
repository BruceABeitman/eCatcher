.class final Lcom/instagram/common/analytics/ab;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/analytics/x;
.field private b:Lcom/instagram/common/analytics/b;
.method private constructor <init>(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/analytics/ab;->a:Lcom/instagram/common/analytics/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/instagram/common/analytics/ab;->b:Lcom/instagram/common/analytics/b;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/ab;-><init>(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;)V
return-void
.end method
.method public final run()V
.registers 5
const/4 v3, 0x2
iget-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Lcom/instagram/common/analytics/x;
iget-object v1, p0, Lcom/instagram/common/analytics/ab;->b:Lcom/instagram/common/analytics/b;
invoke-static {v0, v1}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;)V
iget-object v0, p0, Lcom/instagram/common/analytics/ab;->b:Lcom/instagram/common/analytics/b;
iget-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->g(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/analytics/ab;->b:Lcom/instagram/common/analytics/b;
invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/f;->a(Lcom/instagram/common/analytics/b;)V
iget-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->h(Lcom/instagram/common/analytics/x;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->g(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/f;->b()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/16 v1, 0x32
if-lt v0, v1, :cond_45
iget-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->i(Lcom/instagram/common/analytics/x;)V
:goto_35
invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/l/b/b;->b()Z
move-result v0
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->j(Lcom/instagram/common/analytics/x;)V
:cond_44
return-void
:cond_45
iget-object v0, p0, Lcom/instagram/common/analytics/ab;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->h(Lcom/instagram/common/analytics/x;)Landroid/os/Handler;
move-result-object v0
const-wide/16 v1, 0x3a98
invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_35
.end method