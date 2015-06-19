.class final Lcom/bbm/ui/activities/ib;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/views/QuickActionAttachmentsView;

.field final synthetic b:Lcom/bbm/d/gp;

.field final synthetic c:Lcom/bbm/d/gp;

.field final synthetic d:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/ui/views/QuickActionAttachmentsView;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/ib;->a:Lcom/bbm/ui/views/QuickActionAttachmentsView;

    iput-object p3, p0, Lcom/bbm/ui/activities/ib;->b:Lcom/bbm/d/gp;

    iput-object p4, p0, Lcom/bbm/ui/activities/ib;->c:Lcom/bbm/d/gp;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 9

    iget-object v0, p0, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aA(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/b/f;->f()Ljava/util/List;

    iget-object v0, p0, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->m(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->m(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_53

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/ib;->d:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->m(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fl;

    iget-object v3, p0, Lcom/bbm/ui/activities/ib;->a:Lcom/bbm/ui/views/QuickActionAttachmentsView;

    new-instance v4, Lcom/bbm/ui/views/w;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/fl;)Lcom/bbm/j/r;

    move-result-object v5

    iget-object v6, v0, Lcom/bbm/d/fl;->c:Ljava/lang/String;

    new-instance v7, Lcom/bbm/ui/activities/ic;

    invoke-direct {v7, p0, v0}, Lcom/bbm/ui/activities/ic;-><init>(Lcom/bbm/ui/activities/ib;Lcom/bbm/d/fl;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/bbm/ui/views/w;-><init>(Lcom/bbm/j/r;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Lcom/bbm/ui/views/QuickActionAttachmentsView;->a(Lcom/bbm/ui/views/w;)V

    goto :goto_31

    :cond_53
    const/4 v0, 0x1

    goto :goto_16
.end method
