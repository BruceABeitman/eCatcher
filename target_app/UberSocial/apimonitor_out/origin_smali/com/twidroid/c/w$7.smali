.class Lcom/twidroid/c/w$7;
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

    iput-object p1, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v0, "tweet"

    const-string v1, "reply"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->ao:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_79

    iget-object v0, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->f:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J

    iget-object v4, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v4, v4, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget v4, v4, Lcom/twidroid/model/twitter/Tweet;->aB:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v8, v8, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v8, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v8, v8, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V

    :goto_73
    iget-object v0, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    invoke-virtual {v0}, Lcom/twidroid/c/w;->dismiss()V

    goto :goto_8

    :cond_79
    iget-object v0, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v0, v0, Lcom/twidroid/c/w;->f:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v2, v2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v2, v2, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/Tweet;->x:J

    iget-object v4, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v4, v4, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget v4, v4, Lcom/twidroid/model/twitter/Tweet;->aB:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v8, v8, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-object v8, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/twidroid/c/w$7;->a:Lcom/twidroid/c/w;

    iget-object v8, v8, Lcom/twidroid/c/w;->i:Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_73
.end method
