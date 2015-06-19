.class final Lcom/bbm/util/x;
.super Ljava/lang/Object;
.source "ChannelJoinUtil.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/bbm/util/u;
.method constructor <init>(Lcom/bbm/util/u;I)V
.registers 3
iput-object p1, p0, Lcom/bbm/util/x;->b:Lcom/bbm/util/u;
iput p2, p0, Lcom/bbm/util/x;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/bbm/util/x;->b:Lcom/bbm/util/u;
iget-object v0, v0, Lcom/bbm/util/u;->d:Landroid/app/Activity;
iget-object v1, p0, Lcom/bbm/util/x;->b:Lcom/bbm/util/u;
iget-object v1, v1, Lcom/bbm/util/u;->d:Landroid/app/Activity;
iget v2, p0, Lcom/bbm/util/x;->a:I
invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;I)V
return-void
.end method