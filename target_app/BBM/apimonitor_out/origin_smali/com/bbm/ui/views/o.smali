.class final Lcom/bbm/ui/views/o;
.super Ljava/lang/Object;
.source "ChannelPostCommentListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/views/ChannelPostCommentListView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/views/ChannelPostCommentListView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/views/o;->a:Lcom/bbm/ui/views/ChannelPostCommentListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/views/o;->a:Lcom/bbm/ui/views/ChannelPostCommentListView;

    invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelPostCommentListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget v0, v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e:I

    const-string v1, "sammydm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSizeChanged, setSelection to position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/bbm/ui/views/o;->a:Lcom/bbm/ui/views/ChannelPostCommentListView;

    invoke-virtual {v1, v0, v4}, Lcom/bbm/ui/views/ChannelPostCommentListView;->setSelectionFromTop(II)V

    iget-object v0, p0, Lcom/bbm/ui/views/o;->a:Lcom/bbm/ui/views/ChannelPostCommentListView;

    iput-boolean v4, v0, Lcom/bbm/ui/views/ChannelPostCommentListView;->a:Z

    return-void
.end method
