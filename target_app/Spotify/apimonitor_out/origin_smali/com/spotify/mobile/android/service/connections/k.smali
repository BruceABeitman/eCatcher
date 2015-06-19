.class public final Lcom/spotify/mobile/android/service/connections/k;
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
.field private final a:Lcom/spotify/mobile/android/service/connections/m;

.field private final b:Lcom/spotify/mobile/android/service/connections/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/service/connections/l",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/service/connections/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/service/connections/l",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/service/connections/k$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/k$1;-><init>(Lcom/spotify/mobile/android/service/connections/k;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->a:Lcom/spotify/mobile/android/service/connections/m;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/k;->b:Lcom/spotify/mobile/android/service/connections/l;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->a:Lcom/spotify/mobile/android/service/connections/m;

    invoke-interface {p1, v0}, Lcom/spotify/mobile/android/service/connections/l;->a(Lcom/spotify/mobile/android/service/connections/m;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/connections/k;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/connections/k;)Lcom/spotify/mobile/android/service/connections/l;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->b:Lcom/spotify/mobile/android/service/connections/l;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->b:Lcom/spotify/mobile/android/service/connections/l;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/l;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->b:Lcom/spotify/mobile/android/service/connections/l;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/connections/l;->a(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->b:Lcom/spotify/mobile/android/service/connections/l;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/l;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k;->b:Lcom/spotify/mobile/android/service/connections/l;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/service/connections/l;->b(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method
