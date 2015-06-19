.class Lcom/twidroid/activity/SendTweet$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/SendTweet;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/SendTweet;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/SendTweet;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/SendTweet$38;->a:Lcom/twidroid/activity/SendTweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    const-string v0, "com.twidroid.SendTweet"

    const-string v1, "Dialog was cancelled"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/SendTweet$38;->a:Lcom/twidroid/activity/SendTweet;

    invoke-virtual {v0}, Lcom/twidroid/activity/SendTweet;->finish()V

    return-void
.end method
