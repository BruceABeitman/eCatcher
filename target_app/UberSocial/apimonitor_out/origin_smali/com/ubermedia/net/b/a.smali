.class public abstract Lcom/ubermedia/net/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J = 0x2710L


# instance fields
.field private volatile b:Z

.field private c:Landroid/app/Activity;

.field private d:Landroid/app/ProgressDialog;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubermedia/net/b/a;->b:Z

    invoke-virtual {p0, p1}, Lcom/ubermedia/net/b/a;->b(Landroid/app/Activity;)V

    new-instance v0, Lcom/ubermedia/net/b/a$2;

    invoke-direct {v0, p0}, Lcom/ubermedia/net/b/a$2;-><init>(Lcom/ubermedia/net/b/a;)V

    invoke-virtual {v0}, Lcom/ubermedia/net/b/a$2;->start()V

    return-void
.end method

.method static synthetic a(Lcom/ubermedia/net/b/a;Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/net/b/a;->c:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic a(Lcom/ubermedia/net/b/a;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/net/b/a;->d:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/ubermedia/net/b/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/net/b/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/ubermedia/net/b/a;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/net/b/a;->e:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/ubermedia/net/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ubermedia/net/b/a;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/ubermedia/net/b/a;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/net/b/a;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/ubermedia/net/b/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/ubermedia/net/b/a;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/ubermedia/net/b/a;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/net/b/a;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a()V
.end method

.method protected final a(Lcom/ubermedia/net/b/b;)V
    .registers 3

    new-instance v0, Lcom/ubermedia/net/b/a$1;

    invoke-direct {v0, p0, p1}, Lcom/ubermedia/net/b/a$1;-><init>(Lcom/ubermedia/net/b/a;Lcom/ubermedia/net/b/b;)V

    invoke-virtual {v0}, Lcom/ubermedia/net/b/a$1;->start()V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ubermedia/net/b/a;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ubermedia/net/b/a;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/ubermedia/net/b/a;->d:Landroid/app/ProgressDialog;

    :cond_c
    iput-object v1, p0, Lcom/ubermedia/net/b/a;->c:Landroid/app/Activity;

    iput-object v1, p0, Lcom/ubermedia/net/b/a;->e:Landroid/os/Handler;

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/ubermedia/net/b/a;->b:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/ubermedia/net/b/a;->c:Landroid/app/Activity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ubermedia/net/b/a;->e:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/ubermedia/net/b/a;->a(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ubermedia/net/b/a;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/ubermedia/net/b/a;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    :try_start_18
    iget-object v0, p0, Lcom/ubermedia/net/b/a;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_4

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ubermedia/net/b/a;->b:Z

    return v0
.end method
