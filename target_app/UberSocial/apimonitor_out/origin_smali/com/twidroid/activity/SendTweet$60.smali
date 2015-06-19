.class Lcom/twidroid/activity/SendTweet$60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/n;

.field final synthetic b:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/c/n;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$60;->b:Lcom/twidroid/activity/SendTweet;

    iput-object p2, p0, Lcom/twidroid/activity/SendTweet$60;->a:Lcom/twidroid/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$60;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/activity/SendTweet$60;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v2, v2, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$60;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$60;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v1, v1, Lcom/twidroid/activity/SendTweet;->J:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$60;->a:Lcom/twidroid/c/n;

    invoke-virtual {v0}, Lcom/twidroid/c/n;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$60;->b:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twidroid/activity/SendTweet;->U:Z

    return-void
.end method
