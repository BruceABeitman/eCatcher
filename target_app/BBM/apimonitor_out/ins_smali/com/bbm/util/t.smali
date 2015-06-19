.class final Lcom/bbm/util/t;
.super Ljava/lang/Object;
.source "ChannelJoinUtil.java"
.implements Lcom/bbm/ui/b/f;
.field final synthetic a:Lcom/bbm/d/ec;
.field final synthetic b:Landroid/app/Activity;
.field final synthetic c:Landroid/widget/ImageView;
.field final synthetic d:Lcom/bbm/d/az;
.field final synthetic e:Lcom/bbm/ui/b/a;
.method constructor <init>(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;Lcom/bbm/ui/b/a;)V
.registers 6
iput-object p1, p0, Lcom/bbm/util/t;->a:Lcom/bbm/d/ec;
iput-object p2, p0, Lcom/bbm/util/t;->b:Landroid/app/Activity;
iput-object p3, p0, Lcom/bbm/util/t;->c:Landroid/widget/ImageView;
iput-object p4, p0, Lcom/bbm/util/t;->d:Lcom/bbm/d/az;
iput-object p5, p0, Lcom/bbm/util/t;->e:Lcom/bbm/ui/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/util/t;->a:Lcom/bbm/d/ec;
iget-object v1, p0, Lcom/bbm/util/t;->b:Landroid/app/Activity;
iget-object v2, p0, Lcom/bbm/util/t;->c:Landroid/widget/ImageView;
iget-object v3, p0, Lcom/bbm/util/t;->d:Lcom/bbm/d/az;
invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/s;->b(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/bbm/d/az;)V
iget-object v0, p0, Lcom/bbm/util/t;->e:Lcom/bbm/ui/b/a;
invoke-virtual {v0}, Lcom/bbm/ui/b/a;->dismiss()V
return-void
.end method