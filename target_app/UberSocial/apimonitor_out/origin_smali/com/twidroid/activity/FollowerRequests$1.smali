.class Lcom/twidroid/activity/FollowerRequests$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/FollowerRequests;->e()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/FollowerRequests;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/FollowerRequests;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/FollowerRequests$1;->a:Lcom/twidroid/activity/FollowerRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    new-instance v0, Lcom/twidroid/activity/e;

    iget-object v1, p0, Lcom/twidroid/activity/FollowerRequests$1;->a:Lcom/twidroid/activity/FollowerRequests;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twidroid/activity/e;-><init>(Lcom/twidroid/activity/FollowerRequests;Lcom/twidroid/activity/FollowerRequests$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/e;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
