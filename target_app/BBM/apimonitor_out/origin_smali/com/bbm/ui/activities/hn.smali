.class final Lcom/bbm/ui/activities/hn;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->X(Lcom/bbm/ui/activities/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eq p2, v3, :cond_e

    if-ne p2, v2, :cond_1d

    :cond_e
    iget-object v0, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_75

    iget-object v0, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_75

    iget-object v0, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getTranscriptMode()I

    move-result v0

    if-eq v0, v3, :cond_74

    iget-object v0, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    :cond_74
    :goto_74
    return-void

    :cond_75
    iget-object v0, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getTranscriptMode()I

    move-result v0

    if-eq v0, v2, :cond_74

    iget-object v0, p0, Lcom/bbm/ui/activities/hn;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->y(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_74
.end method
