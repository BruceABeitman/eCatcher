.class public final Lcom/spotify/mobile/android/spotlets/artist/view/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/spotlets/artist/view/a/b;

.field private final b:Lcom/spotify/mobile/android/spotlets/artist/view/a/f;

.field private final c:Lcom/spotify/mobile/android/spotlets/artist/view/a/e;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/b;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->d:Ljava/lang/String;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/b;

    invoke-direct {v0, p1, p2, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->b:Lcom/spotify/mobile/android/spotlets/artist/view/a/f;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/a/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/b;

    invoke-direct {v0, p1, p2, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->c:Lcom/spotify/mobile/android/spotlets/artist/view/a/e;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Lcom/spotify/mobile/android/spotlets/artist/view/a/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->b:Lcom/spotify/mobile/android/spotlets/artist/view/a/f;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Lcom/spotify/mobile/android/spotlets/artist/view/a/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->c:Lcom/spotify/mobile/android/spotlets/artist/view/a/e;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->b:Lcom/spotify/mobile/android/spotlets/artist/view/a/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;->c()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->c:Lcom/spotify/mobile/android/spotlets/artist/view/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/e;->c()V

    return-void
.end method

.method public final a(Landroid/view/ContextMenu;Landroid/view/View;)V
    .registers 5

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/spotify/mobile/android/spotlets/artist/view/b/d;

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/b/d;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->e:Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;Landroid/view/ContextMenu;)V

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/d;->a(Lcom/spotify/mobile/android/spotlets/artist/view/b/e;)V

    goto :goto_8
.end method
