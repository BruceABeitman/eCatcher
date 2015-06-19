.class Lcom/twidroid/activity/MutedUsers$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/MutedUsers;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/MutedUsers;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/MutedUsers;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$10;->a:Lcom/twidroid/activity/MutedUsers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$10;->a:Lcom/twidroid/activity/MutedUsers;

    invoke-virtual {v0}, Lcom/twidroid/activity/MutedUsers;->i()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/twidroid/activity/MutedUsers$10;->a:Lcom/twidroid/activity/MutedUsers;

    iget-object v1, v1, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/a;

    iget-object v0, v0, Lcom/twidroid/model/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/twidroid/activity/MutedUsers$10;->a:Lcom/twidroid/activity/MutedUsers;

    const/4 v2, -0x1

    const-string v3, "mute screen"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/twidroid/activity/MutedUsers;->a(Ljava/lang/String;ILjava/lang/String;Lcom/twidroid/activity/aa;)V

    return-void
.end method
