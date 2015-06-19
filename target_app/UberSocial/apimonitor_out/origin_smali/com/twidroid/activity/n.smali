.class public Lcom/twidroid/activity/n;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:J

.field final synthetic c:Lcom/twidroid/activity/OutboxListing;


# direct methods
.method public constructor <init>(Lcom/twidroid/activity/OutboxListing;Landroid/content/Context;J)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/twidroid/activity/n;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/twidroid/activity/n;->b:J

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/n;->setContentView(I)V

    iget-object v0, p0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;

    const v1, 0x7f0c010c

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/OutboxListing;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/n;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStart()V
    .registers 3

    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/activity/n$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/n$1;-><init>(Lcom/twidroid/activity/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
