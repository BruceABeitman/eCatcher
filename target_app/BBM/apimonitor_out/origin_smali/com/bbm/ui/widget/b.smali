.class public final Lcom/bbm/ui/widget/b;
.super Lcom/bbm/ui/widget/e;
.source "ChatsRemoteViewsFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/widget/e",
        "<",
        "Lcom/bbm/ui/activities/eu;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/bbm/Alaska;

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Bitmap;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;

.field private final i:Landroid/graphics/Bitmap;

.field private final j:Landroid/graphics/Bitmap;

.field private final k:Landroid/graphics/Bitmap;

.field private final l:Landroid/graphics/Bitmap;

.field private final m:Landroid/graphics/Bitmap;

.field private final n:Landroid/graphics/Bitmap;

.field private final o:Landroid/graphics/Bitmap;

.field private final p:Landroid/graphics/Bitmap;

.field private final q:Landroid/graphics/Bitmap;

.field private r:Lcom/bbm/d/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/widget/e;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/widget/b;->c:Lcom/bbm/Alaska;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020233

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->d:Landroid/graphics/Bitmap;

    const v1, 0x7f020230

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->e:Landroid/graphics/Bitmap;

    const v1, 0x7f02022a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->f:Landroid/graphics/Bitmap;

    const v1, 0x7f02022e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->g:Landroid/graphics/Bitmap;

    const v1, 0x7f02022c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->h:Landroid/graphics/Bitmap;

    const v1, 0x7f020232

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->i:Landroid/graphics/Bitmap;

    const v1, 0x7f020229

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->j:Landroid/graphics/Bitmap;

    const v1, 0x7f02022b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->k:Landroid/graphics/Bitmap;

    const v1, 0x7f020228

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->l:Landroid/graphics/Bitmap;

    const v1, 0x7f02022f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->m:Landroid/graphics/Bitmap;

    const v1, 0x7f020225

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->n:Landroid/graphics/Bitmap;

    const v1, 0x7f020226

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->p:Landroid/graphics/Bitmap;

    const v1, 0x7f020227

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/widget/b;->o:Landroid/graphics/Bitmap;

    const v1, 0x7f020231

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/widget/b;->q:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/widget/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/widget/RemoteViews;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 11

    const v3, 0x7f0a0443

    const v0, 0x7f0a0442

    const v4, 0x7f0a0446

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_4d

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_11
    if-nez p3, :cond_54

    invoke-virtual {p0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_16
    const v3, 0x7f0a0441

    if-nez p2, :cond_1d

    if-eqz p3, :cond_5b

    :cond_1d
    move v0, v2

    :goto_1e
    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-nez p4, :cond_5d

    const v0, 0x7f0a0445

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_29
    const/4 v0, 0x4

    if-le p1, v0, :cond_6a

    invoke-virtual {p0, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0447

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0447

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_3f
    const v0, 0x7f0a0444

    if-nez p4, :cond_7d

    if-nez p5, :cond_7d

    const/4 v3, 0x4

    if-gt p1, v3, :cond_7d

    :goto_49
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void

    :cond_4d
    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v0, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_11

    :cond_54
    invoke-virtual {p0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v3, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_16

    :cond_5b
    move v0, v1

    goto :goto_1e

    :cond_5d
    const v0, 0x7f0a0445

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0a0445

    invoke-virtual {p0, v0, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_29

    :cond_6a
    const v0, 0x7f0a0447

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-nez p5, :cond_76

    invoke-virtual {p0, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3f

    :cond_76
    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p0, v4, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_3f

    :cond_7d
    move v1, v2

    goto :goto_49
.end method

.method static synthetic b(Lcom/bbm/ui/widget/b;)Lcom/bbm/d/a;
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/widget/b;->e()Lcom/bbm/d/a;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/widget/b;->r:Lcom/bbm/d/a;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/widget/b;->r:Lcom/bbm/d/a;

    :cond_a
    iget-object v0, p0, Lcom/bbm/ui/widget/b;->r:Lcom/bbm/d/a;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/bbm/ui/activities/eu;

    iget-object v0, p1, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;

    iget-object v1, v1, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;

    iget-object v1, v1, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    iget-object v0, p1, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v0, v0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    goto :goto_23
.end method

.method protected final synthetic a(Landroid/widget/RemoteViews;Ljava/lang/Object;)V
    .registers 19

    check-cast p2, Lcom/bbm/ui/activities/eu;

    invoke-direct/range {p0 .. p0}, Lcom/bbm/ui/widget/b;->e()Lcom/bbm/d/a;

    move-result-object v7

    const v1, 0x7f0a0449

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a055c

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a055d

    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a055f

    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b0

    const-string v2, "groupConversationUri"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;

    iget-object v3, v3, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "groupUri"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;

    iget-object v3, v3, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_51
    const v2, 0x7f0a055b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3c6

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v1, v8, Lcom/bbm/d/es;->q:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v9

    iget-object v10, v8, Lcom/bbm/d/es;->r:Ljava/util/List;

    iget-object v1, v8, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v8, Lcom/bbm/d/es;->n:J

    invoke-virtual {v7, v1, v2, v3}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v11

    iget-object v1, v11, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_88
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_bc

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    if-lez v2, :cond_a9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a9

    const-string v3, ", "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a9
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_88

    :cond_b0
    const-string v2, "conversation_uri"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v3, v3, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_51

    :cond_bc
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1e7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0200d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/util/b/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/bbm/ui/widget/b;->a(Landroid/widget/RemoteViews;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const v1, 0x7f0a055c

    const v2, 0x7f0e0237

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0a055d

    const v2, 0x7f0e0237

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_107
    iget-boolean v1, v8, Lcom/bbm/d/es;->k:Z

    if-nez v1, :cond_29d

    move-object/from16 v0, p2

    iget-boolean v1, v0, Lcom/bbm/ui/activities/eu;->d:Z

    if-eqz v1, :cond_286

    const v1, 0x7f0a044a

    const v2, 0x7f0e02a5

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_120
    iget-object v1, v8, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_136

    const v2, 0x7f0a044a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_136
    iget-boolean v2, v11, Lcom/bbm/d/fg;->j:Z

    if-eqz v2, :cond_30b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f0

    iget-object v1, v11, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;

    if-ne v1, v2, :cond_2b4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->g:Landroid/graphics/Bitmap;

    :goto_14a
    iget-object v2, v11, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v3, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v2, v3, :cond_2f6

    const v2, 0x7f0a055c

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0a055d

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_162
    const v2, 0x7f0a055e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iget-wide v1, v11, Lcom/bbm/d/fg;->s:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_39d

    const v1, 0x7f0a0449

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    iget-wide v3, v11, Lcom/bbm/d/fg;->s:J

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_184
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/widget/b;->r:Lcom/bbm/d/a;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;)Z

    move-result v3

    invoke-virtual {v2, v1}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z

    move-result v1

    if-nez v3, :cond_1ae

    if-eqz v1, :cond_1e6

    :cond_1ae
    invoke-virtual {v2}, Lcom/bbm/n/b;->h()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3a9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    const v2, 0x7f0e0774

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1c0
    const v2, 0x7f0a055f

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0a044a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0a055e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/widget/b;->n:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v1, 0x7f0a0449

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1e6
    :goto_1e6
    return-void

    :cond_1e7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_1ed
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_263

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    if-nez v2, :cond_22f

    iget-boolean v15, v8, Lcom/bbm/d/es;->i:Z

    if-eqz v15, :cond_22f

    iget-boolean v15, v8, Lcom/bbm/d/es;->j:Z

    if-nez v15, :cond_22f

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/bbm/ui/activities/eu;->c:Lcom/bbm/d/ec;

    invoke-virtual {v7, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/fd;

    invoke-static {v1}, Lcom/bbm/util/b/h;->a(Lcom/bbm/d/fd;)Lcom/google/b/a/l;

    move-result-object v1

    :goto_21c
    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v15

    if-eqz v15, :cond_22b

    if-nez v2, :cond_242

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v3, v1

    :cond_22b
    :goto_22b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1ed

    :cond_22f
    iget-object v15, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v1, v1, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v7, v15, v1}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/fd;

    invoke-static {v1}, Lcom/bbm/util/b/h;->a(Lcom/bbm/d/fd;)Lcom/google/b/a/l;

    move-result-object v1

    goto :goto_21c

    :cond_242
    const/4 v15, 0x1

    if-ne v2, v15, :cond_24d

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v5, v1

    goto :goto_22b

    :cond_24d
    const/4 v15, 0x2

    if-ne v2, v15, :cond_258

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v6, v1

    goto :goto_22b

    :cond_258
    const/4 v15, 0x3

    if-ne v2, v15, :cond_22b

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v4, v1

    goto :goto_22b

    :cond_263
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/bbm/ui/widget/b;->a(Landroid/widget/RemoteViews;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const v1, 0x7f0a055c

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0a055d

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_107

    :cond_286
    const v13, 0x7f0a044a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    move-object v2, v7

    move-object v3, v11

    move-object v4, v8

    move-object v5, v12

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_120

    :cond_29d
    const v13, 0x7f0a044a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    move-object v2, v7

    move-object v3, v11

    move-object v4, v8

    move-object v5, v12

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_120

    :cond_2b4
    iget-object v1, v11, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->f:Lcom/bbm/d/fk;

    if-eq v1, v2, :cond_2c0

    iget-object v1, v11, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->e:Lcom/bbm/d/fk;

    if-ne v1, v2, :cond_2c6

    :cond_2c0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->h:Landroid/graphics/Bitmap;

    goto/16 :goto_14a

    :cond_2c6
    iget-object v1, v11, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_2de

    iget-object v1, v11, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;

    if-ne v1, v2, :cond_2d8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->p:Landroid/graphics/Bitmap;

    goto/16 :goto_14a

    :cond_2d8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->e:Landroid/graphics/Bitmap;

    goto/16 :goto_14a

    :cond_2de
    iget-object v1, v11, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;

    if-ne v1, v2, :cond_2ea

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->o:Landroid/graphics/Bitmap;

    goto/16 :goto_14a

    :cond_2ea
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->d:Landroid/graphics/Bitmap;

    goto/16 :goto_14a

    :cond_2f0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->f:Landroid/graphics/Bitmap;

    goto/16 :goto_14a

    :cond_2f6
    const v2, 0x7f0a055c

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x7f0a055d

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_162

    :cond_30b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_317

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->f:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_317
    iget-object v1, v11, Lcom/bbm/d/fg;->n:Lcom/bbm/d/fi;

    sget-object v2, Lcom/bbm/d/fi;->c:Lcom/bbm/d/fi;

    if-eq v1, v2, :cond_397

    iget-object v1, v11, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_347

    iget-object v1, v11, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->c:Lcom/bbm/d/fk;

    if-ne v1, v2, :cond_32f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->o:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_32f
    iget-object v1, v11, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->f:Lcom/bbm/d/fk;

    if-eq v1, v2, :cond_33b

    iget-object v1, v11, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v2, Lcom/bbm/d/fk;->e:Lcom/bbm/d/fk;

    if-ne v1, v2, :cond_341

    :cond_33b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->h:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->q:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_347
    iget-object v1, v11, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_353

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->i:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_353
    iget-object v1, v11, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_369

    iget-boolean v1, v8, Lcom/bbm/d/es;->k:Z

    if-eqz v1, :cond_363

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->e:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->m:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_369
    iget-object v1, v11, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_37f

    iget-boolean v1, v8, Lcom/bbm/d/es;->k:Z

    if-eqz v1, :cond_379

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->e:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->j:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_37f
    iget-object v1, v11, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_38b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->k:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_38b
    iget-object v1, v11, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v2, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;

    if-ne v1, v2, :cond_397

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->l:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->n:Landroid/graphics/Bitmap;

    goto/16 :goto_162

    :cond_39d
    const v1, 0x7f0a0449

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_184

    :cond_3a9
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3b9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    const v2, 0x7f0e0775

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1c0

    :cond_3b9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    const v2, 0x7f0e0131

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1c0

    :cond_3c6
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v8

    iget-object v1, v7, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v9

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v2, v9, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3eb

    iget-object v1, v9, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3eb
    if-nez v1, :cond_3fe

    const v1, 0x7f070007

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-wide v3, v9, Lcom/bbm/g/a;->h:J

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3fe
    const/4 v2, 0x1

    invoke-static {v1}, Lcom/bbm/util/b/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/bbm/ui/widget/b;->a(Landroid/widget/RemoteViews;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const v1, 0x7f0a055c

    const v2, 0x7f0e023a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/bbm/g/a;->r:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v7, Lcom/bbm/g/q;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v10, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0a055d

    const v2, 0x7f0e023a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/bbm/g/a;->r:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v7, Lcom/bbm/g/q;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v10, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, v7, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/bbm/g/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_495

    const v2, 0x7f0a044a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_457
    iget-boolean v1, v7, Lcom/bbm/g/q;->e:Z

    if-eqz v1, :cond_4a0

    const v1, 0x7f0a055e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/widget/b;->d:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v1, 0x7f0a055c

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a055d

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_479
    iget-wide v1, v7, Lcom/bbm/g/q;->h:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4c0

    const v1, 0x7f0a0449

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    iget-wide v3, v7, Lcom/bbm/g/q;->h:J

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1e6

    :cond_495
    const v1, 0x7f0a044a

    iget-object v2, v7, Lcom/bbm/g/q;->g:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_457

    :cond_4a0
    const v1, 0x7f0a055e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bbm/ui/widget/b;->e:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v1, 0x7f0a055c

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a055d

    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_479

    :cond_4c0
    const v1, 0x7f0a0449

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1e6
.end method

.method protected final b()Z
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/w;->b()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Lcom/bbm/d/a;->L()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected final c()Lcom/bbm/j/r;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/eu;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/ui/widget/c;

    invoke-direct {v0, p0}, Lcom/bbm/ui/widget/c;-><init>(Lcom/bbm/ui/widget/b;)V

    return-object v0
.end method

.method protected final d()Landroid/widget/RemoteViews;
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/bbm/ui/widget/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030117

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
