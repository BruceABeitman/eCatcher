.class Lcom/twidroid/fragments/c;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/b;


# direct methods
.method private constructor <init>(Lcom/twidroid/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/c;->a:Lcom/twidroid/fragments/b;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/fragments/b;Lcom/twidroid/fragments/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/c;-><init>(Lcom/twidroid/fragments/b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    const/4 v6, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/twidroid/fragments/c;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iget-object v1, p0, Lcom/twidroid/fragments/c;->a:Lcom/twidroid/fragments/b;

    iget-object v1, v1, Lcom/twidroid/fragments/b;->e:Lcom/twidroid/model/twitter/DirectMessage;

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/c;

    iget-object v2, p0, Lcom/twidroid/fragments/c;->a:Lcom/twidroid/fragments/b;

    iget-object v2, v2, Lcom/twidroid/fragments/b;->e:Lcom/twidroid/model/twitter/DirectMessage;

    iget-wide v2, v2, Lcom/twidroid/model/twitter/DirectMessage;->D:J

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_41
    return-object v0

    :cond_42
    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twidroid/fragments/c;->a:Lcom/twidroid/fragments/b;

    iget-object v5, v5, Lcom/twidroid/fragments/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4e

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_41

    :cond_79
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7d} :catch_7f

    move-result-object v0

    goto :goto_41

    :catch_7f
    move-exception v0

    const-string v1, "SingleDirectMessageFragment"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_41
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/c;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_13

    iget-object v0, p0, Lcom/twidroid/fragments/c;->a:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountByAccountId(J)V

    :cond_13
    iget-object v0, p0, Lcom/twidroid/fragments/c;->a:Lcom/twidroid/fragments/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/b;->b()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/c;->a(Ljava/lang/Integer;)V

    return-void
.end method
