.class final Lcom/instagram/android/directshare/d/u;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Lcom/instagram/common/h/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/h/d",
        "<",
        "Lcom/instagram/android/c2dm/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/u;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/d/u;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->f(Lcom/instagram/android/directshare/d/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/directshare/d/v;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/d/v;-><init>(Lcom/instagram/android/directshare/d/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/instagram/android/c2dm/a;)Z
    .registers 4

    const-string v0, "directshare"

    iget-object v1, p1, Lcom/instagram/android/c2dm/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/instagram/android/directshare/d/u;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->c(Lcom/instagram/android/directshare/d/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/c2dm/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/android/c2dm/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
    .registers 3

    check-cast p1, Lcom/instagram/android/c2dm/a;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/u;->a(Lcom/instagram/android/c2dm/a;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/h/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/directshare/d/u;->a()V

    return-void
.end method
