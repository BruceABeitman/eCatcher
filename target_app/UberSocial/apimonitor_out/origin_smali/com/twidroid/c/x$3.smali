.class Lcom/twidroid/c/x$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/x;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/x;


# direct methods
.method constructor <init>(Lcom/twidroid/c/x;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/x$3;->a:Lcom/twidroid/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/x$3;->a:Lcom/twidroid/c/x;

    iget-object v0, v0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/c/x$3;->a:Lcom/twidroid/c/x;

    iget-object v1, v1, Lcom/twidroid/c/x;->i:Lcom/twidroid/model/twitter/Tweet;

    invoke-static {v0, v1}, Lcom/twidroid/net/c/t;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;)V

    iget-object v0, p0, Lcom/twidroid/c/x$3;->a:Lcom/twidroid/c/x;

    invoke-virtual {v0}, Lcom/twidroid/c/x;->dismiss()V

    return-void
.end method
