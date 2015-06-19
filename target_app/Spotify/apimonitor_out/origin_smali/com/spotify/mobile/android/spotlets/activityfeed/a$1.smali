.class final Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/a;
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
.field final a:[Ljava/lang/String;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "private_session"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;->a:[Ljava/lang/String;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;->a:[Ljava/lang/String;

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

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a(Z)V

    return-void
.end method

.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_19

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$1;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;

    move-result-object v0

    const-string v1, "private_session"

    invoke-static {p2, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a(Z)V

    :cond_19
    return-void
.end method
