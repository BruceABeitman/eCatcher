.class final Lcom/spotify/mobile/android/e/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/e/f;-><init>(Lcom/spotify/mobile/android/e/m;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/e/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/e/f$1;->a:Lcom/spotify/mobile/android/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(ZZ)V
    .registers 4

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/spotify/mobile/android/e/f$1;->a:Lcom/spotify/mobile/android/e/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/f;->b()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/spotify/mobile/android/e/f$1;->a:Lcom/spotify/mobile/android/e/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/f;->c()V

    goto :goto_9
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/f$1;->a:Lcom/spotify/mobile/android/e/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/f;->c()V

    return-void
.end method
