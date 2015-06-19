.class final Lcom/bbm/ui/activities/fi;
.super Landroid/os/Handler;
.source "ConversationActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bbm/d/fl;

    iget-object v1, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->t(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "appMessage"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->t(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "customMessage"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v3, v1}, Lcom/bbm/ui/activities/ConversationActivity;->b(Lcom/bbm/ui/activities/ConversationActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    new-instance v4, Lcom/bbm/ui/AttachmentView;

    iget-object v5, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {v4, v5}, Lcom/bbm/ui/AttachmentView;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/ui/AttachmentView;)Lcom/bbm/ui/AttachmentView;

    iget-object v3, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bbm/ui/AttachmentView;->setPrimaryText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v3, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/fl;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/j/r;)Lcom/bbm/j/r;

    iget-object v0, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->u(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->v(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_86
    iget-object v0, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/activities/fj;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/fj;-><init>(Lcom/bbm/ui/activities/fi;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/AttachmentView;->setCancelButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/fi;->a:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->r(Lcom/bbm/ui/activities/ConversationActivity;)V

    return-void
.end method
