.class Lcom/twidroid/activity/MutedUsers$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/activity/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/MutedUsers$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/MutedUsers$5;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/MutedUsers$5;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$5$1;->a:Lcom/twidroid/activity/MutedUsers$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$5$1;->a:Lcom/twidroid/activity/MutedUsers$5;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers$5;->a:Lcom/twidroid/activity/MutedUsers;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$5$1;->a:Lcom/twidroid/activity/MutedUsers$5;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers$5;->a:Lcom/twidroid/activity/MutedUsers;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
