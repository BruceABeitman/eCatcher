.class Lcom/twidroid/net/oauth/RequestTokenActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/oauth/RequestTokenActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/oauth/RequestTokenActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$5;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$5;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity;->setResult(I)V

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$5;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->finish()V

    return-void
.end method
