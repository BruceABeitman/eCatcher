.class Lcom/twidroid/TwidroidClient$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$18;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$18;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->finish()V

    return-void
.end method
