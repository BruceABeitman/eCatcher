.class final Lcom/spotify/mobile/android/spotlets/common/b/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/common/b/a/a;
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
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/b/a/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/b/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/common/b/a/a;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/common/b/a/a;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->b:Landroid/content/Context;

    sget-object v2, Lcom/spotify/mobile/android/provider/v;->a:Landroid/net/Uri;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/content/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/k",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/common/b/a/a;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/common/b/a/c;->d:Lcom/spotify/mobile/android/spotlets/common/b/a/d;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)V

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 10

    const/4 v5, 0x0

    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_33

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/common/b/a/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/b/a/b;

    const-string v1, "logged_in"

    invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "current_user"

    invoke-static {p2, v2, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "product_type"

    invoke-static {p2, v3, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "country_code"

    invoke-static {p2, v4, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "connected"

    invoke-static {p2, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/common/b/a/b;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)V

    :cond_33
    return-void
.end method
