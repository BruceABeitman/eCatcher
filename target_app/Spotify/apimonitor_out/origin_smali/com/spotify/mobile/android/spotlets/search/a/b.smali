.class final Lcom/spotify/mobile/android/spotlets/search/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/view/e;


# instance fields
.field private final a:Lcom/spotify/mobile/android/spotlets/search/a/c;

.field private final b:Lcom/spotify/mobile/android/spotlets/search/b/d;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/a/b;->a:Lcom/spotify/mobile/android/spotlets/search/a/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/b/d;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/b/d;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/b;->b:Lcom/spotify/mobile/android/spotlets/search/b/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/a/b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_10
    :goto_10
    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/a/b;->a:Lcom/spotify/mobile/android/spotlets/search/a/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a/c;->b()V

    :cond_17
    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/a/b;->c:Ljava/lang/String;

    return-void

    :cond_1a
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v3, v4, :cond_32

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/a/b;->b:Lcom/spotify/mobile/android/spotlets/search/b/d;

    invoke-virtual {v5, v3}, Lcom/spotify/mobile/android/spotlets/search/b/d;->a(I)I

    move-result v3

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/a/b;->b:Lcom/spotify/mobile/android/spotlets/search/b/d;

    invoke-virtual {v5, v4}, Lcom/spotify/mobile/android/spotlets/search/b/d;->a(I)I

    move-result v4

    if-ne v3, v4, :cond_47

    :cond_32
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_4c

    :cond_47
    move v2, v0

    :goto_48
    if-nez v2, :cond_10

    :cond_4a
    move v0, v1

    goto :goto_10

    :cond_4c
    move v2, v1

    goto :goto_48
.end method

.method public final a(Z)V
    .registers 2

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
