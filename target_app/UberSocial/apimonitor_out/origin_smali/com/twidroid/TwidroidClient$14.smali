.class Lcom/twidroid/TwidroidClient$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$14;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$14;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->o(Lcom/twidroid/TwidroidClient;)Lcom/ubermedia/b/g;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$14;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->o(Lcom/twidroid/TwidroidClient;)Lcom/ubermedia/b/g;

    move-result-object v0

    invoke-static {v0}, Lcom/ubermedia/b/d;->a(Lcom/ubermedia/b/g;)Lcom/ubermedia/b/g;

    :cond_14
    return-void
.end method
