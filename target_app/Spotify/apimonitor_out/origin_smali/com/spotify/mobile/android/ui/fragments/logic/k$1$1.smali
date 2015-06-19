.class final Lcom/spotify/mobile/android/ui/fragments/logic/k$1$1;
.super Landroid/support/v4/content/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/logic/k$1;->a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/a",
        "<",
        "Lcom/spotify/mobile/android/ui/fragments/logic/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/spotify/mobile/android/ui/fragments/logic/k$1;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/k$1;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k$1$1;->f:Lcom/spotify/mobile/android/ui/fragments/logic/k$1;

    invoke-direct {p0, p2}, Landroid/support/v4/content/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/l;

    invoke-direct {v0, v3}, Lcom/spotify/mobile/android/ui/fragments/logic/l;-><init>(B)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/k$1$1;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/k;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/spotify/mobile/android/ui/fragments/logic/l;->a:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/k$1$1;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/k;->b:Lcom/spotify/mobile/android/util/cz;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/logic/l;->b:Ljava/lang/String;

    return-object v0
.end method
