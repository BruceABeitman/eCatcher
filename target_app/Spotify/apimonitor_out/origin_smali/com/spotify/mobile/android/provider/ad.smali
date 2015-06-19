.class final Lcom/spotify/mobile/android/provider/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/util/soft/SoftObject;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/spotify/mobile/android/provider/ad;->b:I

    iput v0, p0, Lcom/spotify/mobile/android/provider/ad;->c:I

    iput p1, p0, Lcom/spotify/mobile/android/provider/ad;->b:I

    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/provider/ad;->c:I

    new-instance v0, Lcom/spotify/mobile/android/util/soft/SoftObject;

    invoke-direct {v0, p2}, Lcom/spotify/mobile/android/util/soft/SoftObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/provider/ad;->a:Lcom/spotify/mobile/android/util/soft/SoftObject;

    :cond_1f
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/provider/ad;->c:I

    return v0
.end method

.method public final a(I)Lcom/spotify/mobile/android/util/soft/SoftObject;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/provider/ad;->a:Lcom/spotify/mobile/android/util/soft/SoftObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/spotify/mobile/android/provider/ad;->a:Lcom/spotify/mobile/android/util/soft/SoftObject;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/soft/SoftObject;->e(I)Lcom/spotify/mobile/android/util/soft/SoftObject;

    move-result-object v0

    goto :goto_5
.end method
