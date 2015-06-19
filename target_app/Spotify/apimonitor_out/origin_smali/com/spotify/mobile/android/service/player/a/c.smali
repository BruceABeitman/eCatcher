.class final Lcom/spotify/mobile/android/service/player/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/service/player/a/d;

.field private b:Lcom/spotify/mobile/android/service/b/b;

.field private c:Landroid/content/Context;

.field private d:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Lcom/spotify/mobile/android/service/player/model/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/player/a/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/service/player/a/c$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/player/a/c$1;-><init>(Lcom/spotify/mobile/android/service/player/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->d:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/service/player/a/c$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/player/a/c$2;-><init>(Lcom/spotify/mobile/android/service/player/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->e:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/service/player/a/c$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/player/a/c$3;-><init>(Lcom/spotify/mobile/android/service/player/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->f:Landroid/support/v4/app/z;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/player/a/c;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/player/a/c;->a:Lcom/spotify/mobile/android/service/player/a/d;

    new-instance v0, Lcom/spotify/mobile/android/service/b/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/b/b;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/player/a/c;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/player/a/c;)Lcom/spotify/mobile/android/service/player/a/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->a:Lcom/spotify/mobile/android/service/player/a/d;

    return-object v0
.end method


# virtual methods
.method final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/c;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->a(Landroid/support/v4/app/z;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/c;->e:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->a(Landroid/support/v4/app/z;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/c;->f:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->a(Landroid/support/v4/app/z;)V

    return-void
.end method

.method final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/c;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->b(Landroid/support/v4/app/z;)V

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/c;->e:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->b(Landroid/support/v4/app/z;)V

    :cond_16
    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/c;->b:Lcom/spotify/mobile/android/service/b/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/c;->f:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/b/b;->b(Landroid/support/v4/app/z;)V

    :cond_21
    return-void
.end method
