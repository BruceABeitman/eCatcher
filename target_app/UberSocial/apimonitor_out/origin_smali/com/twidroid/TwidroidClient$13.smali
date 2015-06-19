.class Lcom/twidroid/TwidroidClient$13;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->V()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient$13;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bj()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bo()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bn()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/net/a/d;->a(Landroid/app/Activity;)Z

    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient$13;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bj()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v0}, Lcom/twidroid/TwidroidClient;->finish()V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/TwidroidClient$13;->a:Lcom/twidroid/TwidroidClient;

    const-class v3, Lcom/twidroid/activity/MobileViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    :cond_22
    return-void
.end method
