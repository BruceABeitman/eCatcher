.class final Lcom/spotify/mobile/android/spotlets/search/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/b;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/b$2;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$2;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->I()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$2;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b$2;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    iget v1, v1, Lcom/spotify/mobile/android/spotlets/search/b;->Y:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
