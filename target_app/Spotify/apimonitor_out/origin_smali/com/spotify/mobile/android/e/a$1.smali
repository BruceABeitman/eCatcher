.class final Lcom/spotify/mobile/android/e/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/e/a;-><init>(Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/e/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/e/a$1;->a:Lcom/spotify/mobile/android/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/a$1;->a:Lcom/spotify/mobile/android/e/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/a;->a(Lcom/spotify/mobile/android/e/a;)Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/e/a$1;->a:Lcom/spotify/mobile/android/e/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/a;->b(Lcom/spotify/mobile/android/e/a;)Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/e/a$1;->a:Lcom/spotify/mobile/android/e/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/a;->b()V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/e/a$1;->a:Lcom/spotify/mobile/android/e/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/a;->c()V

    goto :goto_1d
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/e/a$1;->c()V

    return-void
.end method

.method public final b()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/e/a$1;->c()V

    return-void
.end method
