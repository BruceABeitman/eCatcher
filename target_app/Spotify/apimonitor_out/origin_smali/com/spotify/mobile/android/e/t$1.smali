.class final Lcom/spotify/mobile/android/e/t$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/e/t;-><init>(Lcom/spotify/mobile/android/e/m;Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/e/t;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/t;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/e/t$1;->a:Lcom/spotify/mobile/android/e/t;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/e/t$1;->a:Lcom/spotify/mobile/android/e/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/t;->a(Lcom/spotify/mobile/android/e/t;)V

    return-void
.end method
