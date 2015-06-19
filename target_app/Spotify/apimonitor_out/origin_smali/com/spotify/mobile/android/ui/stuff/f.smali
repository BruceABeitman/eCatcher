.class final Lcom/spotify/mobile/android/ui/stuff/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/spotify/mobile/android/ui/stuff/e;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/stuff/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/spotify/mobile/android/ui/stuff/e;

    check-cast p2, Lcom/spotify/mobile/android/ui/stuff/e;

    iget-object v0, p2, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a()I

    move-result v0

    iget-object v1, p1, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
