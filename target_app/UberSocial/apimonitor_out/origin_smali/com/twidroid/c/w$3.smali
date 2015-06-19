.class Lcom/twidroid/c/w$3;
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

    iput-object p1, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    iget-object v0, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->f:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RT @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    iget-object v4, v4, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget v4, v4, Lcom/twidroid/model/twitter/Tweet;->aB:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    iget-object v8, v8, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v8, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    iget-object v8, v8, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "tweet"

    const-string v1, "retweet_with_comment"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/w$3;->a:Lcom/twidroid/c/w;

    invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V

    goto :goto_6
.end method
