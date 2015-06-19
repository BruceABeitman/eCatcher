.class public final Lcom/spotify/mobile/android/util/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/spotify/mobile/android/util/bx;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/spotify/mobile/android/util/cs;

.field private h:Lcom/spotify/mobile/android/util/ct;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "is_syncing"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "done_count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "total_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "progress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/util/bw;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/bw;->b:Ljava/util/Set;

    new-instance v0, Lcom/spotify/mobile/android/util/bw$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/bw$1;-><init>(Lcom/spotify/mobile/android/util/bw;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/bw;->h:Lcom/spotify/mobile/android/util/ct;

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/bw;->h:Lcom/spotify/mobile/android/util/ct;

    invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/bw;->g:Lcom/spotify/mobile/android/util/cs;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/bw;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/util/bw;->d:I

    return p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/bw;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/util/bw;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/util/bw;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/util/bw;->e:I

    return p1
.end method

.method static synthetic c(Lcom/spotify/mobile/android/util/bw;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/util/bw;->f:I

    return p1
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bw;->g:Lcom/spotify/mobile/android/util/cs;

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a:Landroid/net/Uri;

    sget-object v2, Lcom/spotify/mobile/android/util/bw;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/bx;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bw;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bw;->g:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/util/bx;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bw;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/util/bw;->d:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/util/bw;->e:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/util/bw;->f:I

    return v0
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/bw;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/bx;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/bx;->c()V

    goto :goto_6

    :cond_16
    return-void
.end method
