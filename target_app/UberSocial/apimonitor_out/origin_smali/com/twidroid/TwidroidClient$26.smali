.class Lcom/twidroid/TwidroidClient$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$26;->b:Lcom/twidroid/TwidroidClient;

    iput-object p2, p0, Lcom/twidroid/TwidroidClient$26;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$26;->b:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/TwidroidClient$26;->b:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v2}, Lcom/twidroid/TwidroidClient;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/twidroid/activity/StreamingPreferences;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$26;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$26;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
