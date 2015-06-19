.class public Lcom/twidroid/net/c/x;
.super Lcom/twidroid/net/c/a/e;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/net/c/a/e;-><init>()V

    const-string v0, "UnFollowTask"

    iput-object v0, p0, Lcom/twidroid/net/c/x;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/net/c/a/b;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/c/x;->a([Lcom/twidroid/net/c/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Lcom/twidroid/net/c/a/b;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/twidroid/net/c/a/d;

    :try_start_6
    iget-object v1, v0, Lcom/twidroid/net/c/a/d;->b:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    iget-object v2, v0, Lcom/twidroid/net/c/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->c(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    iget-object v1, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    const v5, 0x7f0c0177

    invoke-interface {v4, v5}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/twidroid/net/c/a/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/twidroid/net/c/a/f;->c(ILjava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-object v6

    :catch_48
    move-exception v0

    const-string v1, "UnFollowTask EXCEPTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    const v1, 0x7f0c0027

    const v2, 0x7f0c0028

    invoke-interface {v0, v1, v2, v6}, Lcom/twidroid/net/c/a/f;->a(IILjava/lang/String;)V

    :cond_74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/net/c/x;->b(Z)Z

    goto :goto_47
.end method

.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/twidroid/net/c/a/f;->b(ILjava/lang/String;)V

    :cond_b
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/c/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V

    :cond_9
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->d(I)V

    :cond_10
    return-void
.end method

.method protected synthetic a_([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/c/x;->a([Ljava/lang/Integer;)V

    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/net/c/x;->h:Lcom/twidroid/net/c/a/f;

    invoke-interface {v0}, Lcom/twidroid/net/c/a/f;->r()V

    :cond_9
    return-void
.end method
