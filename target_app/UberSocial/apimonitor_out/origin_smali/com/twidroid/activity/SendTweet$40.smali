.class Lcom/twidroid/activity/SendTweet$40;
.super Lcom/twidroid/c/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0, p2}, Lcom/twidroid/c/k;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_81

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v4, v4, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v4}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->c()V

    :goto_80
    return-void

    :cond_81
    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$40;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getSelectionStart()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/twidroid/d/u;->a(Lcom/twidroid/ui/widgets/MyEditText;Ljava/lang/String;I)V

    goto :goto_80
.end method
