.class final Lcom/spotify/mobile/android/spotlets/a/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/view/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/a/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/a/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/b$5;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$5;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b$5;->a:Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/c;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method
