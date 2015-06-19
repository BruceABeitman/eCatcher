.class final Lcom/spotify/mobile/android/service/flow/logic/f$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/logic/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$1;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "error_code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$1;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/logic/f;->c()Lcom/spotify/mobile/android/service/flow/a;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/a;->c(I)V

    :cond_12
    return-void
.end method
