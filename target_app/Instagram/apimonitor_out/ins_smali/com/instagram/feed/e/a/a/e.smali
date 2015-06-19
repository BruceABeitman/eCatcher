.class final Lcom/instagram/feed/e/a/a/e;
.super Ljava/lang/Object;
.source "FeedAYSFBannerRowViewBinder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/common/analytics/e;
.field final synthetic b:Lcom/instagram/user/d/a;
.field final synthetic c:I
.field final synthetic d:Lcom/instagram/feed/e/a/a/h;
.field final synthetic e:Lcom/instagram/feed/e/a/a/g;
.field final synthetic f:Landroid/support/v4/app/an;
.field final synthetic g:Lcom/instagram/feed/f/c;
.field final synthetic h:Lcom/instagram/feed/e/a;
.method constructor <init>(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;ILcom/instagram/feed/e/a/a/h;Lcom/instagram/feed/e/a/a/g;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;Lcom/instagram/feed/e/a;)V
.registers 9
iput-object p1, p0, Lcom/instagram/feed/e/a/a/e;->a:Lcom/instagram/common/analytics/e;
iput-object p2, p0, Lcom/instagram/feed/e/a/a/e;->b:Lcom/instagram/user/d/a;
iput p3, p0, Lcom/instagram/feed/e/a/a/e;->c:I
iput-object p4, p0, Lcom/instagram/feed/e/a/a/e;->d:Lcom/instagram/feed/e/a/a/h;
iput-object p5, p0, Lcom/instagram/feed/e/a/a/e;->e:Lcom/instagram/feed/e/a/a/g;
iput-object p6, p0, Lcom/instagram/feed/e/a/a/e;->f:Landroid/support/v4/app/an;
iput-object p7, p0, Lcom/instagram/feed/e/a/a/e;->g:Lcom/instagram/feed/f/c;
iput-object p8, p0, Lcom/instagram/feed/e/a/a/e;->h:Lcom/instagram/feed/e/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/feed/e/a/a/e; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/feed/e/a/a/e;->a:Lcom/instagram/common/analytics/e;
iget-object v1, p0, Lcom/instagram/feed/e/a/a/e;->b:Lcom/instagram/user/d/a;
iget v2, p0, Lcom/instagram/feed/e/a/a/e;->c:I
invoke-static {v0, v1, v2}, Lcom/instagram/user/d/b;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/user/d/a;I)V
iget-object v0, p0, Lcom/instagram/feed/e/a/a/e;->d:Lcom/instagram/feed/e/a/a/h;
invoke-static {v0}, Lcom/instagram/feed/e/a/a/h;->b(Lcom/instagram/feed/e/a/a/h;)Landroid/view/View;
move-result-object v7
iget-object v0, p0, Lcom/instagram/feed/e/a/a/e;->a:Lcom/instagram/common/analytics/e;
iget-object v1, p0, Lcom/instagram/feed/e/a/a/e;->e:Lcom/instagram/feed/e/a/a/g;
iget-object v2, p0, Lcom/instagram/feed/e/a/a/e;->d:Lcom/instagram/feed/e/a/a/h;
iget-object v3, p0, Lcom/instagram/feed/e/a/a/e;->f:Landroid/support/v4/app/an;
iget-object v4, p0, Lcom/instagram/feed/e/a/a/e;->g:Lcom/instagram/feed/f/c;
iget v5, p0, Lcom/instagram/feed/e/a/a/e;->c:I
iget-object v6, p0, Lcom/instagram/feed/e/a/a/e;->h:Lcom/instagram/feed/e/a;
invoke-static/range {v0 .. v6}, Lcom/instagram/feed/e/a/a/a;->a(Lcom/instagram/common/analytics/e;Lcom/instagram/feed/e/a/a/g;Lcom/instagram/feed/e/a/a/h;Landroid/support/v4/app/an;Lcom/instagram/feed/f/c;ILcom/instagram/feed/e/a;)Landroid/view/animation/Animation;
move-result-object v0
invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
const-string v1, " - Lcom/instagram/feed/e/a/a/e; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method