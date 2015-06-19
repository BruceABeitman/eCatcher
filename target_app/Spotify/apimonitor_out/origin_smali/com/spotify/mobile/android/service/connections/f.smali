.class public Lcom/spotify/mobile/android/service/connections/f;
.super Lcom/spotify/mobile/android/service/connections/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "B:",
        "Landroid/os/Binder;",
        ":",
        "Lcom/spotify/mobile/android/service/connections/d",
        "<T",
        "L;",
        ">;>",
        "Lcom/spotify/mobile/android/service/connections/e",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/spotify/mobile/android/service/connections/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/service/connections/l",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/spotify/mobile/android/service/connections/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/service/connections/k",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/spotify/mobile/android/service/connections/m;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/service/connections/e;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Lcom/spotify/mobile/android/service/connections/f$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/f$1;-><init>(Lcom/spotify/mobile/android/service/connections/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/f;->a:Lcom/spotify/mobile/android/service/connections/l;

    new-instance v0, Lcom/spotify/mobile/android/service/connections/k;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/f;->a:Lcom/spotify/mobile/android/service/connections/l;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/connections/k;-><init>(Lcom/spotify/mobile/android/service/connections/l;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/f;->b:Lcom/spotify/mobile/android/service/connections/k;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/connections/f;Lcom/spotify/mobile/android/service/connections/m;)Lcom/spotify/mobile/android/service/connections/m;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/f;->c:Lcom/spotify/mobile/android/service/connections/m;

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/f;->b:Lcom/spotify/mobile/android/service/connections/k;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/connections/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/f;->c:Lcom/spotify/mobile/android/service/connections/m;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/m;->b()V

    invoke-super {p0}, Lcom/spotify/mobile/android/service/connections/e;->b()V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/f;->b:Lcom/spotify/mobile/android/service/connections/k;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/connections/k;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected final e()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/connections/e;->e()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/f;->c:Lcom/spotify/mobile/android/service/connections/m;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/m;->a()V

    return-void
.end method
