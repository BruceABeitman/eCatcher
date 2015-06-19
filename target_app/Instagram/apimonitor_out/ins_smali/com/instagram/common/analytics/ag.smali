.class final Lcom/instagram/common/analytics/ag;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/analytics/x;
.method private constructor <init>(Lcom/instagram/common/analytics/x;)V
.registers 2
iput-object p1, p0, Lcom/instagram/common/analytics/ag;->a:Lcom/instagram/common/analytics/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/analytics/x;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/ag;-><init>(Lcom/instagram/common/analytics/x;)V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/ag;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->m(Lcom/instagram/common/analytics/x;)V
return-void
.end method