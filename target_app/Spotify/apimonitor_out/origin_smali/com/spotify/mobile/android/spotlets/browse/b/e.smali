.class public final Lcom/spotify/mobile/android/spotlets/browse/b/e;
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

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/e;->a:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;-><init>()V

    invoke-virtual {v0, p5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b/e;->a:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
