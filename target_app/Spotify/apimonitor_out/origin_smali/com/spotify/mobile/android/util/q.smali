.class final Lcom/spotify/mobile/android/util/q;
.super Lcom/spotify/mobile/android/util/n;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/util/bh;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/util/bh;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/n;-><init>(B)V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/q;->a:Lcom/spotify/mobile/android/util/bh;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/q;->a:Lcom/spotify/mobile/android/util/bh;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/util/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/q;->a:Lcom/spotify/mobile/android/util/bh;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/util/bh;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected final b(Lorg/json/JSONArray;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/util/q;->a:Lcom/spotify/mobile/android/util/bh;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response was json array instead of json object: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/util/bh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
