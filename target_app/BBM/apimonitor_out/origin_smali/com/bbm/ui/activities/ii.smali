.class final Lcom/bbm/ui/activities/ii;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lcom/bbm/util/fe;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bbm/ui/activities/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    iput-boolean p2, p0, Lcom/bbm/ui/activities/ii;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aD(Lcom/bbm/ui/activities/ConversationActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->aq(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/PopupWindow;

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ii;->a:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->v(Lcom/bbm/ui/activities/ConversationActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->aE(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->u(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->aF(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->b(Lcom/bbm/ui/activities/ConversationActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;)V

    :cond_40
    iget-object v0, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->r(Lcom/bbm/ui/activities/ConversationActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ii;->b:Lcom/bbm/ui/activities/ConversationActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ConversationActivity;->e:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    return-void
.end method
