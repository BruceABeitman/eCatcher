.class final Lcom/spotify/mobile/android/applink/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/media/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/applink/r;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/applink/s;

.field final synthetic b:Lcom/spotify/mobile/android/applink/r;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/applink/r;Lcom/spotify/mobile/android/applink/s;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/applink/r$1;->b:Lcom/spotify/mobile/android/applink/r;

    iput-object p2, p0, Lcom/spotify/mobile/android/applink/r$1;->a:Lcom/spotify/mobile/android/applink/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/media/c/d;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/applink/r$1;->a:Lcom/spotify/mobile/android/applink/s;

    iget-object v1, p0, Lcom/spotify/mobile/android/applink/r$1;->b:Lcom/spotify/mobile/android/applink/r;

    invoke-static {v1, p1}, Lcom/spotify/mobile/android/applink/r;->a(Lcom/spotify/mobile/android/applink/r;Lcom/spotify/mobile/android/service/media/c/d;)Lcom/spotify/mobile/android/applink/l;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/applink/s;->a(Lcom/spotify/mobile/android/applink/l;)V

    return-void
.end method
