.class final Lcom/spotify/mobile/android/service/flow/login/t$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/t;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$5;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 6

    if-nez p2, :cond_28

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$5;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->x(Lcom/spotify/mobile/android/service/flow/login/t;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$5;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$5;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/t;->h(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/aa;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$5;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t$5;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t$5;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/t;->w(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/ae;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/ae;)Lcom/spotify/mobile/android/service/flow/login/ad;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/ad;)Lcom/spotify/mobile/android/service/flow/login/ad;

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$5;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->y(Lcom/spotify/mobile/android/service/flow/login/t;)V

    goto :goto_27
.end method
