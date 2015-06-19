.class public final Lcom/spotify/mobile/android/spotlets/browse/view/e;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Lcom/spotify/mobile/android/spotlets/browse/b/e;

.field private final c:Lcom/spotify/mobile/android/spotlets/browse/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/e;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->R:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v2, v3, v4, v5}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/b/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e;->b:Lcom/spotify/mobile/android/spotlets/browse/b/e;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/a;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/b/d;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->U:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-direct {v2, v3, v4, v5}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/b/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e;->c:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->setOrientation(I)V

    const v1, 0x7f0201ce

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->setPadding(IIII)V

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e;->a:I

    :goto_41
    if-ge v0, p2, :cond_51

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/util/b;->a(Landroid/content/Context;)Lcom/spotify/android/paste/widget/CardView;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_51
    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/view/e;)Lcom/spotify/mobile/android/spotlets/browse/b/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e;->b:Lcom/spotify/mobile/android/spotlets/browse/b/e;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/a/b;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;",
            ">;",
            "Lcom/spotify/mobile/android/a/b;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move v12, v1

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/spotify/mobile/android/spotlets/browse/view/e;->a:I

    if-ge v12, v1, :cond_f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_f2

    move-object v8, v9

    check-cast v8, Lcom/spotify/android/paste/widget/CardView;

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;

    invoke-virtual {v10}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->g()I

    move-result v1

    invoke-virtual {v10}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->a()Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/spotify/android/paste/widget/CardView;->a(Z)V

    invoke-virtual {v8, v13}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d0

    const-string v1, " "

    invoke-virtual {v8, v1}, Lcom/spotify/android/paste/widget/CardView;->c(Ljava/lang/CharSequence;)V

    :goto_3f
    const-class v1, Lcom/spotify/mobile/android/util/df;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v10}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;

    move-result-object v1

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;

    invoke-virtual {v8}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v10}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->e()Z

    move-result v1

    invoke-virtual {v8, v1}, Lcom/spotify/android/paste/widget/CardView;->b(Z)V

    invoke-virtual {v8}, Lcom/spotify/android/paste/widget/CardView;->d()Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageButton;

    if-eqz v11, :cond_b9

    new-instance v1, Lcom/spotify/mobile/android/a/a;

    invoke-virtual/range {p0 .. p0}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v3, v14}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v5, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/spotify/mobile/android/a/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/a/b;)V

    invoke-virtual {v10}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->a()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/browse/view/e;->c:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    const/4 v3, -0x1

    const-string v7, "play"

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v2 .. v7}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/browse/view/e;->c:Lcom/spotify/mobile/android/spotlets/browse/b/a;

    const/4 v3, -0x1

    const-string v7, "pause"

    move-object v4, v13

    move-object v5, v14

    invoke-virtual/range {v2 .. v7}, Lcom/spotify/mobile/android/spotlets/browse/b/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->g:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v3, v0, v2}, Lcom/spotify/mobile/android/a/a;->a(Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/util/ClientEvent;)V

    new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v1}, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/view/e;Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;Lcom/spotify/mobile/android/a/a;)V

    invoke-virtual {v11, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b9
    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;

    move-object/from16 v2, p0

    move v3, v12

    move-object v4, v15

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/spotify/mobile/android/spotlets/browse/view/e$2;-><init>(Lcom/spotify/mobile/android/spotlets/browse/view/e;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/spotify/android/paste/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_cb
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_2

    :cond_d0
    invoke-virtual/range {p0 .. p0}, Lcom/spotify/mobile/android/spotlets/browse/view/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0003

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/spotify/android/paste/widget/CardView;->c(Ljava/lang/CharSequence;)V

    goto/16 :goto_3f

    :cond_f2
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_cb

    :cond_f7
    return-void
.end method
