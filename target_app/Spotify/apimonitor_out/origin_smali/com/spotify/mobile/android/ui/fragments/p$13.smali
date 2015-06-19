.class final Lcom/spotify/mobile/android/ui/fragments/p$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/p;
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
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

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

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;

    sget-object v3, Lcom/spotify/mobile/android/ui/fragments/p;->a:[Ljava/lang/String;

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
    .registers 20

    check-cast p2, Landroid/database/Cursor;

    invoke-static/range {p2 .. p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_345

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_346

    const/4 v1, 0x1

    :goto_1d
    invoke-static {v2, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->b(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->y(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v2

    if-nez v2, :cond_429

    int-to-long v1, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    const/16 v3, 0x17

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    move v4, v1

    :goto_42
    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->E(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/p;->c(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->F(Lcom/spotify/mobile/android/ui/fragments/p;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/p;->f(Lcom/spotify/mobile/android/ui/fragments/p;I)I

    const/4 v1, 0x5

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v9

    const/4 v1, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v10

    const/4 v1, 0x7

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v2, 0xb

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/p;->d(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v2, 0x9

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/p;->e(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v2, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/p;->f(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    const/16 v1, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0xe

    const-string v6, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v6}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0xf

    const-string v12, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v12}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x10

    const-string v13, ""

    move-object/from16 v0, p2

    invoke-static {v0, v2, v13}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v2, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    new-instance v15, Lcom/spotify/mobile/android/model/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/model/ContextType;->a(I)Lcom/spotify/mobile/android/model/ContextType;

    move-result-object v1

    new-instance v16, Lcom/spotify/mobile/android/util/SpotifyLink;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v15, v1, v6, v12, v0}, Lcom/spotify/mobile/android/model/c;-><init>(Lcom/spotify/mobile/android/model/ContextType;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/SpotifyLink;)V

    invoke-static {v14, v15}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/model/c;)Lcom/spotify/mobile/android/model/c;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v6

    invoke-static {v1, v6}, Lcom/spotify/mobile/android/ui/fragments/p;->g(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v6, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v6, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v1, v6}, Lcom/spotify/mobile/android/ui/fragments/p;->g(Lcom/spotify/mobile/android/ui/fragments/p;I)I

    const/16 v1, 0x15

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v12, 0x16

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v12

    invoke-static {v1, v12}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->t(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    if-eqz v1, :cond_349

    const-string v1, "ad_type"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/al;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {}, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->values()[Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    move-result-object v13

    aget-object v1, v13, v1

    invoke-static {v12, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->r(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    move-result-object v1

    sget-object v12, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-ne v1, v12, :cond_18d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/ads/b;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/ads/b;->b()Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a()Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    :cond_18d
    :goto_18d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v12, 0x18

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v12

    invoke-static {v1, v12}, Lcom/spotify/mobile/android/ui/fragments/p;->i(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->i(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    if-eqz v1, :cond_35b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->y(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    if-nez v1, :cond_35b

    const/16 v1, 0x7d0

    if-ge v4, v1, :cond_35b

    const/4 v1, 0x1

    :goto_1b9
    invoke-static {v12, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/16 v12, 0x19

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v1, v12}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

    move-result-object v1

    div-int/lit16 v12, v4, 0x3e8

    invoke-virtual {v1, v12}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->refreshDrawableState()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->K(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/p;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    div-int/lit16 v5, v4, 0x3e8

    invoke-static {v1, v5}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->M(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/util/by;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/p;->L(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->y(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    if-eqz v1, :cond_35e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->z(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->E(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    if-eqz v1, :cond_390

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->N(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/j;->n(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_26a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->F(Lcom/spotify/mobile/android/ui/fragments/p;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3a9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->O(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/j;->r(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_28c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->P(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->C(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->C(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->k(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    if-eqz v1, :cond_3e6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->C(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2d0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->C(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->t(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    if-eqz v1, :cond_3f7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->r(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    move-result-object v1

    sget-object v4, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->a:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-ne v1, v4, :cond_3f7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->Q(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a()Z

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->R(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_3f4

    const/16 v1, 0x8

    :goto_309
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_30c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->v(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/model/c;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->t(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/model/c;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1, v3}, Lcom/spotify/mobile/android/ui/fragments/p;->b(Lcom/spotify/mobile/android/ui/fragments/p;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->E(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    if-ne v7, v1, :cond_33e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->F(Lcom/spotify/mobile/android/ui/fragments/p;)I

    move-result v1

    if-eq v8, v1, :cond_345

    :cond_33e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->J(Lcom/spotify/mobile/android/ui/fragments/p;)V

    :cond_345
    return-void

    :cond_346
    const/4 v1, 0x0

    goto/16 :goto_1d

    :cond_349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/4 v12, 0x0

    invoke-static {v1, v12}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    const/4 v12, 0x0

    invoke-static {v1, v12}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    goto/16 :goto_18d

    :cond_35b
    const/4 v1, 0x0

    goto/16 :goto_1b9

    :cond_35e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->z(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v5}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/j;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->M(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/util/by;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/p;->L(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Runnable;

    move-result-object v5

    rem-int/lit16 v4, v4, 0x3e8

    rsub-int v4, v4, 0x3e8

    const/16 v11, 0x3e8

    invoke-virtual {v1, v5, v4, v11}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;II)V

    goto/16 :goto_249

    :cond_390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->N(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/j;->k(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_26a

    :cond_3a9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->F(Lcom/spotify/mobile/android/ui/fragments/p;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3cd

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->O(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/j;->s(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_28c

    :cond_3cd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->O(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/j;->q(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_28c

    :cond_3e6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_2d0

    :cond_3f4
    const/4 v1, 0x4

    goto/16 :goto_309

    :cond_3f7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->R(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->Q(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/p;->x(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/spotify/mobile/android/ui/fragments/p$13;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v5}, Lcom/spotify/mobile/android/ui/fragments/p;->t(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v5

    invoke-static/range {v1 .. v6}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;ZLjava/lang/String;ZZZ)V

    goto/16 :goto_30c

    :cond_429
    move v4, v1

    goto/16 :goto_42
.end method
