.class public final Lcom/spotify/mobile/android/util/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->e()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->f()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/util/dp;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static A(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03b5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static B(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03d9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static C(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03cd

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static D(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03cb

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    const v0, 0x7f0f03cc

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static F(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03be

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method private static G(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "context is null"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    const v0, 0x7f0f03dc

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;I)V
    .registers 4

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Landroid/content/Context;II[Ljava/lang/Object;)V
    .registers 6

    invoke-static {p0}, Lcom/spotify/mobile/android/util/dp;->G(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p3

    if-lez v1, :cond_1a

    invoke-virtual {v0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    :goto_16
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_1a
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_16
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)V
    .registers 10

    const-class v1, Lcom/spotify/mobile/android/util/dp;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/spotify/mobile/android/util/dp;->G(Landroid/content/Context;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_70

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    sget-object v0, Lcom/spotify/mobile/android/util/dp;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1c
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300d4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a01fc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, p0, p1, v4}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v2, Lcom/spotify/mobile/android/util/dp;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_b .. :try_end_6f} :catchall_70

    goto :goto_9

    :catchall_70
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/spotify/mobile/android/util/dp$1;->a:[I

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    const v0, 0x7f0f03e5

    :goto_f
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void

    :pswitch_15
    const v0, 0x7f0f03e2

    goto :goto_f

    :pswitch_19
    const v0, 0x7f0f03e3

    goto :goto_f

    :pswitch_1d
    const v0, 0x7f0f03e6

    goto :goto_f

    :pswitch_21
    const v0, 0x7f0f03e7

    goto :goto_f

    :pswitch_25
    const v0, 0x7f0f03e4

    goto :goto_f

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_19
        :pswitch_19
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/dp$1;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_4a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown link type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when showing added to queue toast."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void

    :sswitch_37
    const v0, 0x7f0f03b2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v4, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_36

    :sswitch_40
    const v0, 0x7f0f03b4

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v4, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_36

    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_37
        0x2 -> :sswitch_37
        0x8 -> :sswitch_40
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 7

    const/4 v4, 0x1

    const v0, 0x7f0f03b7

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v4, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_14

    const v0, 0x7f0f03d7

    :goto_e
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    :cond_13
    return-void

    :cond_14
    const v0, 0x7f0f03e9

    goto :goto_e
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    const v0, 0x7f0f03db

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    const v0, 0x7f0f03d4

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v3, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .registers 4

    if-nez p1, :cond_a

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->l:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v1, 0x7f0f03b3

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)V

    :cond_a
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    const v0, 0x7f0f03df

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    const v0, 0x7f0f03c1

    :goto_6
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void

    :cond_c
    const v0, 0x7f0f03c2

    goto :goto_6
.end method

.method public static d(Landroid/content/Context;)V
    .registers 2

    const v0, 0x7f0f03e1

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static d(Landroid/content/Context;Z)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    const v0, 0x7f0f03ca

    :goto_6
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void

    :cond_c
    const v0, 0x7f0f03e8

    goto :goto_6
.end method

.method public static e(Landroid/content/Context;)V
    .registers 2

    const v0, 0x7f0f03e0

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    const v0, 0x7f0f03c9

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03c0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .registers 2

    const v0, 0x7f0f03de

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03b9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03ba

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dp;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aP:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v1, 0x7f0f03ce

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    const v0, 0x7f0f03d6

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    const v0, 0x7f0f03d5

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aR:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v1, 0x7f0f03c5

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bY:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v1, 0x7f0f03c7

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)V

    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bY:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v1, 0x7f0f03c6

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)V

    return-void
.end method

.method public static r(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bY:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v1, 0x7f0f03c8

    invoke-static {p0, v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)V

    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03bf

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static t(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03da

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03b6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03d0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03d2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static x(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03d3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static y(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03cf

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0f03d8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method
