.class public Lcom/twidroid/net/c/i;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/net/c/j;)Lcom/twidroid/net/c/j;
    .registers 6

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, v0, Lcom/twidroid/net/c/j;->c:Landroid/app/Activity;

    iget-object v2, v0, Lcom/twidroid/net/c/j;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/twidroid/net/c/j;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/twidroid/net/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twidroid/net/c/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/net/c/j;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/c/i;->a([Lcom/twidroid/net/c/j;)Lcom/twidroid/net/c/j;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method protected a(Lcom/twidroid/net/c/j;)V
    .registers 4

    iget-object v0, p1, Lcom/twidroid/net/c/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/twidroid/net/c/j;->b:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/twidroid/net/c/j;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/twidroid/net/c/j;->e:Lcom/twidroid/net/c/h;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/twidroid/net/c/j;->e:Lcom/twidroid/net/c/h;

    invoke-virtual {v0, p1}, Lcom/twidroid/net/c/h;->a(Lcom/twidroid/net/c/j;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p1, Lcom/twidroid/net/c/j;->c:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    goto :goto_18
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/net/c/j;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/c/i;->a(Lcom/twidroid/net/c/j;)V

    return-void
.end method
