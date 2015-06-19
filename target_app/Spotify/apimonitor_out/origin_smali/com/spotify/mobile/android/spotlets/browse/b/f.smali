.class public final Lcom/spotify/mobile/android/spotlets/browse/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/spotify/mobile/android/spotlets/browse/b/a;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/a;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/f;->a:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {p1, p5, p4}, Lcom/spotify/mobile/android/spotlets/artist/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "referer"

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/f;->a:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
