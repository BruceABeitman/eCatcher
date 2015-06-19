.class final Lcom/spotify/mobile/android/ui/stuff/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

.field public final b:I

.field public final c:I

.field private final d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/e;->e:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/stuff/e;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iput p3, p0, Lcom/spotify/mobile/android/ui/stuff/e;->b:I

    iput p4, p0, Lcom/spotify/mobile/android/ui/stuff/e;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Lcom/spotify/android/paste/graphics/SpotifyIcon;IIB)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/ui/stuff/e;-><init>(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Lcom/spotify/android/paste/graphics/SpotifyIcon;II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/e;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/e;->e:Ljava/lang/ref/WeakReference;

    :cond_17
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/spotify/mobile/android/ui/stuff/e;

    if-eqz v1, :cond_16

    check-cast p1, Lcom/spotify/mobile/android/ui/stuff/e;

    iget-object v1, p1, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a()I

    move-result v2

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a()I

    move-result v0

    return v0
.end method
