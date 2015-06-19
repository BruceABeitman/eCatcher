.class public final Lcom/spotify/mobile/android/util/PlaybackListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private final b:Lcom/spotify/mobile/android/util/cs;

.field private final c:Lcom/spotify/mobile/android/util/ct;

.field private final d:Lcom/spotify/mobile/android/util/cs;

.field private final e:Lcom/spotify/mobile/android/util/ct;

.field private final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/spotify/mobile/android/util/cb;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/net/Uri;

.field private m:Landroid/net/Uri;

.field private n:I

.field private o:Z

.field private p:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/util/PlaybackListener$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/PlaybackListener$1;-><init>(Lcom/spotify/mobile/android/util/PlaybackListener;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->c:Lcom/spotify/mobile/android/util/ct;

    new-instance v0, Lcom/spotify/mobile/android/util/PlaybackListener$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/PlaybackListener$2;-><init>(Lcom/spotify/mobile/android/util/PlaybackListener;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->e:Lcom/spotify/mobile/android/util/ct;

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->f:Ljava/util/Collection;

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/PlaybackListener;->t()V

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->c:Lcom/spotify/mobile/android/util/ct;

    invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->b:Lcom/spotify/mobile/android/util/cs;

    new-instance v0, Lcom/spotify/mobile/android/util/cs;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->e:Lcom/spotify/mobile/android/util/ct;

    invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/util/cs;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ct;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->d:Lcom/spotify/mobile/android/util/cs;

    return-void
.end method

.method private a(Ljava/util/EnumSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/spotify/mobile/android/util/PlaybackListener$Change;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/cb;

    invoke-interface {v0, p0, p1}, Lcom/spotify/mobile/android/util/cb;->a(Lcom/spotify/mobile/android/util/PlaybackListener;Ljava/util/EnumSet;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private t()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->l:Landroid/net/Uri;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->m:Landroid/net/Uri;

    iput v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->n:I

    iput-boolean v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->o:Z

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->u:Lcom/spotify/mobile/android/g/a;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->v:Lcom/spotify/mobile/android/g/a;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->q:Lcom/spotify/mobile/android/g/a;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->r:Lcom/spotify/mobile/android/g/a;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->s:Lcom/spotify/mobile/android/g/a;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->t:Lcom/spotify/mobile/android/g/a;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->w:Lcom/spotify/mobile/android/g/a;

    invoke-static {}, Lcom/spotify/mobile/android/g/a;->a()Lcom/spotify/mobile/android/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->p:Lcom/spotify/mobile/android/g/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->b:Lcom/spotify/mobile/android/util/cs;

    sget-object v1, Lcom/spotify/mobile/android/util/cj;->a:Landroid/net/Uri;

    sget-object v2, Lcom/spotify/mobile/android/util/cj;->b:[Ljava/lang/String;

    const-string v3, "limit=1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->d:Lcom/spotify/mobile/android/util/cs;

    sget-object v1, Lcom/spotify/mobile/android/util/ck;->a:Landroid/net/Uri;

    sget-object v2, Lcom/spotify/mobile/android/util/ck;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cs;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/cb;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->f:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;IZ)V
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->g:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->l:Landroid/net/Uri;

    iput-object p6, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->m:Landroid/net/Uri;

    iput p7, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->n:I

    iput-boolean p8, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->o:Z

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->a:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_26
    invoke-direct {p0, v1}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Ljava/util/EnumSet;)V

    return-void
.end method

.method public final a(ZZZZLcom/spotify/mobile/android/provider/Metadata$Track$AdType;IZZLjava/lang/String;)V
    .registers 21

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->g:Z

    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->p:Lcom/spotify/mobile/android/g/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->q:Lcom/spotify/mobile/android/g/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->r:Lcom/spotify/mobile/android/g/a;

    iget-object v4, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->s:Lcom/spotify/mobile/android/g/a;

    iget-object v5, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->t:Lcom/spotify/mobile/android/g/a;

    iget-object v6, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->u:Lcom/spotify/mobile/android/g/a;

    iget-object v7, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->v:Lcom/spotify/mobile/android/g/a;

    iget-object v8, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->w:Lcom/spotify/mobile/android/g/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v9

    iput-object v9, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->p:Lcom/spotify/mobile/android/g/a;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v9

    iput-object v9, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->q:Lcom/spotify/mobile/android/g/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v9

    iput-object v9, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->r:Lcom/spotify/mobile/android/g/a;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v9

    iput-object v9, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->s:Lcom/spotify/mobile/android/g/a;

    invoke-static/range {p5 .. p5}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v9

    iput-object v9, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->t:Lcom/spotify/mobile/android/g/a;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v9

    iput-object v9, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->u:Lcom/spotify/mobile/android/g/a;

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v9

    iput-object v9, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->v:Lcom/spotify/mobile/android/g/a;

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/spotify/mobile/android/g/a;->a(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v9

    iput-object v9, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->w:Lcom/spotify/mobile/android/g/a;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->a:Ljava/lang/String;

    const-class v9, Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-static {v9}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v9

    iget-object v10, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->p:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->b:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_76
    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->q:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_83
    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->r:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_90
    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->s:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_9d
    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->t:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_aa
    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->u:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->b:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_b7
    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->v:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c4

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->d:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_c4
    iget-object v1, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->w:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d1

    sget-object v1, Lcom/spotify/mobile/android/util/PlaybackListener$Change;->c:Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-virtual {v9, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_d1
    invoke-virtual {v9}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_da

    invoke-direct {p0, v9}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Ljava/util/EnumSet;)V

    :cond_da
    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->b:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->d:Lcom/spotify/mobile/android/util/cs;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cs;->b()V

    return-void
.end method

.method public final b(Lcom/spotify/mobile/android/util/cb;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->f:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->g:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/spotify/mobile/android/util/PlaybackListener;->t()V

    const-class v0, Lcom/spotify/mobile/android/util/PlaybackListener$Change;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/PlaybackListener;->a(Ljava/util/EnumSet;)V

    goto :goto_4
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->l:Landroid/net/Uri;

    return-object v0
.end method

.method public final i()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->m:Landroid/net/Uri;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->n:I

    return v0
.end method

.method public final l()I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->u:Lcom/spotify/mobile/android/g/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final m()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->p:Lcom/spotify/mobile/android/g/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->q:Lcom/spotify/mobile/android/g/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->r:Lcom/spotify/mobile/android/g/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->s:Lcom/spotify/mobile/android/g/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final q()Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->t:Lcom/spotify/mobile/android/g/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    return-object v0
.end method

.method public final r()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->w:Lcom/spotify/mobile/android/g/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final s()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/PlaybackListener;->v:Lcom/spotify/mobile/android/g/a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/g/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
