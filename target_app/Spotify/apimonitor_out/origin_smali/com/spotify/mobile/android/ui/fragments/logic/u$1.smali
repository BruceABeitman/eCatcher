.class final Lcom/spotify/mobile/android/ui/fragments/logic/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/logic/u;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/u;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/u;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/u;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/u;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/logic/u;->D()[Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Landroid/database/Cursor;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p2}, Lcom/spotify/mobile/android/ui/actions/b;->a(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    array-length v1, v0

    if-lez v1, :cond_21

    const-string v1, "We have at least one unaccepted license."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/u$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/u;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/u;->a(Lcom/spotify/mobile/android/ui/fragments/logic/u;[Ljava/lang/String;)V

    :cond_21
    return-void
.end method
