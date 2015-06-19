.class final Lcom/spotify/mobile/android/applink/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/applink/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/applink/e;
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/spotify/mobile/android/applink/e;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/applink/e;Z)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/applink/e$2;->b:Lcom/spotify/mobile/android/applink/e;

    iput-boolean p2, p0, Lcom/spotify/mobile/android/applink/e$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/applink/l;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/e$2;->b:Lcom/spotify/mobile/android/applink/e;

    iget-boolean v1, p0, Lcom/spotify/mobile/android/applink/e$2;->a:Z

    invoke-static {v0, p1, v1}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/e;Lcom/spotify/mobile/android/applink/l;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/e$2;->b:Lcom/spotify/mobile/android/applink/e;

    invoke-static {p1}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/e;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;

    return-void
.end method
