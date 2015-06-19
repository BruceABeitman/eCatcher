.class final Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;
.super Lcom/spotify/mobile/android/ui/fragments/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

.field final synthetic b:Landroid/support/v4/app/Fragment;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/spotify/mobile/android/spotlets/common/persistence/h;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/h;Lcom/spotify/mobile/android/spotlets/common/persistence/e;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->d:Lcom/spotify/mobile/android/spotlets/common/persistence/h;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->b:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->c()Lcom/spotify/mobile/android/spotlets/common/persistence/a;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->b:Landroid/support/v4/app/Fragment;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/a;->a(Landroid/support/v4/app/Fragment;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->b:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/persistence/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/d;->e(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->c()Lcom/spotify/mobile/android/spotlets/common/persistence/a;

    move-result-object v0

    new-instance v2, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1$1;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;)V

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/common/persistence/a;->a(Landroid/os/Bundle;Lcom/spotify/mobile/android/spotlets/common/persistence/c;)V

    const/4 v0, 0x0

    return v0
.end method
