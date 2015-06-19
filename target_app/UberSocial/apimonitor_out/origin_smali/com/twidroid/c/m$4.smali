.class Lcom/twidroid/c/m$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/m;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/m;


# direct methods
.method constructor <init>(Lcom/twidroid/c/m;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/m$4;->a:Lcom/twidroid/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/c/m$4;->a:Lcom/twidroid/c/m;

    invoke-virtual {v0}, Lcom/twidroid/c/m;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/m$4;->a:Lcom/twidroid/c/m;

    invoke-static {v1}, Lcom/twidroid/c/m;->a(Lcom/twidroid/c/m;)Lcom/twidroid/model/twitter/DirectMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/c/m$4;->a:Lcom/twidroid/c/m;

    invoke-static {v2}, Lcom/twidroid/c/m;->d(Lcom/twidroid/c/m;)Lcom/twidroid/net/c/a/f;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/a/f;)V

    iget-object v0, p0, Lcom/twidroid/c/m$4;->a:Lcom/twidroid/c/m;

    invoke-virtual {v0}, Lcom/twidroid/c/m;->dismiss()V

    return-void
.end method
