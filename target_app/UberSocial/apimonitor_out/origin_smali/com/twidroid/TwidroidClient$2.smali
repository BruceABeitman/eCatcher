.class Lcom/twidroid/TwidroidClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient;->h(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$2;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/TwidroidClient$2;->a:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/TwidroidClient$2;->a:Lcom/twidroid/TwidroidClient;

    const-class v3, Lcom/twidroid/activity/UberBarMaintenance;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
