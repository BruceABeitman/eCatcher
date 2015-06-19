.class public abstract Lcom/spotify/mobile/android/ui/page/a/f;
.super Lcom/spotify/mobile/android/ui/page/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/page/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected abstract c()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/page/a/f;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/page/a/f;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_23
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/page/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/page/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/page/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
