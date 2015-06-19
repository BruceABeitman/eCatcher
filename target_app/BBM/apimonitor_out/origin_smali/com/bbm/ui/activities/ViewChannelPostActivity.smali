.class public Lcom/bbm/ui/activities/ViewChannelPostActivity;
.super Lcom/bbm/ui/activities/cn;
.source "ViewChannelPostActivity.java"


# static fields
.field private static final t:Ljava/util/regex/Pattern;

.field private static final u:Ljava/util/regex/Pattern;


# instance fields
.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lcom/bbm/j/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/x",
            "<",
            "Lcom/bbm/d/el;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/bbm/j/k;

.field private J:Lcom/bbm/j/k;

.field private K:Landroid/view/View;

.field private L:Lcom/bbm/d/el;

.field private M:Z

.field private N:Lcom/bbm/ui/FooterActionBar;

.field private O:Landroid/widget/ImageView;

.field private P:Lcom/bbm/ui/ActionBarItem;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Lcom/bbm/ui/ObservingImageView;

.field private V:Landroid/widget/ImageButton;

.field private W:Landroid/widget/ImageView;

.field private X:Landroid/widget/TextView;

.field private Y:Lcom/bbm/util/o;

.field private Z:Lcom/bbm/j/k;

.field a:Lcom/bbm/d/ec;

.field private aa:Z

.field private ab:Z

.field private final ac:Lcom/bbm/ui/c/fq;

.field private final ad:Landroid/view/View$OnClickListener;

.field private final ae:Lcom/bbm/ui/c/fq;

.field b:Ljava/lang/String;

.field public c:Lcom/bbm/ui/a/k;

.field d:Lcom/bbm/ui/views/ChannelPostCommentListView;

.field public e:I

.field f:Lcom/bbm/ui/EmoticonInputPanel;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/TextView;

.field i:Z

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/ImageButton;

.field m:Landroid/widget/ImageButton;

.field n:Landroid/view/View;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/ImageView;

.field q:Landroid/widget/ProgressBar;

.field r:Z

.field final s:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final v:Lcom/bbm/d/a;

.field private w:Lcom/bbm/d/ek;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-string v0, "\\b[Cc][0-9a-f]{8}\\b"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->t:Ljava/util/regex/Pattern;

    const-string v0, "\\b[0-9a-f]{8}\\b"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->u:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v:Lcom/bbm/d/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i:Z

    new-instance v0, Lcom/bbm/ui/activities/aji;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aji;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/bbm/ui/activities/aiv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aiv;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ac:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/activities/aiw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aiw;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ad:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/activities/ajd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ajd;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ae:Lcom/bbm/ui/c/fq;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e:I

    return p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/util/List;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/bbm/util/r;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Y:Lcom/bbm/util/o;

    iget-object v2, v2, Lcom/bbm/util/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v1, "imageUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Y:Lcom/bbm/util/o;

    iget-object v2, v2, Lcom/bbm/util/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_22
    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Y:Lcom/bbm/util/o;

    iget-object v2, v2, Lcom/bbm/util/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "postId"

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {v2}, Lcom/bbm/util/ac;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_37
    const-string v2, "imageUri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_22
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->K:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/d/ec;)Lcom/bbm/d/ec;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/d/ek;)Lcom/bbm/d/ek;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/d/el;)Lcom/bbm/d/el;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/EmoticonInputPanel;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/ui/c/fm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b(Lcom/bbm/ui/c/fm;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/ui/c/fm;Z)V
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    iget-boolean v1, v1, Lcom/bbm/d/el;->c:Z

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    :goto_e
    iget-object v4, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    iget-object v4, v4, Lcom/bbm/d/el;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_39

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f0a0044

    const v5, 0x7f02002c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e01e8

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/slidingmenu/a;)V

    :cond_39
    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f0a0035

    const v5, 0x7f020266

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e0420

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/bbm/ui/slidingmenu/a;->b(Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    iget-object v3, v3, Lcom/bbm/d/el;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v:Lcom/bbm/d/a;

    invoke-virtual {v4}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v3, v3, Lcom/bbm/d/ec;->t:Z

    if-eqz v3, :cond_9b

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    iget-boolean v3, v3, Lcom/bbm/d/el;->l:Z

    if-nez v3, :cond_9b

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f0a0031

    const v5, 0x7f020243

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e0177

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    iget-object v9, v9, Lcom/bbm/d/el;->f:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9b
    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v3, v3, Lcom/bbm/d/ec;->t:Z

    if-eqz v3, :cond_d3

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f020268

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e02ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/bbm/ui/activities/aje;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/aje;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    invoke-virtual {p1, v3}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    :cond_c5
    :goto_c5
    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ae:Lcom/bbm/ui/c/fq;

    iput-object v3, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    invoke-virtual {p1, v1, v2, v0}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    :goto_cc
    return-void

    :cond_cd
    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    iget-object v1, v1, Lcom/bbm/d/el;->f:Ljava/lang/String;

    goto/16 :goto_e

    :cond_d3
    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    iget-object v3, v3, Lcom/bbm/d/el;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v:Lcom/bbm/d/a;

    invoke-virtual {v4}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c5

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    iget-boolean v3, v3, Lcom/bbm/d/el;->j:Z

    if-eqz v3, :cond_109

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    const v4, 0x7f0a0043

    const v5, 0x7f020297

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e01e1

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/slidingmenu/a;)V

    goto :goto_c5

    :catch_107
    move-exception v0

    goto :goto_cc

    :cond_109
    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a0047

    const v4, 0x7f020297

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e01e2

    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/bbm/ui/activities/ajf;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ajf;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    invoke-virtual {p1, v3}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/slidingmenu/a;)V
    :try_end_12b
    .catch Lcom/bbm/j/z; {:try_start_1 .. :try_end_12b} :catch_107

    goto :goto_c5
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v1, Lcom/bbm/ui/activities/ViewChannelPostActivity;->u:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_1a
    move v0, v4

    :goto_1b
    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v8, v0, 0x8

    const v0, 0x7f0e01c6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    new-instance v5, Lcom/bbm/ui/activities/ais;

    invoke-direct {v5, p0}, Lcom/bbm/ui/activities/ais;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    const/16 v6, 0x30

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILandroid/content/DialogInterface$OnDismissListener;III)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :goto_43
    return-void

    :cond_44
    move v0, v7

    goto :goto_1b

    :cond_46
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-object v1, v1, Lcom/bbm/d/ec;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {v2, p1, v0, v3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/cn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :goto_88
    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    invoke-virtual {v1}, Lcom/bbm/ui/a/k;->d()V

    :cond_91
    const-string v1, ""

    iput-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b:Ljava/lang/String;

    new-instance v1, Lcom/bbm/ui/activities/ait;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ait;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    iput-object p0, v1, Lcom/bbm/ui/d/h;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    invoke-virtual {v2, v0, v1, p0}, Lcom/bbm/ui/d/d;->a(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V

    goto :goto_43

    :cond_a6
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {v2, p1, v0, v3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/cn;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/d/cn;->a(Ljava/lang/String;)Lcom/bbm/d/cn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_88
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method private a(Lcom/bbm/ui/slidingmenu/a;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->q:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    if-eqz v0, :cond_12

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bbm/ui/slidingmenu/a;->b(Z)V

    :cond_12
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Y:Lcom/bbm/util/o;

    if-nez v0, :cond_2d

    if-eqz p1, :cond_15f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15f

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Y:Lcom/bbm/util/o;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Y:Lcom/bbm/util/o;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Y:Lcom/bbm/util/o;

    iget-object v0, v0, Lcom/bbm/util/o;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    :cond_26
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    :cond_2d
    :goto_2d
    invoke-static {p2}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_168

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3a
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->R:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->T:Landroid/widget/TextView;

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string p5, "0"

    :cond_4b
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->V:Landroid/widget/ImageButton;

    if-eqz p4, :cond_175

    const v0, 0x7f02005b

    :goto_55
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->P:Lcom/bbm/ui/ActionBarItem;

    if-eqz v0, :cond_74

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->P:Lcom/bbm/ui/ActionBarItem;

    if-eqz p4, :cond_17a

    const v0, 0x7f020415

    :goto_63
    invoke-virtual {v1, v0}, Lcom/bbm/ui/ActionBarItem;->setIcon(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->P:Lcom/bbm/ui/ActionBarItem;

    if-eqz p4, :cond_17f

    const v0, 0x7f0e01d0

    :goto_6d
    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ActionBarItem;->setText(Ljava/lang/CharSequence;)V

    :cond_74
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->e:Z

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_84

    const-string p6, "0"

    :cond_84
    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_87
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_97

    const-string p7, "0"

    :cond_97
    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9a
    if-eqz p8, :cond_188

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->S:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->S:Landroid/widget/TextView;

    invoke-static {p8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_184

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_c5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c8
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-object v4, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->W:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->X:Landroid/widget/TextView;

    move-wide/from16 v1, p10

    move v3, p9

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/ac;->a(Lcom/bbm/d/ec;JZLandroid/widget/ImageView;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v:Lcom/bbm/d/a;

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_f1

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->H:Lcom/bbm/j/x;

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->e:Z

    if-eqz v0, :cond_f1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l()V

    :cond_f1
    return-void

    :cond_f2
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Y:Lcom/bbm/util/o;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Lcom/bbm/util/o;->b:I

    int-to-float v2, v2

    iget v3, v0, Lcom/bbm/util/o;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p0}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I

    move-result v3

    if-le v2, v3, :cond_14e

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/bbm/util/o;->a:I

    mul-int/2addr v2, v3

    iget v3, v0, Lcom/bbm/util/o;->b:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_124
    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v5, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    invoke-virtual/range {v0 .. v5}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;IIZ)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    new-instance v1, Lcom/bbm/ui/activities/ajb;

    invoke-direct {v1, p0, p1}, Lcom/bbm/ui/activities/ajb;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2d

    :cond_14e
    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v3}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_124

    :cond_15f
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto/16 :goto_2d

    :cond_168
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3a

    :cond_175
    const v0, 0x7f02005a

    goto/16 :goto_55

    :cond_17a
    const v0, 0x7f0202ff

    goto/16 :goto_63

    :cond_17f
    const v0, 0x7f0e01c8

    goto/16 :goto_6d

    :cond_184
    const-string v0, ""

    goto/16 :goto_c5

    :cond_188
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->S:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c8
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    return p1
.end method

.method private b(Lcom/bbm/ui/c/fm;)V
    .registers 9

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a003f

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    iget-boolean v0, v0, Lcom/bbm/d/ek;->i:Z

    if-eqz v0, :cond_a2

    const v0, 0x7f020415

    :goto_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    iget-boolean v0, v0, Lcom/bbm/d/ek;->i:Z

    if-eqz v0, :cond_a7

    const v0, 0x7f0e01d0

    :goto_21
    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v5, v0, v3}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-nez v0, :cond_b4

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    iget-boolean v0, v0, Lcom/bbm/d/ek;->h:Z

    if-eqz v0, :cond_ac

    const v0, 0x7f0a0042

    :goto_3c
    const v1, 0x7f020297

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    iget-boolean v1, v1, Lcom/bbm/d/ek;->h:Z

    if-eqz v1, :cond_b0

    const v1, 0x7f0e01d9

    :goto_4c
    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v5, v1, v3}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/slidingmenu/a;)V

    move-object v0, v2

    :goto_57
    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v1, v1, Lcom/bbm/d/ec;->u:Z

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v1, v1, Lcom/bbm/d/ec;->t:Z

    if-eqz v1, :cond_95

    :cond_63
    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a004d

    const v5, 0x7f02027c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e01dc

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6, v3}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0048

    const v5, 0x7f020298

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0e01cf

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6, v3}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_95
    invoke-virtual {p1, v4, v3, v0}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ac:Lcom/bbm/ui/c/fq;

    iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ad:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_a2
    const v0, 0x7f0202ff

    goto/16 :goto_14

    :cond_a7
    const v0, 0x7f0e01c8

    goto/16 :goto_21

    :cond_ac
    const v0, 0x7f0a0046

    goto :goto_3c

    :cond_b0
    const v1, 0x7f0e01ce

    goto :goto_4c

    :cond_b4
    move-object v0, v3

    goto :goto_57
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->m()V

    return-void
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 7

    invoke-static {}, Lcom/bbm/util/fb;->a()V

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e04bf

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/Toast;->getYOffset()I

    move-result v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b03aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->K:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l()V

    return-void
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/views/ChannelPostCommentListView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d:Lcom/bbm/ui/views/ChannelPostCommentListView;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    return-object v0
.end method

.method private k()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->aa:Z

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ab:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->J:Lcom/bbm/j/k;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->J:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    :cond_e
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Z:Lcom/bbm/j/k;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Z:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    :cond_17
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->I:Lcom/bbm/j/k;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->I:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    :cond_20
    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    return-void
.end method

.method static synthetic l(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->v:Lcom/bbm/d/a;

    return-object v0
.end method

.method private l()V
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "id"

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->G:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->c(Ljava/lang/String;Z)Lcom/bbm/j/x;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->H:Lcom/bbm/j/x;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Z:Lcom/bbm/j/k;

    if-nez v0, :cond_29

    new-instance v0, Lcom/bbm/ui/activities/aiy;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aiy;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Z:Lcom/bbm/j/k;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Z:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_29
    new-instance v0, Lcom/bbm/ui/a/k;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->H:Lcom/bbm/j/x;

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bbm/ui/a/k;-><init>(Lcom/bbm/j/x;Lcom/bbm/d/ec;Ljava/lang/String;ZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d:Lcom/bbm/ui/views/ChannelPostCommentListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelPostCommentListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in searching: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_40
.end method

.method static synthetic m(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/j/x;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->H:Lcom/bbm/j/x;

    return-object v0
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    iget-boolean v0, v0, Lcom/bbm/d/ek;->i:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_7
    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;ZLjava/lang/String;)Lcom/bbm/d/au;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic n(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f()V

    return-void
.end method

.method static synthetic o(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic p(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ab:Z

    return v0
.end method

.method static synthetic q(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->ab:Z

    return v0
.end method

.method static synthetic r(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->aa:Z

    return v0
.end method

.method static synthetic s(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.bbm.ui.activities.extra_channel_post_preview_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    :try_start_11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "channelDisplayName"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "postImages"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_38

    :goto_28
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_38

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_38
    const-string v0, "postContent"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "postTitle"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_53
.end method

.method static synthetic t(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->M:Z

    return v0
.end method

.method static synthetic u(Lcom/bbm/ui/activities/ViewChannelPostActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e:I

    return v0
.end method

.method static synthetic v(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/el;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->L:Lcom/bbm/d/el;

    return-object v0
.end method

.method static synthetic w(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->M:Z

    iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    sparse-switch p1, :sswitch_data_6a

    :goto_e
    return-void

    :sswitch_f
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->m()V

    goto :goto_e

    :sswitch_15
    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    iget-object v1, v1, Lcom/bbm/d/ek;->k:Ljava/util/List;

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/util/o;->c:Ljava/lang/String;

    :cond_2d
    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    iget-object v1, v1, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    iget-object v2, v2, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0, v3}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :sswitch_3b
    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/bbm/util/ac;->a(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :sswitch_45
    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/bbm/util/ac;->b(Lcom/bbm/ui/activities/ev;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :sswitch_4f
    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    invoke-static {v1, p0, v0}, Lcom/bbm/util/s;->a(Lcom/bbm/d/ec;Landroid/app/Activity;Landroid/widget/ImageView;)V

    goto :goto_e

    :sswitch_55
    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->finish()V

    goto :goto_e

    :sswitch_60
    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :sswitch_data_6a
    .sparse-switch
        0x7f0a003e -> :sswitch_4f
        0x7f0a003f -> :sswitch_f
        0x7f0a0042 -> :sswitch_45
        0x7f0a0046 -> :sswitch_3b
        0x7f0a0048 -> :sswitch_15
        0x7f0a004d -> :sswitch_60
        0x7f0a0050 -> :sswitch_55
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbm/ui/activities/ajn;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ajn;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d:Lcom/bbm/ui/views/ChannelPostCommentListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bbm/ui/views/ChannelPostCommentListView;->a:Z

    :cond_1c
    return-void
.end method

.method public final a(Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->d()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_17
    const/4 v0, 0x1

    :goto_18
    if-nez v0, :cond_29

    iget-object v3, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->O:Landroid/widget/ImageView;

    if-eqz p1, :cond_2c

    move v0, v1

    :goto_1f
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    if-eqz p1, :cond_2e

    :goto_26
    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    :cond_29
    return-void

    :cond_2a
    move v0, v1

    goto :goto_18

    :cond_2c
    move v0, v2

    goto :goto_1f

    :cond_2e
    move v1, v2

    goto :goto_26
.end method

.method protected final a(Lcom/bbm/ui/c/fm;)Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->w:Lcom/bbm/d/ek;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    if-nez v0, :cond_12

    :cond_8
    new-instance v0, Lcom/bbm/ui/activities/ajg;

    invoke-direct {v0, p0, p1}, Lcom/bbm/ui/activities/ajg;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/ui/c/fm;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    :goto_10
    const/4 v0, 0x1

    return v0

    :cond_12
    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b(Lcom/bbm/ui/c/fm;)V

    goto :goto_10
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->aa:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected final d()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->d()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->a()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setBackActionEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->aa:Z

    if-eqz v0, :cond_32

    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e058f

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_32
    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k()V

    return-void
.end method

.method final f()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->a()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->P:Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0a003f

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :cond_19
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->u:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_3c

    :cond_25
    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020298

    const v3, 0x7f0e01cf

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const v2, 0x7f0a0048

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :cond_3c
    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f02001d

    const v3, 0x7f0e04bc

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const v2, 0x7f0a003e

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0202d4

    const v3, 0x7f0e076a

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const v2, 0x7f0a0050

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :cond_66
    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    if-nez v0, :cond_7b

    const/4 v0, 0x1

    :goto_6d
    invoke-virtual {v1, v0}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    new-instance v0, Lcom/bbm/ui/activities/aiu;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aiu;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    return-void

    :cond_7b
    const/4 v0, 0x0

    goto :goto_6d
.end method

.method protected final g()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->g()V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->M:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    invoke-virtual {v0}, Lcom/bbm/ui/a/k;->d()V

    :cond_10
    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b:Ljava/lang/String;

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->M:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/cn;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_14

    const/4 v0, 0x1

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/bbm/ui/activities/aix;

    invoke-direct {v0, p0, p3}, Lcom/bbm/ui/activities/aix;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    :cond_14
    :goto_14
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1e

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1e

    invoke-static {p0, p3}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a:Lcom/bbm/d/ec;

    invoke-static {p3, p0, v0}, Lcom/bbm/util/ac;->a(Landroid/content/Intent;Landroid/content/Context;Lcom/bbm/d/ec;)V

    goto :goto_14
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    invoke-virtual {v0}, Lcom/bbm/ui/a/k;->d()V

    :cond_11
    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b:Ljava/lang/String;

    :goto_15
    return-void

    :cond_16
    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onBackPressed()V

    goto :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300f7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a04e9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/views/OverrideBackPressed;

    const v1, 0x7f030017

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/OverrideBackPressed;->setViewStub(I)V

    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/EmoticonPanelViewLayout;

    const v1, 0x7f0a0130

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/views/ChannelPostCommentListView;

    iput-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d:Lcom/bbm/ui/views/ChannelPostCommentListView;

    const v1, 0x7f0a0135

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bbm/ui/EmoticonInputPanel;

    iput-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setEmoticonInputPanel(Lcom/bbm/ui/EmoticonInputPanel;)V

    new-instance v1, Lcom/bbm/ui/activities/ajh;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ajh;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setLowerPanelVisibilityListener(Lcom/bbm/ui/bo;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    const v1, 0x7f0a0570

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonInputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->g:Landroid/widget/EditText;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->Q:Landroid/widget/TextView;

    const v0, 0x7f0a011c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->R:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->R:Landroid/widget/TextView;

    new-instance v2, Lcom/bbm/ui/activities/air;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/air;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a011d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->S:Landroid/widget/TextView;

    const v0, 0x7f0a011f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0a0121

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->T:Landroid/widget/TextView;

    const v0, 0x7f0a0119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->U:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a011e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l:Landroid/widget/ImageButton;

    const v0, 0x7f0a0120

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->V:Landroid/widget/ImageButton;

    const v0, 0x7f0a013f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->W:Landroid/widget/ImageView;

    const v0, 0x7f0a0140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->X:Landroid/widget/TextView;

    const v0, 0x7f0a013d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->m:Landroid/widget/ImageButton;

    const v0, 0x7f0a013e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->V:Landroid/widget/ImageButton;

    new-instance v2, Lcom/bbm/ui/activities/ajc;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/ajc;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d:Lcom/bbm/ui/views/ChannelPostCommentListView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelPostCommentListView;->addHeaderView(Landroid/view/View;)V

    const v0, 0x7f0a0131

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0134

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->q:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0133

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->p:Landroid/widget/ImageView;

    const v0, 0x7f0a0132

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0a0141

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->N:Lcom/bbm/ui/FooterActionBar;

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->O:Landroid/widget/ImageView;

    new-instance v0, Lcom/bbm/ui/ActionBarItem;

    const v1, 0x7f02005a

    const v2, 0x7f0e01c8

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->P:Lcom/bbm/ui/ActionBarItem;

    new-instance v0, Lcom/bbm/ui/activities/aiz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aiz;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->I:Lcom/bbm/j/k;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PostKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/ac;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->G:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.bbm.ui.activities.extra_channel_post_preview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    new-instance v1, Lcom/bbm/ui/activities/aja;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/aja;-><init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->J:Lcom/bbm/j/k;

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V

    invoke-direct {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "startComment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->I:Lcom/bbm/j/k;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->I:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_1e
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->J:Lcom/bbm/j/k;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->J:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_27
    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->c:Lcom/bbm/ui/a/k;

    invoke-virtual {v0}, Lcom/bbm/ui/a/k;->notifyDataSetChanged()V

    :cond_30
    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->c()V

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/f/a;->b()V

    invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ViewChannelPostActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V

    return-void
.end method
