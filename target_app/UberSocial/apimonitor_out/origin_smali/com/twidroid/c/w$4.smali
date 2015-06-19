.class Lcom/twidroid/c/w$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/w;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/w;


# direct methods
.method constructor <init>(Lcom/twidroid/c/w;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;

    iget-object v1, v1, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->j:Lcom/twidroid/net/c/a/f;

    invoke-static {v0, v1, v2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/a/f;)V

    iget-object v0, p0, Lcom/twidroid/c/w$4;->a:Lcom/twidroid/c/w;

    invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V

    return-void
.end method
