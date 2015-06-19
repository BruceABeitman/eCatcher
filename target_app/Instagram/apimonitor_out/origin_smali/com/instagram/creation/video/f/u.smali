.class final Lcom/instagram/creation/video/f/u;
.super Lcom/instagram/common/b/a;
.source "CamcorderFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/b/a",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Lcom/instagram/common/b/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/u;-><init>(Lcom/instagram/creation/video/f/a;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 7

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->r(Lcom/instagram/creation/video/f/a;)V

    :cond_c
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->s(Lcom/instagram/creation/video/f/a;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->t(Lcom/instagram/creation/video/f/a;)Z

    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v1}, Lcom/instagram/creation/video/f/a;->q(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v2}, Lcom/instagram/creation/video/f/a;->u(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/i/a;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v3}, Lcom/instagram/creation/video/f/a;->v(Lcom/instagram/creation/video/f/a;)Z

    move-result v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/instagram/creation/video/l/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;Lcom/instagram/creation/video/i/a;ZZ)V

    :cond_38
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-static {v0}, Lcom/instagram/creation/video/l/j;->e(Landroid/content/Context;)V

    :cond_43
    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->w(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/VideoShutterButton;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->m()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->w(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/VideoShutterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/creation/video/ui/VideoShutterButton;->setEnabled(Z)V

    :cond_60
    return-void
.end method

.method private varargs c()Ljava/lang/Boolean;
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/a;->d()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/a;->e()Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v1}, Lcom/instagram/creation/video/f/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/l/j;->a(Lcom/instagram/creation/b/a/b;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clips available. Trying to recover."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_37
    iget-object v2, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-virtual {v2, v1}, Lcom/instagram/creation/video/f/a;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/instagram/creation/video/f/u;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v1, v0}, Lcom/instagram/creation/video/f/a;->a(Lcom/instagram/creation/video/f/a;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_41} :catch_47

    :cond_41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_46
    return-object v0

    :catch_47
    move-exception v0

    const-string v1, "CamcorderFragment"

    const-string v2, "Failed to recover clips :("

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_46

    :cond_54
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_46
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/creation/video/f/u;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/u;->a(Ljava/lang/Boolean;)V

    return-void
.end method
