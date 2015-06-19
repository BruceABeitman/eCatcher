.class final Lcom/spotify/mobile/android/service/flow/login/q$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/q;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/q;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/q;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/q$2;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/q$2;->a:Lcom/spotify/mobile/android/service/flow/login/q;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/q;->D()Lcom/spotify/mobile/android/service/flow/login/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/r;->a()V

    return-void
.end method
