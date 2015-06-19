.class final Lcom/spotify/mobile/android/ui/fragments/logic/o$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/logic/o;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/o;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/o;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/o;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "error_code"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "content_uri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_70

    move v3, v1

    :goto_17
    if-eqz v6, :cond_72

    move v0, v1

    :goto_1a
    xor-int/2addr v0, v3

    const-string v3, "only one of EXTRA_URI and EXTRA_CONTENT_URI may be set at once"

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    if-eqz v5, :cond_3a

    const-string v0, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "spotify:track:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "spotify:local:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_3a
    move v0, v1

    :goto_3b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "EXTRA_URI must be a spotify track uri, was "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    if-eqz v6, :cond_57

    const-string v0, "content://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_57
    move v2, v1

    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXTRA_CONTENT_URI must be a content uri, was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/o$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/o;

    invoke-static {v0, p1, v4, v5, v6}, Lcom/spotify/mobile/android/ui/fragments/logic/o;->a(Lcom/spotify/mobile/android/ui/fragments/logic/o;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_70
    move v3, v2

    goto :goto_17

    :cond_72
    move v0, v2

    goto :goto_1a

    :cond_74
    move v0, v2

    goto :goto_3b
.end method
