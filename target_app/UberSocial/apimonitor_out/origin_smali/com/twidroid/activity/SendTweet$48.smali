.class Lcom/twidroid/activity/SendTweet$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$48;->b:Lcom/twidroid/activity/SendTweet;

    iput-object p2, p0, Lcom/twidroid/activity/SendTweet$48;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$48;->b:Lcom/twidroid/activity/SendTweet;

    iget-object v1, p0, Lcom/twidroid/activity/SendTweet$48;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Landroid/view/View;)V

    return-void
.end method
