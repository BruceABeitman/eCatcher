.class public abstract Lcom/spotify/mobile/android/ui/contextmenu/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/e;->c:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;",
            ")V"
        }
    .end annotation
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/contextmenu/e;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/e;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/e;->c:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/e;->a(Ljava/lang/Object;Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
