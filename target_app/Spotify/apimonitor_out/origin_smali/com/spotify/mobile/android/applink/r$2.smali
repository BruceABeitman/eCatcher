.class final Lcom/spotify/mobile/android/applink/r$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/media/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/applink/r;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/spotify/mobile/android/applink/s;

.field final synthetic c:Lcom/spotify/mobile/android/applink/r;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/applink/r;Lcom/spotify/mobile/android/applink/s;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/applink/r$2;->c:Lcom/spotify/mobile/android/applink/r;

    const/4 v0, 0x3

    iput v0, p0, Lcom/spotify/mobile/android/applink/r$2;->a:I

    iput-object p2, p0, Lcom/spotify/mobile/android/applink/r$2;->b:Lcom/spotify/mobile/android/applink/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
