.class final Lcom/bbm/ui/activities/nq;
.super Lcom/bbm/d/b/f;
.source "GroupEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/g/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupEventsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupEventsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/nq;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/g/s;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/nq;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/g/am;->m(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v2

    invoke-interface {v2}, Lcom/bbm/j/w;->b()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v0, v1

    :goto_19
    return-object v0

    :cond_1a
    iget-object v3, p0, Lcom/bbm/ui/activities/nq;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/GroupEventsActivity;->g(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/bbm/ui/activities/nq;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/GroupEventsActivity;->h(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/bbm/ui/activities/nq;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/GroupEventsActivity;->g(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/activities/nq;->a:Lcom/bbm/ui/activities/GroupEventsActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/GroupEventsActivity;->h(Lcom/bbm/ui/activities/GroupEventsActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_3e
    :goto_3e
    invoke-interface {v2}, Lcom/bbm/j/w;->d()I

    move-result v3

    if-ge v0, v3, :cond_4e

    invoke-interface {v2, v0}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4e
    new-instance v0, Lcom/bbm/ui/activities/nr;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/nr;-><init>(Lcom/bbm/ui/activities/nq;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    goto :goto_19
.end method