.class Lcom/facebook/widget/e;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final a:I = 0x1

#the value of this static final field might be set in the static constructor
.field static final synthetic b:Z = false

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x14

.field private static final g:Ljava/lang/String; = "id"

.field private static final h:Ljava/lang/String; = "name"

.field private static final i:Ljava/lang/String; = "picture"


# instance fields
.field private final j:Ljava/util/Map;

.field private final k:Landroid/view/LayoutInflater;

.field private l:Ljava/util/List;

.field private m:Ljava/util/Map;

.field private n:Ljava/util/Map;

.field private o:Z

.field private p:Ljava/util/List;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Lcom/facebook/widget/g;

.field private u:Lcom/facebook/widget/f;

.field private v:Lcom/facebook/widget/l;

.field private w:Landroid/content/Context;

.field private x:Ljava/util/Map;

.field private y:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/widget/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/widget/e;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->x:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->y:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/facebook/widget/e;->w:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/e;->k:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/facebook/c/c;Lcom/facebook/c/c;Ljava/util/Collection;Ljava/text/Collator;)I
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/widget/e;->b(Lcom/facebook/c/c;Lcom/facebook/c/c;Ljava/util/Collection;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/facebook/widget/e;->k:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/a/s;->com_facebook_picker_activity_circle_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_b
    sget v0, Lcom/facebook/a/r;->com_facebook_picker_row_activity_circle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/widget/e;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/e;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/widget/e;Lcom/facebook/widget/x;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/x;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private a(Lcom/facebook/widget/x;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/widget/e;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_2b

    invoke-virtual {p1}, Lcom/facebook/widget/x;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/widget/e;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_25

    iget-object v0, p0, Lcom/facebook/widget/e;->y:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/widget/e;->x:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v0, p0, Lcom/facebook/widget/e;->x:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    if-eqz p3, :cond_2a

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Lcom/facebook/widget/x;->b()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/widget/x;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v0, :cond_2a

    if-eqz v1, :cond_2a

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/facebook/widget/x;->a()Lcom/facebook/widget/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/u;->b()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_2a
.end method

.method private a(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V
    .registers 6

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-nez p3, :cond_43

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_12

    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_12
    if-nez v0, :cond_1e

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/widget/e;->a()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1e
    new-instance v0, Lcom/facebook/widget/v;

    iget-object v1, p0, Lcom/facebook/widget/e;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/facebook/widget/v;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    invoke-virtual {v0, p0}, Lcom/facebook/widget/v;->a(Ljava/lang/Object;)Lcom/facebook/widget/v;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/e$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/facebook/widget/e$2;-><init>(Lcom/facebook/widget/e;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/v;->a(Lcom/facebook/widget/w;)Lcom/facebook/widget/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/v;->a()Lcom/facebook/widget/u;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/e;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/u;)V

    goto :goto_2

    :cond_43
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static b(Lcom/facebook/c/c;Lcom/facebook/c/c;Ljava/util/Collection;Ljava/text/Collator;)I
    .registers 7

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_27

    if-eqz v0, :cond_27

    invoke-virtual {p3, v1, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_26
    return v0

    :cond_27
    if-nez v1, :cond_2b

    if-eqz v0, :cond_4

    :cond_2b
    if-nez v1, :cond_2f

    const/4 v0, -0x1

    goto :goto_26

    :cond_2f
    const/4 v0, 0x1

    goto :goto_26

    :cond_31
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private k()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-interface {v0}, Lcom/facebook/widget/l;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/widget/e;->u:Lcom/facebook/widget/f;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/facebook/widget/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private l()V
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/e;->n:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/facebook/widget/e;->o:Z

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-interface {v0}, Lcom/facebook/widget/l;->c()I

    move-result v0

    if-nez v0, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-interface {v0}, Lcom/facebook/widget/l;->e()Z

    move v0, v1

    :goto_2c
    iget-object v2, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-interface {v2}, Lcom/facebook/widget/l;->m()Lcom/facebook/c/c;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/widget/e;->g(Lcom/facebook/c/c;)Z

    move-result v2

    if-nez v2, :cond_68

    move v2, v0

    :goto_39
    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-interface {v0}, Lcom/facebook/widget/l;->g()Z

    move-result v0

    if-nez v0, :cond_b2

    iget-object v0, p0, Lcom/facebook/widget/e;->p:Ljava/util/List;

    if-eqz v0, :cond_9a

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v6, Lcom/facebook/widget/e$1;

    invoke-direct {v6, p0, v4}, Lcom/facebook/widget/e$1;-><init>(Lcom/facebook/widget/e;Ljava/text/Collator;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_53

    :cond_68
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v4}, Lcom/facebook/widget/e;->b(Lcom/facebook/c/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_85

    iget-object v5, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    iget-object v5, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/widget/e;->n:Ljava/util/Map;

    invoke-virtual {p0, v4}, Lcom/facebook/widget/e;->f(Lcom/facebook/c/c;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_9a
    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_ae

    if-le v2, v3, :cond_ae

    move v1, v3

    :cond_ae
    iput-boolean v1, p0, Lcom/facebook/widget/e;->o:Z

    goto/16 :goto_25

    :cond_b2
    move v0, v2

    goto/16 :goto_2c
.end method


# virtual methods
.method protected a()I
    .registers 2

    sget v0, Lcom/facebook/a/q;->com_facebook_profile_default_icon:I

    return v0
.end method

.method protected a(Lcom/facebook/c/c;)I
    .registers 3

    sget v0, Lcom/facebook/a/s;->com_facebook_picker_list_row:I

    return v0
.end method

.method a(Ljava/lang/String;Lcom/facebook/c/c;)I
    .registers 10

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v6, p0, Lcom/facebook/widget/e;->o:Z

    if-eqz v6, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    move v0, v3

    :goto_23
    if-nez v0, :cond_36

    move v1, v4

    :cond_26
    :goto_26
    return v1

    :cond_27
    iget-object v6, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_a

    :cond_36
    if-nez p2, :cond_3f

    iget-boolean v0, p0, Lcom/facebook/widget/e;->o:Z

    if-eqz v0, :cond_3d

    move v2, v3

    :cond_3d
    sub-int/2addr v1, v2

    goto :goto_26

    :cond_3f
    iget-object v0, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c;

    invoke-static {v0, p2}, Lcom/facebook/c/d;->a(Lcom/facebook/c/c;Lcom/facebook/c/c;)Z

    move-result v0

    if-nez v0, :cond_26

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4b

    :cond_61
    move v1, v4

    goto :goto_26

    :cond_63
    move v0, v2

    goto :goto_23
.end method

.method protected a(Lcom/facebook/c/c;Landroid/view/View;)Landroid/view/View;
    .registers 8

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/widget/e;->k:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/e;->a(Lcom/facebook/c/c;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/a/r;->com_facebook_picker_checkbox_stub:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/facebook/widget/e;->e()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_21
    :goto_21
    sget v0, Lcom/facebook/a/r;->com_facebook_picker_profile_pic_stub:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/facebook/widget/e;->d()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_32
    return-object v1

    :cond_33
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/widget/e;->a(Landroid/widget/CheckBox;Z)V

    goto :goto_21

    :cond_3d
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_32
.end method

.method protected a(Lcom/facebook/c/c;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/e;->a(Lcom/facebook/c/c;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    :cond_6
    invoke-virtual {p0, p2, p1}, Lcom/facebook/widget/e;->a(Landroid/view/View;Lcom/facebook/c/c;)V

    return-object p2
.end method

.method protected a(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    check-cast p2, Landroid/widget/TextView;

    if-nez p2, :cond_13

    iget-object v0, p0, Lcom/facebook/widget/e;->k:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/a/s;->com_facebook_picker_list_section_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_f
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_13
    move-object v0, p2

    goto :goto_f
.end method

.method a(I)Lcom/facebook/widget/j;
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v2

    :goto_a
    return-object v0

    :cond_b
    iget-boolean v0, p0, Lcom/facebook/widget/e;->o:Z

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-ltz p1, :cond_3f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3f

    iget-object v1, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/c/c;

    move-object v2, v0

    :goto_37
    if-eqz v2, :cond_91

    new-instance v0, Lcom/facebook/widget/j;

    invoke-direct {v0, v2, v1}, Lcom/facebook/widget/j;-><init>(Ljava/lang/String;Lcom/facebook/c/c;)V

    goto :goto_a

    :cond_3f
    sget-boolean v0, Lcom/facebook/widget/e;->b:Z

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/facebook/widget/e;->u:Lcom/facebook/widget/f;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-interface {v0}, Lcom/facebook/widget/l;->b()Z

    move-result v0

    if-nez v0, :cond_55

    :cond_4f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_55
    new-instance v0, Lcom/facebook/widget/j;

    invoke-direct {v0, v2, v2}, Lcom/facebook/widget/j;-><init>(Ljava/lang/String;Lcom/facebook/c/c;)V

    goto :goto_a

    :cond_5b
    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v4, p1, -0x1

    if-nez p1, :cond_74

    move-object v1, v2

    move-object v2, v0

    goto :goto_37

    :cond_74
    iget-object v1, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8a

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/c/c;

    move-object v2, v0

    goto :goto_37

    :cond_8a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int p1, v4, v0

    goto :goto_61

    :cond_91
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "position"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    move-object v1, v2

    goto :goto_37
.end method

.method public a(Ljava/util/Collection;)Ljava/util/List;
    .registers 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/widget/e;->n:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c;

    if-eqz v0, :cond_15

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2f
    return-object v1
.end method

.method public a(III)V
    .registers 9

    if-ge p2, p1, :cond_3

    :cond_2
    return-void

    :cond_3
    move v1, p2

    :goto_4
    if-ltz v1, :cond_25

    invoke-virtual {p0, v1}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v0

    iget-object v2, v0, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    if-eqz v2, :cond_21

    iget-object v0, v0, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/e;->f(Lcom/facebook/c/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/widget/e;->j:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/u;

    if-eqz v0, :cond_21

    invoke-static {v0}, Lcom/facebook/widget/p;->c(Lcom/facebook/widget/u;)V

    :cond_21
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    :cond_25
    const/4 v0, 0x0

    sub-int v1, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v1, p2, p3

    invoke-virtual {p0}, Lcom/facebook/widget/e;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3d
    if-ge v0, p1, :cond_4f

    invoke-virtual {p0, v0}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v3

    iget-object v4, v3, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    if-eqz v4, :cond_4c

    iget-object v3, v3, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_4f
    add-int/lit8 v0, p2, 0x1

    :goto_51
    if-gt v0, v1, :cond_63

    invoke-virtual {p0, v0}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v3

    iget-object v4, v3, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    if-eqz v4, :cond_60

    iget-object v3, v3, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_63
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_67
    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/e;->e(Lcom/facebook/c/c;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/facebook/widget/e;->f(Lcom/facebook/c/c;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/widget/e;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/facebook/widget/e;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_67

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/widget/e;->a(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V

    goto :goto_67
.end method

.method protected a(Landroid/view/View;Lcom/facebook/c/c;)V
    .registers 7

    invoke-virtual {p0, p2}, Lcom/facebook/widget/e;->f(Lcom/facebook/c/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/facebook/widget/e;->c(Lcom/facebook/c/c;)Ljava/lang/CharSequence;

    move-result-object v2

    sget v0, Lcom/facebook/a/r;->com_facebook_picker_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/facebook/widget/e;->d(Lcom/facebook/c/c;)Ljava/lang/CharSequence;

    move-result-object v2

    sget v0, Lcom/facebook/a/r;->picker_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_33

    if-eqz v2, :cond_7f

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/facebook/widget/e;->e()Z

    move-result v0

    if-eqz v0, :cond_48

    sget v0, Lcom/facebook/a/r;->com_facebook_picker_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/facebook/widget/e;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/widget/e;->a(Landroid/widget/CheckBox;Z)V

    :cond_48
    invoke-virtual {p0}, Lcom/facebook/widget/e;->d()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p0, p2}, Lcom/facebook/widget/e;->e(Lcom/facebook/c/c;)Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_7e

    sget v0, Lcom/facebook/a/r;->com_facebook_picker_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/facebook/widget/e;->x:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v2, p0, Lcom/facebook/widget/e;->x:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/x;

    invoke-virtual {v1}, Lcom/facebook/widget/x;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/facebook/widget/x;->a()Lcom/facebook/widget/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/widget/u;->b()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    :cond_85
    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/widget/e;->a(Ljava/lang/String;Ljava/net/URL;Landroid/widget/ImageView;)V

    goto :goto_7e
.end method

.method a(Landroid/widget/CheckBox;Z)V
    .registers 3

    return-void
.end method

.method public a(Lcom/facebook/widget/f;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/e;->u:Lcom/facebook/widget/f;

    return-void
.end method

.method a(Lcom/facebook/widget/g;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/e;->t:Lcom/facebook/widget/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/e;->q:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/e;->p:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/widget/e;->r:Z

    return-void
.end method

.method public a(Lcom/facebook/widget/l;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-interface {v0}, Lcom/facebook/widget/l;->n()V

    :cond_f
    iput-object p1, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-virtual {p0}, Lcom/facebook/widget/e;->h()V

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/e;->o:Z

    return v0
.end method

.method protected b(Lcom/facebook/c/c;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/e;->q:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lcom/facebook/widget/e;->q:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_1f
    if-eqz v0, :cond_22

    :goto_21
    return-object v0

    :cond_22
    const-string v0, ""

    goto :goto_21
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/e;->p:Ljava/util/List;

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/widget/e;->s:Z

    return-void
.end method

.method b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Lcom/facebook/c/c;)Ljava/lang/CharSequence;
    .registers 3

    const-string v0, "name"

    invoke-interface {p1, v0}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Lcom/facebook/c/c;)Ljava/lang/CharSequence;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/e;->r:Z

    return v0
.end method

.method protected e(Lcom/facebook/c/c;)Ljava/net/URL;
    .registers 5

    const/4 v1, 0x0

    const-string v0, "picture"

    invoke-interface {p1, v0}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_16

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_e
    if-eqz v2, :cond_35

    :try_start_10
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_15} :catch_34

    :goto_15
    return-object v0

    :cond_16
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_37

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/c/d;->a(Lorg/json/JSONObject;)Lcom/facebook/c/c;

    move-result-object v0

    const-class v2, Lcom/facebook/widget/h;

    invoke-interface {v0, v2}, Lcom/facebook/c/c;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/h;

    invoke-interface {v0}, Lcom/facebook/widget/h;->a()Lcom/facebook/widget/i;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Lcom/facebook/widget/i;->a()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_e

    :catch_34
    move-exception v0

    :cond_35
    move-object v0, v1

    goto :goto_15

    :cond_37
    move-object v2, v1

    goto :goto_e
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/e;->s:Z

    return v0
.end method

.method public f()Lcom/facebook/widget/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/e;->u:Lcom/facebook/widget/f;

    return-object v0
.end method

.method f(Lcom/facebook/c/c;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Lcom/facebook/c/c;->h()Ljava/util/Map;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "id"

    invoke-interface {p1, v0}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_19

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_19
    new-instance v0, Lcom/facebook/t;

    const-string v1, "Received an object without an ID."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/facebook/widget/l;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    return-object v0
.end method

.method g(Lcom/facebook/c/c;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/e;->t:Lcom/facebook/widget/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/widget/e;->t:Lcom/facebook/widget/g;

    invoke-interface {v0, p1}, Lcom/facebook/widget/g;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getCount()I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    iget-boolean v1, p0, Lcom/facebook/widget/e;->o:Z

    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_14
    iget-object v1, p0, Lcom/facebook/widget/e;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1f

    :cond_32
    invoke-direct {p0}, Lcom/facebook/widget/e;->k()Z

    move-result v0

    if-eqz v0, :cond_3a

    add-int/lit8 v1, v1, 0x1

    :cond_3a
    move v0, v1

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/j;->a()Lcom/facebook/widget/k;

    move-result-object v1

    sget-object v2, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/k;

    if-ne v1, v2, :cond_f

    iget-object v0, v0, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getItemId(I)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    if-eqz v1, :cond_17

    iget-object v0, v0, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/e;->f(Lcom/facebook/c/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_16
    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_16
.end method

.method public getItemViewType(I)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v0

    sget-object v1, Lcom/facebook/widget/e$3;->a:[I

    invoke-virtual {v0}, Lcom/facebook/widget/j;->a()Lcom/facebook/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/k;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_22

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Unexpected type of section and item."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    :pswitch_1f
    const/4 v0, 0x2

    goto :goto_1c

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/facebook/widget/e;->o:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/widget/e;->a(Ljava/lang/String;Lcom/facebook/c/c;)I

    move-result v0

    :cond_2a
    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/facebook/widget/j;->a()Lcom/facebook/widget/k;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/k;->c:Lcom/facebook/widget/k;

    if-eq v2, v3, :cond_27

    iget-object v2, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    iget-object v1, v1, Lcom/facebook/widget/j;->a:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_27
    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/e;->o:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    goto :goto_a
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v0

    sget-object v1, Lcom/facebook/widget/e$3;->a:[I

    invoke-virtual {v0}, Lcom/facebook/widget/j;->a()Lcom/facebook/widget/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/widget/k;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4a

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Unexpected type of section and item."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    iget-object v0, v0, Lcom/facebook/widget/j;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/widget/e;->a(Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_21
    return-object v0

    :pswitch_22
    iget-object v0, v0, Lcom/facebook/widget/j;->b:Lcom/facebook/c/c;

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/widget/e;->a(Lcom/facebook/c/c;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_21

    :pswitch_29
    sget-boolean v0, Lcom/facebook/widget/e;->b:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/widget/e;->v:Lcom/facebook/widget/l;

    invoke-interface {v0}, Lcom/facebook/widget/l;->b()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/facebook/widget/e;->u:Lcom/facebook/widget/f;

    if-nez v0, :cond_3f

    :cond_39
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3f
    iget-object v0, p0, Lcom/facebook/widget/e;->u:Lcom/facebook/widget/f;

    invoke-interface {v0}, Lcom/facebook/widget/f;->a()V

    invoke-direct {p0, p2, p3}, Lcom/facebook/widget/e;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_21

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public h()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/e;->l()V

    invoke-virtual {p0}, Lcom/facebook/widget/e;->notifyDataSetChanged()V

    return-void
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method i()Lcom/facebook/widget/g;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/e;->t:Lcom/facebook/widget/g;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEnabled(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/facebook/widget/e;->a(I)Lcom/facebook/widget/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/j;->a()Lcom/facebook/widget/k;

    move-result-object v0

    sget-object v1, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/k;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method j()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/facebook/widget/e;->a(Lcom/facebook/c/c;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/facebook/a/r;->com_facebook_picker_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_11

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "picture.height(%d).width(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method
