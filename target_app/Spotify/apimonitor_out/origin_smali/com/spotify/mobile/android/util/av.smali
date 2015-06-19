.class public final Lcom/spotify/mobile/android/util/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/util/aw;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/util/aw;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/util/av;-><init>(Lcom/spotify/mobile/android/util/aw;IB)V

    return-void
.end method

.method private constructor <init>(Lcom/spotify/mobile/android/util/aw;IB)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/av;->a:Lcom/spotify/mobile/android/util/aw;

    iput p2, p0, Lcom/spotify/mobile/android/util/av;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/av;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/av;->b:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/av;->b:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/av;->a:Lcom/spotify/mobile/android/util/aw;

    iget-boolean v1, p0, Lcom/spotify/mobile/android/util/av;->b:Z

    invoke-interface {v0, p1, v1}, Lcom/spotify/mobile/android/util/aw;->a(Landroid/content/Context;Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/util/av;->b:Z

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/av;->b:Z

    return v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/util/av;->c:I

    return v0
.end method
