.class final Lcom/instagram/common/analytics/ai;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/analytics/x;
.method private constructor <init>(Lcom/instagram/common/analytics/x;)V
.registers 2
iput-object p1, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/analytics/x;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/ai;-><init>(Lcom/instagram/common/analytics/x;)V
return-void
.end method
.method public final run()V
.registers 2
invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/l/b/b;->b()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->i(Lcom/instagram/common/analytics/x;)V
iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->f(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/j;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/j;->a()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/instagram/common/analytics/ai;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->n(Lcom/instagram/common/analytics/x;)V
:cond_20
return-void
.end method