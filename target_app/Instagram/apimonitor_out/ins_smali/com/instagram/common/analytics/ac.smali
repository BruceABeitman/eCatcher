.class final Lcom/instagram/common/analytics/ac;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/analytics/x;
.field private final b:Ljava/lang/String;
.method private constructor <init>(Lcom/instagram/common/analytics/x;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/analytics/ac;->a:Lcom/instagram/common/analytics/x;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/instagram/common/analytics/ac;->b:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/common/analytics/x;Ljava/lang/String;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/ac;-><init>(Lcom/instagram/common/analytics/x;Ljava/lang/String;)V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/common/analytics/ac;->a:Lcom/instagram/common/analytics/x;
iget-object v1, p0, Lcom/instagram/common/analytics/ac;->b:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/instagram/common/analytics/x;->b(Lcom/instagram/common/analytics/x;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/common/analytics/ac;->a:Lcom/instagram/common/analytics/x;
invoke-static {v0}, Lcom/instagram/common/analytics/x;->l(Lcom/instagram/common/analytics/x;)V
return-void
.end method