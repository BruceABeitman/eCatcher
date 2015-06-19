.class Lcom/twidroid/activity/OutboxListing$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/OutboxListing;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/OutboxListing;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/OutboxListing;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/OutboxListing$2;->a:Lcom/twidroid/activity/OutboxListing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/OutboxListing$2;->a:Lcom/twidroid/activity/OutboxListing;

    invoke-virtual {v0}, Lcom/twidroid/activity/OutboxListing;->finish()V

    return-void
.end method
