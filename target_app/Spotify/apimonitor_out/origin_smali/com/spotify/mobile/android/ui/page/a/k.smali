.class final Lcom/spotify/mobile/android/ui/page/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/ui/page/a/f;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/page/a/f;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/a/k;->a:Lcom/spotify/mobile/android/ui/page/a/f;

    iput p2, p0, Lcom/spotify/mobile/android/ui/page/a/k;->b:I

    return-void
.end method


# virtual methods
.method final a()Lcom/spotify/mobile/android/ui/page/a/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/k;->a:Lcom/spotify/mobile/android/ui/page/a/f;

    return-object v0
.end method

.method final b()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/page/a/k;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/spotify/mobile/android/ui/page/a/k;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/page/a/k;->a:Lcom/spotify/mobile/android/ui/page/a/f;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lcom/spotify/mobile/android/ui/page/a/k;->a:Lcom/spotify/mobile/android/ui/page/a/f;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/k;->a:Lcom/spotify/mobile/android/ui/page/a/f;

    iget-object v1, p1, Lcom/spotify/mobile/android/ui/page/a/k;->a:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a/k;->a:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/page/a/f;->hashCode()I

    move-result v0

    return v0
.end method
