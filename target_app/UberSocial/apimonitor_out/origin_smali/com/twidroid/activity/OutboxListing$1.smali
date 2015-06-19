.class Lcom/twidroid/activity/OutboxListing$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/OutboxListing;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/OutboxListing;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/OutboxListing;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/OutboxListing$1;->a:Lcom/twidroid/activity/OutboxListing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    new-instance v0, Lcom/twidroid/activity/n;

    iget-object v1, p0, Lcom/twidroid/activity/OutboxListing$1;->a:Lcom/twidroid/activity/OutboxListing;

    iget-object v2, p0, Lcom/twidroid/activity/OutboxListing$1;->a:Lcom/twidroid/activity/OutboxListing;

    invoke-direct {v0, v1, v2, p4, p5}, Lcom/twidroid/activity/n;-><init>(Lcom/twidroid/activity/OutboxListing;Landroid/content/Context;J)V

    invoke-virtual {v0}, Lcom/twidroid/activity/n;->show()V

    return-void
.end method
