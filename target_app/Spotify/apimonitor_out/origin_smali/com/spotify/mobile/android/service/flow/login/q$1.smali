.class final Lcom/spotify/mobile/android/service/flow/login/q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/q;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/q;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/q$1;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .registers 5

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q$1;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/q;->a(Lcom/spotify/mobile/android/service/flow/login/q;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method
