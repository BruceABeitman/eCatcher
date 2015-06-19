.class public final Lcom/instagram/base/a/a/a;
.super Ljava/lang/Object;
.source "FragmentNavigator.java"


# instance fields
.field private final a:Landroid/support/v4/app/s;

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/s;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/base/a/a/a;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/base/a/a/a;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/instagram/base/a/a/a;->g:Z

    iput-boolean v1, p0, Lcom/instagram/base/a/a/a;->i:Z

    iput-object p1, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    return-void
.end method

.method private a(I)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/instagram/common/analytics/e;

    if-eqz v1, :cond_1d

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v1

    check-cast v0, Lcom/instagram/common/analytics/e;

    iget-object v2, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    invoke-virtual {v2}, Landroid/support/v4/app/s;->g()I

    move-result v2

    iget-object v3, p0, Lcom/instagram/base/a/a/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/instagram/base/a/a/a;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/instagram/base/a/a/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/instagram/base/a/a/a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    :cond_30
    iget-object v0, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    iget-boolean v1, p0, Lcom/instagram/base/a/a/a;->i:Z

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/ag;

    :cond_3d
    sget v1, Lcom/instagram/base/a/a/b;->a:I

    if-ne p1, v1, :cond_60

    sget v1, Lcom/facebook/av;->layout_container_main:I

    iget-object v2, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/instagram/base/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    :cond_4a
    :goto_4a
    iget-boolean v1, p0, Lcom/instagram/base/a/a/a;->e:Z

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/instagram/base/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/ag;

    :cond_53
    iget-boolean v1, p0, Lcom/instagram/base/a/a/a;->g:Z

    if-eqz v1, :cond_6e

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->c()I

    :goto_5a
    iget-object v0, p0, Lcom/instagram/base/a/a/a;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()Z

    return-void

    :cond_60
    sget v1, Lcom/instagram/base/a/a/b;->b:I

    if-ne p1, v1, :cond_4a

    sget v1, Lcom/facebook/av;->layout_container_main:I

    iget-object v2, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/instagram/base/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    goto :goto_4a

    :cond_6e
    :try_start_6e
    invoke-virtual {v0}, Landroid/support/v4/app/ag;->b()I
    :try_end_71
    .catch Ljava/lang/IllegalStateException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_5a

    :catch_72
    move-exception v1

    invoke-static {}, Lcom/instagram/common/p/b;->a()Lcom/instagram/common/p/b;

    move-result-object v0

    if-eqz v0, :cond_92

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nav_events: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/common/p/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8c
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_92
    const/4 v0, 0x0

    goto :goto_8c
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
    .registers 2

    iput-object p1, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
    .registers 3

    iput-object p1, p0, Lcom/instagram/base/a/a/a;->b:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/instagram/base/a/a/a;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .registers 2

    iput-object p1, p0, Lcom/instagram/base/a/a/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a()V
    .registers 2

    sget v0, Lcom/instagram/base/a/a/b;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/base/a/a/a;->a(I)V

    return-void
.end method

.method public final b()Lcom/instagram/base/a/a/a;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/base/a/a/a;->e:Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .registers 2

    iput-object p1, p0, Lcom/instagram/base/a/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/instagram/base/a/a/a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/base/a/a/a;->g:Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/instagram/base/a/a/a;
    .registers 2

    iput-object p1, p0, Lcom/instagram/base/a/a/a;->f:Ljava/lang/String;

    return-object p0
.end method
