.class Lcom/twidroid/activity/n$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/n$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/n$1;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/n$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/n$1$2;->a:Lcom/twidroid/activity/n$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/n$1$2;->a:Lcom/twidroid/activity/n$1;

    iget-object v0, v0, Lcom/twidroid/activity/n$1;->a:Lcom/twidroid/activity/n;

    iget-object v0, v0, Lcom/twidroid/activity/n;->c:Lcom/twidroid/activity/OutboxListing;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    return-void
.end method
