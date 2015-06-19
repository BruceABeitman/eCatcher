.class Lcom/twidroid/c/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twidroid/c/x;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/twidroid/c/x;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/z;->a:Lcom/twidroid/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/c/z;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twidroid/c/z;->a:Lcom/twidroid/c/x;

    invoke-virtual {v0}, Lcom/twidroid/c/x;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/c/z;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/twidroid/c/z;->a:Lcom/twidroid/c/x;

    iget-object v0, v0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/c/z;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/z;->a:Lcom/twidroid/c/x;

    iget-object v2, v2, Lcom/twidroid/c/x;->i:Lcom/twidroid/model/twitter/Tweet;

    iget v2, v2, Lcom/twidroid/model/twitter/Tweet;->aB:I

    invoke-static {v0, v1, v2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "tweetdialog"

    const-string v1, "open_profile"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/z;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/c/z;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/c/z;->a:Lcom/twidroid/c/x;

    invoke-virtual {v0}, Lcom/twidroid/c/x;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/z;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twidroid/d/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "tweetdialog"

    const-string v1, "open_list"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method
