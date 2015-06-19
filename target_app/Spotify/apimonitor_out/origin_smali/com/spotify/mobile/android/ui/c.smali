.class final Lcom/spotify/mobile/android/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/c;->a:Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Lcom/spotify/mobile/android/ui/c;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/ui/c;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/c;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/ui/c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/c;->c:Z

    return-object p0
.end method

.method public final b()V
    .registers 7

    invoke-static {}, Lcom/spotify/mobile/android/ui/a;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/c;->a:Ljava/lang/Class;

    new-instance v2, Lcom/spotify/mobile/android/ui/b;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/c;->b:Z

    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/c;->c:Z

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/spotify/mobile/android/ui/b;-><init>(ZZB)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
