.class Lcom/twidroid/c/w$2;
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

    iput-object p1, p0, Lcom/twidroid/c/w$2;->a:Lcom/twidroid/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/w$2;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/twidroid/c/w$2;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->f:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twidroid/c/w$2;->a:Lcom/twidroid/c/w;

    iget-object v1, v1, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    invoke-static {v0, v1}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/Tweet;)V

    const-string v0, "tweet"

    const-string v1, "view_conversation"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/w$2;->a:Lcom/twidroid/c/w;

    invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V

    goto :goto_6
.end method
