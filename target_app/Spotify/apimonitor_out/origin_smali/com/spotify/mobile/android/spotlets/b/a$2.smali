.class final Lcom/spotify/mobile/android/spotlets/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/b/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a$2;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$2;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$2;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->p(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/b/a;->a(Landroid/content/Intent;)V

    return-void
.end method
