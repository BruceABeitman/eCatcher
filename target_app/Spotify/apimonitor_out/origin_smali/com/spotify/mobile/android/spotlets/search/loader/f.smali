.class final Lcom/spotify/mobile/android/spotlets/search/loader/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/spotify/mobile/android/spotlets/search/loader/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/e;

    move-object v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/loader/e;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;IIZZ)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/f;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;IIZZ)Lcom/spotify/mobile/android/spotlets/search/loader/e;
    .registers 13

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/f;->a:Lcom/spotify/mobile/android/spotlets/search/loader/e;

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/e;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/loader/e;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;IIZZ)V

    goto :goto_8
.end method
