.class final Lcom/spotify/mobile/android/service/flow/login/t$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$3$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$3$2;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$3;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->v(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/service/flow/login/a/f;->b()Lcom/spotify/mobile/android/service/flow/login/a/d;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/a/d;Lcom/spotify/mobile/android/service/flow/login/z;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t$3;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t$3;->a()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->v(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t$3;->a()V

    :goto_f
    return-void

    :cond_10
    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$3$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$3$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/t$3;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/t;->v(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->a(Lcom/spotify/mobile/android/service/flow/login/a/g;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->v(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->a()V

    goto :goto_f
.end method
