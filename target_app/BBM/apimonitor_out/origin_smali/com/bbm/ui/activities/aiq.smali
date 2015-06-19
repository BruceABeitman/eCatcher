.class final Lcom/bbm/ui/activities/aiq;
.super Ljava/lang/Object;
.source "ViewChannelActivity.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/bbm/ui/activities/ail;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ail;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/aiq;->b:Lcom/bbm/ui/activities/ail;

    iput-object p2, p0, Lcom/bbm/ui/activities/aiq;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/aiq;->b:Lcom/bbm/ui/activities/ail;

    iget-object v0, v0, Lcom/bbm/ui/activities/ail;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lcom/bbm/ui/activities/aiq;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/activities/aiq;->b:Lcom/bbm/ui/activities/ail;

    iget-object v0, p0, Lcom/bbm/ui/activities/aiq;->b:Lcom/bbm/ui/activities/ail;

    iget-object v0, v0, Lcom/bbm/ui/activities/ail;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    invoke-static {v1, v2, v0}, Lcom/bbm/util/ac;->a(Landroid/content/Intent;Landroid/content/Context;Lcom/bbm/d/ec;)V

    const/4 v0, 0x1

    goto :goto_11
.end method
