.class final Lcom/spotify/mobile/android/spotlets/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/a/d;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/a/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/a/d;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->b:Lcom/spotify/mobile/android/spotlets/a/d;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->b:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Lcom/spotify/mobile/android/spotlets/a/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->b:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/a/d;->b(Lcom/spotify/mobile/android/spotlets/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
