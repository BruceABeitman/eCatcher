.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$1;
.super Lcom/spotify/mobile/android/ui/fragments/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/f;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/e;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/persistence/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Z

    move-result v0

    const-string v1, "could not init feature storage"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
