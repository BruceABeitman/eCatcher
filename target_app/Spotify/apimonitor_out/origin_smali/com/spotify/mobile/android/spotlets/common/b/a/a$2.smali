.class final Lcom/spotify/mobile/android/spotlets/common/b/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/b/a/a;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/j",
        "<",
        "Lcom/spotify/mobile/android/spotlets/common/b/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/common/b/a/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/b/a/a;Lcom/spotify/mobile/android/spotlets/common/b/a/d;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a$2;->b:Lcom/spotify/mobile/android/spotlets/common/b/a/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a$2;->a:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/spotlets/common/b/a/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a$2;->a:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    invoke-interface {p1, v0}, Lcom/spotify/mobile/android/spotlets/common/b/a/e;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Z

    move-result v0

    return v0
.end method
