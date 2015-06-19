.class final Lcom/spotify/mobile/android/e/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/e/i;-><init>(Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/l;Lcom/spotify/mobile/android/e/e;Lcom/spotify/mobile/android/e/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/e/i;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/i;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/e/i$2;->a:Lcom/spotify/mobile/android/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i$2;->a:Lcom/spotify/mobile/android/e/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/i;->a(Lcom/spotify/mobile/android/e/i;)Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i$2;->a:Lcom/spotify/mobile/android/e/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/i;->b(Lcom/spotify/mobile/android/e/i;)Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i$2;->a:Lcom/spotify/mobile/android/e/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/i;->c(Lcom/spotify/mobile/android/e/i;)Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/e/i$2;->a:Lcom/spotify/mobile/android/e/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/i;->d(Lcom/spotify/mobile/android/e/i;)Lcom/spotify/mobile/android/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_30
    iget-object v0, p0, Lcom/spotify/mobile/android/e/i$2;->a:Lcom/spotify/mobile/android/e/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/i;->e(Lcom/spotify/mobile/android/e/i;)V

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/spotify/mobile/android/e/i$2;->a:Lcom/spotify/mobile/android/e/i;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/i;->f(Lcom/spotify/mobile/android/e/i;)V

    goto :goto_35
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/e/i$2;->c()V

    return-void
.end method

.method public final b()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/e/i$2;->c()V

    return-void
.end method
