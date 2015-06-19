.class public Lcom/instagram/android/login/a/d;
.super Lcom/instagram/api/j/a;
.source "FacebookRecoveryCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/android/login/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/support/v4/app/s;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
    .registers 4

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    iput-object p2, p0, Lcom/instagram/android/login/a/d;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/instagram/android/login/a/d;->b:Landroid/support/v4/app/s;

    iput-object p1, p0, Lcom/instagram/android/login/a/d;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/login/a/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/a/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/instagram/android/login/c/f;)V
    .registers 4

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/login/c/f;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/instagram/android/login/a/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/a/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/a/f;-><init>(Lcom/instagram/android/login/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/instagram/android/login/a/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/a/g;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/login/a/g;-><init>(Lcom/instagram/android/login/a/d;Lcom/instagram/android/login/c/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method

.method static synthetic b(Lcom/instagram/android/login/a/d;)Landroid/support/v4/app/s;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/a/d;->b:Landroid/support/v4/app/s;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/instagram/api/j/j;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/android/login/c/f;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_c

    sget v0, Lcom/facebook/az;->request_error:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x193

    if-eq v0, v1, :cond_24

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_2f

    :cond_24
    iget-object v0, p0, Lcom/instagram/android/login/a/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/login/a/e;

    invoke-direct {v1, p0}, Lcom/instagram/android/login/a/e;-><init>(Lcom/instagram/android/login/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_2f
    invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    goto :goto_b
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/instagram/android/login/c/f;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/a/d;->a(Lcom/instagram/android/login/c/f;)V

    return-void
.end method
