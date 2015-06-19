.class Lcom/twidroid/activity/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/f;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/f$1;->a:Lcom/twidroid/activity/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/activity/f$1;->a:Lcom/twidroid/activity/f;

    iget-object v0, v0, Lcom/twidroid/activity/f;->e:Lcom/twidroid/activity/FollowerRequests;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/activity/f$1;->a:Lcom/twidroid/activity/f;

    iget-object v2, v2, Lcom/twidroid/activity/f;->e:Lcom/twidroid/activity/FollowerRequests;

    const-class v3, Lcom/twidroid/UberSocialProfile;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://twitter.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/FollowerRequests;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
