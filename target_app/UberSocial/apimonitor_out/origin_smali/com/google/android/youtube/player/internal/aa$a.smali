.class final Lcom/google/android/youtube/player/internal/aa$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# instance fields
.field private final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "remoteClassLoader cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/aa$a;->a:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aa$a;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/youtube/player/internal/aa;->a()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_24
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_24} :catch_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_24} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_24} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_24} :catch_2e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_24} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_24} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_24} :catch_37

    :goto_24
    return-object v0

    :catch_25
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_2b
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_2e
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_31
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_34
    move-exception v0

    move-object v0, v1

    goto :goto_24

    :catch_37
    move-exception v0

    move-object v0, v1

    goto :goto_24
.end method
