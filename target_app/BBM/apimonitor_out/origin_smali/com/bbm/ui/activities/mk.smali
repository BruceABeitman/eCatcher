.class final Lcom/bbm/ui/activities/mk;
.super Lcom/bbm/util/d/d;
.source "GroupConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/g/o;

.field final synthetic b:Lcom/bbm/g/ad;

.field final synthetic c:Lcom/bbm/ui/activities/mj;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/mj;Lcom/bbm/g/o;Lcom/bbm/d/a;Lcom/bbm/g/o;Lcom/bbm/g/ad;)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iput-object p4, p0, Lcom/bbm/ui/activities/mk;->a:Lcom/bbm/g/o;

    iput-object p5, p0, Lcom/bbm/ui/activities/mk;->b:Lcom/bbm/g/ad;

    invoke-direct {p0, p2, p3}, Lcom/bbm/util/d/d;-><init>(Lcom/bbm/g/o;Lcom/bbm/d/a;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/b/a/l;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/d/gp;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iget-object v0, v0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->r(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;

    move-result-object v0

    instance-of v0, v0, Lcom/bbm/ui/LinkifyTextView;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iget-object v0, v0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->r(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    iget-boolean v0, v0, Lcom/bbm/ui/LinkifyTextView;->a:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iget-object v0, v0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->r(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/LinkifyTextView;->setSpanClicked(Z)V

    :cond_29
    iget-object v0, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iget-object v0, v0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupConversationActivity;->b(Lcom/bbm/ui/activities/GroupConversationActivity;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/mk;->a:Lcom/bbm/g/o;

    invoke-static {p1, v0}, Lcom/bbm/d/b/a;->a(Lcom/google/b/a/l;Lcom/bbm/g/o;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iget-object v1, v1, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iget-object v2, v2, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    iget-object v3, p0, Lcom/bbm/ui/activities/mk;->b:Lcom/bbm/g/ad;

    iget-object v3, v3, Lcom/bbm/g/ad;->b:Ljava/lang/String;

    new-instance v4, Lcom/bbm/ui/slidingmenu/a;

    invoke-direct {v4, v8, v0, v3}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/bbm/ui/slidingmenu/a;

    const v6, 0x7f020266

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f0e0287

    invoke-virtual {v1, v7}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0, v8, v8}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    invoke-virtual {v2, v4}, Lcom/bbm/ui/c/fm;->b(Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v0, Lcom/bbm/ui/activities/mq;

    invoke-direct {v0, v1, v3}, Lcom/bbm/ui/activities/mq;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;Ljava/lang/String;)V

    iput-object v0, v2, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    iget-object v0, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iget-object v0, v0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/EmoticonInputPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/mk;->c:Lcom/bbm/ui/activities/mj;

    iget-object v0, v0, Lcom/bbm/ui/activities/mj;->a:Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->o()V

    return-void
.end method
