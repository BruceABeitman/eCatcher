.class final Lcom/bbm/ui/activities/hh;
.super Lcom/bbm/j/a;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/hh;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/hh;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/bbm/ui/activities/hh;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_45

    iget-object v1, p0, Lcom/bbm/ui/activities/hh;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_45

    iget-boolean v0, v0, Lcom/bbm/d/gp;->l:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_44
    return-object v0

    :cond_45
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_44
.end method
