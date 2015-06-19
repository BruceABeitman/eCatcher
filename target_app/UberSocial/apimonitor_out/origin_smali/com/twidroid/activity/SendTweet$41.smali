.class Lcom/twidroid/activity/SendTweet$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$41;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$41;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    const/16 v1, 0x63

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$41;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->aj:Lcom/twidroid/net/a/b/c;

    invoke-virtual {v0}, Lcom/twidroid/net/a/b/c;->a()V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$41;->a:Lcom/twidroid/activity/SendTweet;

    invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$41;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->M:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_1f
    return-void
.end method
