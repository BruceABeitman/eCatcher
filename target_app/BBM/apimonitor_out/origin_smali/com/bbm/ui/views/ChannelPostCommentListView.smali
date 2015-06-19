.class public Lcom/bbm/ui/views/ChannelPostCommentListView;
.super Landroid/widget/ListView;
.source "ChannelPostCommentListView.java"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 8

    const-string v0, "sammydm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSizeChanged, oldh: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScrollOnSizeChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bbm/ui/views/ChannelPostCommentListView;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/bbm/ui/views/ChannelPostCommentListView;->a:Z

    if-eqz v0, :cond_49

    if-le p4, p2, :cond_49

    invoke-virtual {p0}, Lcom/bbm/ui/views/ChannelPostCommentListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    invoke-virtual {v0}, Lcom/bbm/ui/a/k;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/bbm/ui/views/ChannelPostCommentListView;->clearFocus()V

    new-instance v0, Lcom/bbm/ui/views/o;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/o;-><init>(Lcom/bbm/ui/views/ChannelPostCommentListView;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelPostCommentListView;->post(Ljava/lang/Runnable;)Z

    :cond_49
    return-void
.end method
