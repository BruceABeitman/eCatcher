.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->d:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->d(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Ljava/lang/String;

    return-void
.end method
