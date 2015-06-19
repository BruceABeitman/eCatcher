.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$2;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$2;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$2;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;->c:Lcom/spotify/mobile/android/spotlets/common/persistence/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->d(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$2;->a:Ljava/lang/Exception;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/b;->n_()V

    return-void
.end method
