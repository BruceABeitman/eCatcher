.class final Lcom/bbm/ui/activities/hj;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/bbm/ui/gi;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/hj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/d/gf;I)V
    .registers 10

    const-string v0, "Sticker clicked"

    const-class v1, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/hj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/hj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    const v2, 0x7f0e02bf

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/bbm/d/gf;->f:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bbm/ui/activities/hj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v5}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/bbm/d/dk;

    invoke-direct {v4, v1, v2, v3}, Lcom/bbm/d/dk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v1

    iget-object v2, p1, Lcom/bbm/d/gf;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/hj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    iget-object v3, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    iget-object v0, p0, Lcom/bbm/ui/activities/hj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/es;

    iget-boolean v6, v0, Lcom/bbm/d/es;->k:Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Lcom/bbm/c/g;

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/bbm/c/g;-><init>(Lcom/bbm/c/c;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;IZ)V

    invoke-virtual {v0}, Lcom/bbm/c/g;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/hj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/hj;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
