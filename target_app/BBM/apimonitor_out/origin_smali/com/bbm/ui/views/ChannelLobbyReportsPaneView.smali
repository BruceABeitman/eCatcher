.class public Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;
.super Lcom/bbm/ui/views/ShadowFrame;
.source "ChannelLobbyReportsPaneView.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/app/Activity;

.field public final a:Lcom/bbm/j/k;

.field public final b:Lcom/bbm/j/k;

.field public final c:Lcom/bbm/j/k;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/bbm/ui/ObservingImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/bbm/ui/SquaredObservingImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fa;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/fb;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/bbm/d/fa;

.field private t:Lcom/bbm/d/fb;

.field private u:I

.field private v:I

.field private w:Lcom/bbm/util/m;

.field private x:Lcom/bbm/util/o;

.field private final y:Lcom/bbm/d/a;

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    iput v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/views/i;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/i;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->a:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/views/j;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/j;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->b:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/views/k;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/k;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->c:Lcom/bbm/j/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    iput v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/views/i;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/i;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->a:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/views/j;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/j;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->b:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/views/k;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/k;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->c:Lcom/bbm/j/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    iput v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/views/i;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/i;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->a:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/views/j;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/j;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->b:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/views/k;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/k;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->c:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->G(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->q:Lcom/bbm/j/w;

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->q:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->q:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    iget v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    if-lez v0, :cond_95

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->q:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fa;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->s:Lcom/bbm/d/fa;

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->s:Lcom/bbm/d/fa;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->s:Lcom/bbm/d/fa;

    iget-object v0, v0, Lcom/bbm/d/fa;->c:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v1, :cond_42

    :cond_41
    :goto_41
    return-void

    :cond_42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    iget-object v3, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->s:Lcom/bbm/d/fa;

    iget-object v4, v4, Lcom/bbm/d/fa;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_5e} :catch_90

    :goto_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "post"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->c(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/da;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/da;->a(Ljava/lang/String;)Lcom/bbm/d/da;

    new-instance v2, Lcom/bbm/ui/views/l;

    invoke-direct {v2, p0}, Lcom/bbm/ui/views/l;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    invoke-virtual {v2, v0, p0}, Lcom/bbm/ui/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_41

    :catch_90
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_5e

    :cond_95
    invoke-virtual {p0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->a()V

    goto :goto_41
.end method

.method static synthetic b(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->F(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->r:Lcom/bbm/j/w;

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->r:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->r:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    iget v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    if-lez v0, :cond_99

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->r:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fb;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->t:Lcom/bbm/d/fb;

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->t:Lcom/bbm/d/fb;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->t:Lcom/bbm/d/fb;

    iget-object v0, v0, Lcom/bbm/d/fb;->d:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v1, :cond_42

    :cond_41
    :goto_41
    return-void

    :cond_42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    iget-object v3, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->t:Lcom/bbm/d/fb;

    iget-object v4, v4, Lcom/bbm/d/fb;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->t:Lcom/bbm/d/fb;

    iget-object v5, v5, Lcom/bbm/d/fb;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/bbm/util/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_62} :catch_94

    :goto_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "comment"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->c(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/da;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/da;->a(Ljava/lang/String;)Lcom/bbm/d/da;

    new-instance v2, Lcom/bbm/ui/views/m;

    invoke-direct {v2, p0}, Lcom/bbm/ui/views/m;-><init>(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)V

    invoke-virtual {v2, v0, p0}, Lcom/bbm/ui/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_41

    :catch_94
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_62

    :cond_99
    invoke-virtual {p0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->a()V

    goto :goto_41
.end method

.method static synthetic c(Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->z:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 15

    const/4 v13, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v12, 0x0

    const/16 v11, 0x8

    iget v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    if-ltz v0, :cond_37

    iget v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    if-ltz v0, :cond_37

    iget v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    if-nez v0, :cond_38

    iget v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0621

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    new-instance v0, Lcom/bbm/d/fw;

    invoke-direct {v0}, Lcom/bbm/d/fw;-><init>()V

    iget v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    if-nez v1, :cond_e7

    move-wide v1, v3

    :goto_42
    new-instance v7, Lcom/bbm/d/eo;

    invoke-direct {v7}, Lcom/bbm/d/eo;-><init>()V

    iget v8, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    if-nez v8, :cond_114

    move-wide v8, v3

    :goto_4c
    cmp-long v10, v1, v5

    if-lez v10, :cond_37

    cmp-long v5, v8, v5

    if-lez v5, :cond_37

    cmp-long v1, v1, v8

    if-lez v1, :cond_15a

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->x:Lcom/bbm/util/o;

    if-eqz v1, :cond_79

    iget-object v1, v0, Lcom/bbm/d/fw;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->x:Lcom/bbm/util/o;

    iget-object v2, v2, Lcom/bbm/util/o;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    iput-object v13, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->x:Lcom/bbm/util/o;

    :cond_79
    iget-object v1, v0, Lcom/bbm/d/fw;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_145

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->x:Lcom/bbm/util/o;

    if-nez v2, :cond_8f

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    iget-object v3, v0, Lcom/bbm/d/fw;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;

    move-result-object v1

    iput-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->x:Lcom/bbm/util/o;

    :cond_8f
    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->x:Lcom/bbm/util/o;

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v12}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->x:Lcom/bbm/util/o;

    iget-object v4, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v3, v4, v13, v1, v2}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;II)V

    :cond_af
    :goto_af
    iget-object v1, v0, Lcom/bbm/d/fw;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14c

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_bc
    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->j:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/bbm/d/fw;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c3
    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0620

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->u:I

    iget v4, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->v:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_37

    :cond_e7
    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->s:Lcom/bbm/d/fa;

    iget-object v2, v2, Lcom/bbm/d/fa;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->v(Ljava/lang/String;)Lcom/bbm/d/fw;

    move-result-object v0

    if-eqz v0, :cond_24b

    iget-object v1, v0, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_10b

    iget-object v1, v0, Lcom/bbm/d/fw;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto/16 :goto_42

    :cond_10b
    iget-object v1, v0, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_24b

    move-wide v1, v3

    goto/16 :goto_42

    :cond_114
    iget-object v7, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    iget-object v8, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    iget-object v9, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->t:Lcom/bbm/d/fb;

    iget-object v9, v9, Lcom/bbm/d/fb;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->t:Lcom/bbm/d/fb;

    iget-object v10, v10, Lcom/bbm/d/fb;->b:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/bbm/util/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bbm/d/a;->O(Ljava/lang/String;)Lcom/bbm/d/eo;

    move-result-object v7

    if-eqz v7, :cond_248

    iget-object v8, v7, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v8, v9, :cond_13c

    iget-object v8, v7, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto/16 :goto_4c

    :cond_13c
    iget-object v8, v7, Lcom/bbm/d/eo;->q:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v8, v9, :cond_248

    move-wide v8, v3

    goto/16 :goto_4c

    :cond_145
    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v11}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto/16 :goto_af

    :cond_14c
    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->i:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bbm/d/fw;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bc

    :cond_15a
    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean v0, v7, Lcom/bbm/d/eo;->c:Z

    if-eqz v0, :cond_1e5

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_19e

    new-instance v0, Lcom/bbm/util/b/a;

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->B:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->B:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b00aa

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->l:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bbm/util/b/a;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    :cond_19e
    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1ad
    :goto_1ad
    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->m:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/bbm/d/eo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->n:Landroid/widget/TextView;

    iget-object v0, v7, Lcom/bbm/d/eo;->o:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_245

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->z:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/bbm/util/bd;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_1d9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->o:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/bbm/d/eo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c3

    :cond_1e5
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, v7, Lcom/bbm/d/eo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_203

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->l:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto :goto_1ad

    :cond_203
    iget-object v0, v7, Lcom/bbm/d/eo;->b:Ljava/util/List;

    if-eqz v0, :cond_236

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_236

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->l:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/SquaredObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v1}, Lcom/bbm/util/m;->a(Ljava/util/List;I)Lcom/bbm/util/m;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->w:Lcom/bbm/util/m;

    if-eqz v1, :cond_225

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->w:Lcom/bbm/util/m;

    invoke-virtual {v1, v0}, Lcom/bbm/util/m;->a(Lcom/bbm/util/m;)Z

    move-result v1

    if-nez v1, :cond_1ad

    :cond_225
    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->w:Lcom/bbm/util/m;

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->l:Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->w:Lcom/bbm/util/m;

    iget-object v2, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->z:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/bbm/util/m;->a(Landroid/content/Context;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto/16 :goto_1ad

    :cond_236
    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->l:Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->y:Lcom/bbm/d/a;

    iget-object v1, v1, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1ad

    :cond_245
    const-string v0, ""

    goto :goto_1d9

    :cond_248
    move-wide v8, v5

    goto/16 :goto_4c

    :cond_24b
    move-wide v1, v5

    goto/16 :goto_42
.end method

.method protected final a(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->z:Landroid/content/Context;

    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->setViewStub(I)V

    const v0, 0x7f0a0256

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->d:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0257

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0258

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0259

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0a025b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->h:Lcom/bbm/ui/ObservingImageView;

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->h:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    const v0, 0x7f0a025d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->i:Landroid/widget/TextView;

    const v0, 0x7f0a025e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->j:Landroid/widget/TextView;

    const v0, 0x7f0a025f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0260

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SquaredObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->l:Lcom/bbm/ui/SquaredObservingImageView;

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->l:Lcom/bbm/ui/SquaredObservingImageView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setLimitedLengthAnimation(Z)V

    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->m:Landroid/widget/TextView;

    const v0, 0x7f0a0262

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->n:Landroid/widget/TextView;

    const v0, 0x7f0a0264

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->o:Landroid/widget/TextView;

    const v0, 0x7f0a025a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->p:Landroid/widget/TextView;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->B:Landroid/app/Activity;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->A:Ljava/lang/String;

    return-void
.end method
