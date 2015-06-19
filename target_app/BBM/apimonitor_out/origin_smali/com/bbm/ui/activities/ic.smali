.class final Lcom/bbm/ui/activities/ic;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/d/fl;

.field final synthetic b:Lcom/bbm/ui/activities/ib;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ib;Lcom/bbm/d/fl;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;

    iput-object p2, p0, Lcom/bbm/ui/activities/ic;->a:Lcom/bbm/d/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;

    iget-object v0, v0, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/bbm/Alaska;->a()Lcom/bbm/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;

    iget-object v1, v1, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->aB(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/util/dm;->a(Lcom/bbm/util/cr;)Lcom/bbm/f/ac;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;

    iget-object v0, v0, Lcom/bbm/ui/activities/ib;->b:Lcom/bbm/d/gp;

    iget-wide v0, v0, Lcom/bbm/d/gp;->v:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ic;->b:Lcom/bbm/ui/activities/ib;

    iget-object v1, v1, Lcom/bbm/ui/activities/ib;->c:Lcom/bbm/d/gp;

    iget-wide v1, v1, Lcom/bbm/d/gp;->v:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/ic;->a:Lcom/bbm/d/fl;

    iget-object v2, v2, Lcom/bbm/d/fl;->a:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    invoke-static {v2}, Lcom/bbm/d/z;->d(Ljava/lang/String;)Lcom/bbm/d/br;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/d/br;->a(Ljava/lang/String;)Lcom/bbm/d/br;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    new-instance v0, Lcom/bbm/ui/activities/id;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/id;-><init>(Lcom/bbm/ui/activities/ic;)V

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method
