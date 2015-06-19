.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$1;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$1;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->D()Lcom/spotify/mobile/android/service/flow/login/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/w;->c()V

    return-void
.end method
