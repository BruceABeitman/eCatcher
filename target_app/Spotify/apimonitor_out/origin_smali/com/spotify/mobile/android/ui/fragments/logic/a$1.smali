.class final Lcom/spotify/mobile/android/ui/fragments/logic/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/logic/a;
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

.field final synthetic b:Lcom/spotify/mobile/android/ui/fragments/logic/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/a;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a$1;->b:Lcom/spotify/mobile/android/ui/fragments/logic/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "uri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a$1;->a:[Ljava/lang/String;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a$1;->b:Lcom/spotify/mobile/android/ui/fragments/logic/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/l;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a$1;->a:[Ljava/lang/String;

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
    .registers 9

    check-cast p2, Landroid/database/Cursor;

    if-eqz p2, :cond_23

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a$1;->b:Lcom/spotify/mobile/android/ui/fragments/logic/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/a;->a(Lcom/spotify/mobile/android/ui/fragments/logic/a;)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/a$1;->b:Lcom/spotify/mobile/android/ui/fragments/logic/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/a;->b(Lcom/spotify/mobile/android/ui/fragments/logic/a;)V

    :cond_23
    return-void
.end method
