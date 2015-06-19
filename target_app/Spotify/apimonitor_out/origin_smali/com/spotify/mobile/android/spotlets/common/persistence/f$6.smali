.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$6;
.super Lcom/spotify/mobile/android/ui/fragments/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a(Ljava/lang/Runnable;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$6;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$6;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$6;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method
