.class public final Lcom/spotify/mobile/android/util/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;
.implements Lcom/spotify/mobile/android/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/z",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/spotify/mobile/android/a/b;"
    }
.end annotation


# instance fields
.field private a:Lcom/spotify/mobile/android/util/cd;

.field private b:Landroid/content/Context;

.field private final c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cd;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "paused"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "context_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "playing_track_uri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/util/cc;->c:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/util/cc;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/util/cc;->e:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/spotify/mobile/android/util/cc;->f:Z

    iput-object p1, p0, Lcom/spotify/mobile/android/util/cc;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/cc;->a:Lcom/spotify/mobile/android/util/cd;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/util/cc;->b:Landroid/content/Context;

    sget-object v2, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spotify/mobile/android/util/cc;->c:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cc;->d:Ljava/lang/String;

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {p2, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    :goto_11
    const-string v3, ""

    invoke-static {p2, v1, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, ""

    invoke-static {p2, v4, v5}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/spotify/mobile/android/util/cc;->f:Z

    if-ne v0, v5, :cond_32

    iget-object v5, p0, Lcom/spotify/mobile/android/util/cc;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/spotify/mobile/android/util/cc;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    :cond_32
    move v2, v1

    :cond_33
    if-eqz v2, :cond_40

    iput-object v3, p0, Lcom/spotify/mobile/android/util/cc;->d:Ljava/lang/String;

    iput-object v4, p0, Lcom/spotify/mobile/android/util/cc;->e:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/cc;->f:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cc;->a:Lcom/spotify/mobile/android/util/cd;

    invoke-interface {v0}, Lcom/spotify/mobile/android/util/cd;->F()V

    :cond_40
    return-void

    :cond_41
    move v0, v2

    goto :goto_11
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/cc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/cc;->f:Z

    return v0
.end method
