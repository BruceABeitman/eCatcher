.class Lcom/twidroid/net/oauth/RequestTokenActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/oauth/RequestTokenActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/oauth/RequestTokenActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$4;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$4;->a:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-virtual {v0}, Lcom/twidroid/net/oauth/RequestTokenActivity;->finish()V

    return-void
.end method
