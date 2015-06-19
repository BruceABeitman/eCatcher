.class final Lcom/spotify/mobile/android/spotlets/search/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/spotify/mobile/android/spotlets/search/b/d;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/b/d;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/b/d;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->a:Lcom/spotify/mobile/android/spotlets/search/b/d;

    return-void
.end method

.method private a(Ljava/lang/String;I)[I
    .registers 12

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_54

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->c:I

    if-nez v0, :cond_d

    move-object v0, v6

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v5, p2

    :goto_12
    if-ge v5, v7, :cond_4c

    invoke-virtual {p1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    move v2, v3

    move v4, v5

    :goto_20
    iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->a:Lcom/spotify/mobile/android/spotlets/search/b/d;

    invoke-virtual {v8, v1}, Lcom/spotify/mobile/android/spotlets/search/b/d;->a(I)I

    move-result v8

    if-ne v8, v0, :cond_43

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v4, v0

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    if-eq v4, v7, :cond_43

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->c:I

    if-eq v2, v0, :cond_43

    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    goto :goto_20

    :cond_43
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->c:I

    if-ne v2, v0, :cond_4e

    aput v5, v6, v3

    const/4 v0, 0x1

    aput v4, v6, v0

    :cond_4c
    move-object v0, v6

    goto :goto_c

    :cond_4e
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_12

    :array_54
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->a:Lcom/spotify/mobile/android/spotlets/search/b/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/a;->c:I

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_7
    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/search/b/a;->a(Ljava/lang/String;I)[I

    move-result-object v0

    aget v3, v0, v1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    aget v0, v0, v3

    goto :goto_7

    :cond_17
    return-object v2
.end method
