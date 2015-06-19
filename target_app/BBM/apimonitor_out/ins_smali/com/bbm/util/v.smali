.class final Lcom/bbm/util/v;
.super Ljava/lang/Object;
.source "ChannelJoinUtil.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/util/u;
.method constructor <init>(Lcom/bbm/util/u;)V
.registers 2
iput-object p1, p0, Lcom/bbm/util/v;->a:Lcom/bbm/util/u;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
iget-object v0, p0, Lcom/bbm/util/v;->a:Lcom/bbm/util/u;
iget-object v0, v0, Lcom/bbm/util/u;->d:Landroid/app/Activity;
iget-object v1, p0, Lcom/bbm/util/v;->a:Lcom/bbm/util/u;
iget-object v1, v1, Lcom/bbm/util/u;->d:Landroid/app/Activity;
const v2, 0x7f0e0645
invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/bbm/util/v;->a:Lcom/bbm/util/u;
iget-object v4, v4, Lcom/bbm/util/u;->a:Lcom/bbm/d/ec;
iget-object v4, v4, Lcom/bbm/d/ec;->k:Ljava/lang/String;
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/util/v;->a:Lcom/bbm/util/u;
iget-object v2, v2, Lcom/bbm/util/u;->d:Landroid/app/Activity;
const v3, 0x7f0e0646
invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/bbm/util/w;
invoke-direct {v3, p0}, Lcom/bbm/util/w;-><init>(Lcom/bbm/util/v;)V
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
return-void
.end method