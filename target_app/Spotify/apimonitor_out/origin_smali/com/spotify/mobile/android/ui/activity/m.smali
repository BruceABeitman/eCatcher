.class final Lcom/spotify/mobile/android/ui/activity/m;
.super Landroid/support/v4/app/u;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/r;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v4/app/u;-><init>(Landroid/support/v4/app/r;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/m;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/m;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/d/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/l;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/activity/l;-><init>()V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/d/b;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/activity/l;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/d/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/m;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/m;->c()V

    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
