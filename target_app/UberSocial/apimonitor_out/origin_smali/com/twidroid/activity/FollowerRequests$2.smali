.class Lcom/twidroid/activity/FollowerRequests$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/FollowerRequests;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/FollowerRequests;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/FollowerRequests;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/FollowerRequests$2;->a:Lcom/twidroid/activity/FollowerRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    :try_start_0
    iget-object v1, p0, Lcom/twidroid/activity/FollowerRequests$2;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests$2;->a:Lcom/twidroid/activity/FollowerRequests;

    invoke-virtual {v0}, Lcom/twidroid/activity/FollowerRequests;->i()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    iget-object v0, v0, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/twidroid/activity/FollowerRequests;->ab:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests$2;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v1, p0, Lcom/twidroid/activity/FollowerRequests$2;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v1, v1, Lcom/twidroid/activity/FollowerRequests;->ab:Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/activity/FollowerRequests$2;->a:Lcom/twidroid/activity/FollowerRequests;

    iget-object v2, v2, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method
