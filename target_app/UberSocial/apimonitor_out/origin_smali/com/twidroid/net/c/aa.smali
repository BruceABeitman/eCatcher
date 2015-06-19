.class public Lcom/twidroid/net/c/aa;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/twidroid/net/c/z;


# direct methods
.method private constructor <init>(Lcom/twidroid/net/c/z;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/c/aa;->b:Lcom/twidroid/net/c/z;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/net/c/z;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/c/aa;->b:Lcom/twidroid/net/c/z;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object p2, p0, Lcom/twidroid/net/c/aa;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
    .registers 6

    const/4 v3, 0x0

    const-string v0, "UserImageLoaderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing ImageLoader for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/twidroid/e/b;->a()Lcom/twidroid/e/b;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/twidroid/e/b;->a(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    if-nez v0, :cond_41

    :try_start_27
    iget-object v1, p0, Lcom/twidroid/net/c/aa;->b:Lcom/twidroid/net/c/z;

    iget-object v1, v1, Lcom/twidroid/net/c/z;->a:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/twidroid/net/a/c/c;->k(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_39} :catch_42

    move-result-object v0

    :goto_3a
    invoke-static {}, Lcom/twidroid/e/b;->a()Lcom/twidroid/e/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/e/b;->a(Lcom/twidroid/model/twitter/User;)V

    :cond_41
    return-object v0

    :catch_42
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/c/aa;->a([Ljava/lang/String;)Lcom/twidroid/model/twitter/User;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twidroid/model/twitter/User;)V
    .registers 9

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/net/c/aa;->a:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/twidroid/model/twitter/User;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/twidroid/net/c/aa;->b:Lcom/twidroid/net/c/z;

    iget v4, v4, Lcom/twidroid/net/c/z;->b:I

    iget-object v5, p0, Lcom/twidroid/net/c/aa;->b:Lcom/twidroid/net/c/z;

    iget-boolean v5, v5, Lcom/twidroid/net/c/z;->d:Z

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZ)Z

    goto :goto_9
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/twidroid/model/twitter/User;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/c/aa;->a(Lcom/twidroid/model/twitter/User;)V

    return-void
.end method
