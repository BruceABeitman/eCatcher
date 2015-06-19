.class public final Lcom/spotify/mobile/android/spotlets/common/persistence/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/common/persistence/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ":",
            "Lcom/spotify/mobile/android/spotlets/common/persistence/d;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->m()Landroid/support/v4/app/r;

    move-result-object v1

    const-string v0, "Not called from main loop"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bt;->b(Ljava/lang/String;)V

    const-string v0, "feature_persistence_fragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    if-nez v0, :cond_27

    invoke-static {p2, p3}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/common/persistence/e;

    move-result-object v0

    invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v2

    const-string v3, "feature_persistence_fragment"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/w;->c()I

    invoke-virtual {v1}, Landroid/support/v4/app/r;->b()Z

    :cond_27
    new-instance v1, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/h;Lcom/spotify/mobile/android/spotlets/common/persistence/e;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->a(Lcom/spotify/mobile/android/ui/fragments/m;)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->q()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/e;->c()Lcom/spotify/mobile/android/spotlets/common/persistence/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/common/persistence/a;->a(Landroid/support/v4/app/Fragment;)V

    :cond_3c
    return-void
.end method
