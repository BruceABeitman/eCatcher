.class Lcom/twidroid/activity/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twidroid/activity/f;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/f;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/f$3;->b:Lcom/twidroid/activity/f;

    iput-object p2, p0, Lcom/twidroid/activity/f$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/twidroid/activity/d;

    iget-object v1, p0, Lcom/twidroid/activity/f$3;->b:Lcom/twidroid/activity/f;

    iget-object v1, v1, Lcom/twidroid/activity/f;->e:Lcom/twidroid/activity/FollowerRequests;

    iget-object v2, p0, Lcom/twidroid/activity/f$3;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twidroid/activity/d;-><init>(Lcom/twidroid/activity/FollowerRequests;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/d;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
