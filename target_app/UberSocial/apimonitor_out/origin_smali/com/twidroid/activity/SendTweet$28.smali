.class Lcom/twidroid/activity/SendTweet$28;
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

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$28;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$28;->a:Lcom/twidroid/activity/SendTweet;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/twidroid/activity/SendTweet;->ai:Z

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$28;->a:Lcom/twidroid/activity/SendTweet;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$28;->a:Lcom/twidroid/activity/SendTweet;

    iget-boolean v1, v1, Lcom/twidroid/activity/SendTweet;->ai:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/twidroid/activity/SendTweet;->a(ZZZ)V

    return-void
.end method
