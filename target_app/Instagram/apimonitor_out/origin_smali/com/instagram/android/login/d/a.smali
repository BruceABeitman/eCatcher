.class public final Lcom/instagram/android/login/d/a;
.super Lcom/instagram/common/b/a;
.source "LogoutTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/b/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/s;)V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/common/b/a;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/login/d/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/login/d/a;->b:Landroid/support/v4/app/s;

    return-void
.end method

.method private a(Ljava/lang/Void;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/common/b/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/android/login/d/a;->b:Landroid/support/v4/app/s;

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/dialog/g;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/g;->b()V

    :cond_12
    invoke-static {}, Lcom/instagram/common/u/f/b;->a()V

    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .registers 4

    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/d/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/instagram/android/login/d/c;-><init>(B)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    iget-object v0, p0, Lcom/instagram/android/login/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/u/f/b;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0}, Lcom/instagram/android/login/d/a;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .registers 4

    invoke-super {p0}, Lcom/instagram/common/b/a;->a()V

    new-instance v0, Lcom/instagram/android/login/d/b;

    invoke-direct {v0}, Lcom/instagram/android/login/d/b;-><init>()V

    iget-object v1, p0, Lcom/instagram/android/login/d/a;->b:Landroid/support/v4/app/s;

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/g;->a(Landroid/support/v4/app/ag;Ljava/lang/String;)I

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/d/a;->a(Ljava/lang/Void;)V

    return-void
.end method
