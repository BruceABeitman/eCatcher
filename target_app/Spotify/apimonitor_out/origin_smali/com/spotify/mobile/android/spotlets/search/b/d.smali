.class public final Lcom/spotify/mobile/android/spotlets/search/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Locale;

.field private final b:Z

.field private final c:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->c:Landroid/util/SparseIntArray;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->a:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "az"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "tl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_30
    const/4 v0, 0x1

    :goto_31
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->b:Z

    return-void

    :cond_34
    const/4 v0, 0x0

    goto :goto_31
.end method


# virtual methods
.method public final a(I)I
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->b:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->a:Ljava/util/Locale;

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    :goto_2c
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_e

    :cond_32
    const/16 v0, 0x130

    if-ne p1, v0, :cond_39

    const/16 v0, 0x69

    goto :goto_2c

    :cond_39
    const/16 v0, 0x3a3

    if-ne p1, v0, :cond_40

    const/16 v0, 0x3c2

    goto :goto_2c

    :cond_40
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    goto :goto_2c
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b/d;->a:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
