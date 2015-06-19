.class final Lcom/bbm/ui/activities/agx;
.super Landroid/os/Handler;
.source "ShareActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ahc;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bbm/ui/activities/agw;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/agw;Lcom/bbm/ui/activities/ahc;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/agx;->c:Lcom/bbm/ui/activities/agw;

    iput-object p2, p0, Lcom/bbm/ui/activities/agx;->a:Lcom/bbm/ui/activities/ahc;

    iput-object p3, p0, Lcom/bbm/ui/activities/agx;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "partnerApp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/fl;

    const-string v2, "token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/agx;->a:Lcom/bbm/ui/activities/ahc;

    iget-object v3, v3, Lcom/bbm/ui/activities/ahc;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v2

    iget-wide v2, v2, Lcom/bbm/d/gp;->v:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v1, Lcom/bbm/d/fl;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/agx;->b:Ljava/lang/String;

    invoke-static {v1, v2, v4, v0}, Lcom/bbm/util/dm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invoke TPA Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/bbm/ui/activities/ShareActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/agx;->c:Lcom/bbm/ui/activities/agw;

    iget-object v0, v0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/ShareActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/agx;->c:Lcom/bbm/ui/activities/agw;

    iget-object v0, v0, Lcom/bbm/ui/activities/agw;->b:Lcom/bbm/ui/activities/ShareActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ShareActivity;->finish()V

    return-void
.end method
