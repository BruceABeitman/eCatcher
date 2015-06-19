.class final Lcom/spotify/mobile/android/service/flow/login/StartFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$8;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$8;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/StartFragment$8;->a:Lcom/spotify/mobile/android/service/flow/login/StartFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->c(Lcom/spotify/mobile/android/service/flow/login/StartFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/StartFragment;->a(Lcom/spotify/mobile/android/service/flow/login/StartFragment;I)I

    return-void
.end method
