.class Lcom/spotify/mobile/android/core/internal/ConnectivityListener$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/core/internal/ConnectivityListener;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/core/internal/ConnectivityListener;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener$1;->this$0:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/ConnectivityListener$1;->this$0:Lcom/spotify/mobile/android/core/internal/ConnectivityListener;

    #calls: Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->connectivityHasChanged()V
    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->access$000(Lcom/spotify/mobile/android/core/internal/ConnectivityListener;)V

    return-void
.end method
