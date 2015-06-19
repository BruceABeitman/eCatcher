.class final Lcom/spotify/music/MainActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/activity/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/music/MainActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/MainActivity;


# direct methods
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/MainActivity$9;->a:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/MainActivity$9;->a:Lcom/spotify/music/MainActivity;

    invoke-virtual {v0, p1}, Lcom/spotify/music/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
