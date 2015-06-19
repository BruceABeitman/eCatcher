.class final Lit/sephiroth/android/library/widget/ad;
.super Ljava/lang/Object;
.source "ExpandableHListPosition.java"


# static fields
.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/ad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lit/sephiroth/android/library/widget/ad;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)Lit/sephiroth/android/library/widget/ad;
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v1}, Lit/sephiroth/android/library/widget/ad;->a(IIII)Lit/sephiroth/android/library/widget/ad;

    move-result-object v0

    return-object v0
.end method

.method static a(IIII)Lit/sephiroth/android/library/widget/ad;
    .registers 5

    invoke-static {}, Lit/sephiroth/android/library/widget/ad;->c()Lit/sephiroth/android/library/widget/ad;

    move-result-object v0

    iput p0, v0, Lit/sephiroth/android/library/widget/ad;->d:I

    iput p1, v0, Lit/sephiroth/android/library/widget/ad;->a:I

    iput p2, v0, Lit/sephiroth/android/library/widget/ad;->b:I

    iput p3, v0, Lit/sephiroth/android/library/widget/ad;->c:I

    return-object v0
.end method

.method private static c()Lit/sephiroth/android/library/widget/ad;
    .registers 4

    const/4 v3, 0x0

    sget-object v1, Lit/sephiroth/android/library/widget/ad;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lit/sephiroth/android/library/widget/ad;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f

    sget-object v0, Lit/sephiroth/android/library/widget/ad;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/ad;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_26

    monitor-exit v1

    iput v3, v0, Lit/sephiroth/android/library/widget/ad;->a:I

    iput v3, v0, Lit/sephiroth/android/library/widget/ad;->b:I

    iput v3, v0, Lit/sephiroth/android/library/widget/ad;->c:I

    iput v3, v0, Lit/sephiroth/android/library/widget/ad;->d:I

    :goto_1e
    return-object v0

    :cond_1f
    :try_start_1f
    new-instance v0, Lit/sephiroth/android/library/widget/ad;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/ad;-><init>()V

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    goto :goto_1e

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a()J
    .registers 3

    iget v0, p0, Lit/sephiroth/android/library/widget/ad;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lit/sephiroth/android/library/widget/ad;->a:I

    iget v1, p0, Lit/sephiroth/android/library/widget/ad;->b:I

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    :goto_d
    return-wide v0

    :cond_e
    iget v0, p0, Lit/sephiroth/android/library/widget/ad;->a:I

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_d
.end method

.method public final b()V
    .registers 4

    sget-object v1, Lit/sephiroth/android/library/widget/ad;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lit/sephiroth/android/library/widget/ad;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_11

    sget-object v0, Lit/sephiroth/android/library/widget/ad;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method
