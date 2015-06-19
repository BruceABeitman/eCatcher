.class final Lcom/instagram/android/directshare/e/c;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"

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
.field final synthetic a:Lcom/instagram/android/directshare/e/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/e/c;->a:Lcom/instagram/android/directshare/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/e/c;->a:Lcom/instagram/android/directshare/e/b;

    invoke-static {v0}, Lcom/instagram/android/directshare/e/b;->b(Lcom/instagram/android/directshare/e/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/directshare/e/d;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/e/d;-><init>(Lcom/instagram/android/directshare/e/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(Lcom/instagram/android/c2dm/a;)Z
    .registers 3

    const-string v0, "directshare_request"

    iget-object v1, p0, Lcom/instagram/android/c2dm/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
    .registers 3

    check-cast p1, Lcom/instagram/android/c2dm/a;

    invoke-static {p1}, Lcom/instagram/android/directshare/e/c;->a(Lcom/instagram/android/c2dm/a;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/h/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/directshare/e/c;->a()V

    return-void
.end method
