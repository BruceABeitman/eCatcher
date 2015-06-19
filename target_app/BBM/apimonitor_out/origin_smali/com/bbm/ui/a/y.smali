.class final Lcom/bbm/ui/a/y;
.super Ljava/lang/Object;
.source "GroupMessageListAdapter.java"


# instance fields
.field a:Lcom/bbm/ui/ObservingImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:I

.field g:Z

.field h:Ljava/lang/String;

.field i:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/ui/a/x;",
            ">;"
        }
    .end annotation
.end field

.field j:Z

.field k:Z

.field final synthetic l:Lcom/bbm/ui/a/s;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/a/s;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/y;->l:Lcom/bbm/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/a/s;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/a/y;-><init>(Lcom/bbm/ui/a/s;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/a/y;->l:Lcom/bbm/ui/a/s;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/a/s;->a(I)Lcom/bbm/g/ad;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/g/ad;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/a/y;->l:Lcom/bbm/ui/a/s;

    invoke-static {v0}, Lcom/bbm/ui/a/s;->c(Lcom/bbm/ui/a/s;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/a/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iget-object v0, p0, Lcom/bbm/ui/a/y;->l:Lcom/bbm/ui/a/s;

    invoke-static {v0}, Lcom/bbm/ui/a/s;->d(Lcom/bbm/ui/a/s;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/a/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v0, p0, Lcom/bbm/ui/a/y;->j:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/bbm/ui/a/y;->k:Z

    if-eqz v0, :cond_63

    :cond_28
    const/4 v0, 0x1

    :goto_29
    iget-object v4, p0, Lcom/bbm/ui/a/y;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    iget-boolean v4, p0, Lcom/bbm/ui/a/y;->j:Z

    if-ne v2, v4, :cond_39

    iget-boolean v4, p0, Lcom/bbm/ui/a/y;->k:Z

    if-eq v3, v4, :cond_62

    :cond_39
    iput p1, p0, Lcom/bbm/ui/a/y;->f:I

    iput-object v1, p0, Lcom/bbm/ui/a/y;->h:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/bbm/ui/a/y;->j:Z

    iput-boolean v3, p0, Lcom/bbm/ui/a/y;->k:Z

    iget-object v1, p0, Lcom/bbm/ui/a/y;->i:Lcom/bbm/j/a;

    invoke-virtual {v1}, Lcom/bbm/j/a;->c()V

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/bbm/ui/a/y;->l:Lcom/bbm/ui/a/s;

    invoke-static {v0}, Lcom/bbm/ui/a/s;->b(Lcom/bbm/ui/a/s;)Lcom/bbm/util/fj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bbm/util/fj;->b(Ljava/lang/Object;)V

    :cond_51
    iget-boolean v0, p0, Lcom/bbm/ui/a/y;->j:Z

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/bbm/ui/a/y;->k:Z

    if-eqz v0, :cond_62

    :cond_59
    iget-object v0, p0, Lcom/bbm/ui/a/y;->l:Lcom/bbm/ui/a/s;

    invoke-static {v0}, Lcom/bbm/ui/a/s;->b(Lcom/bbm/ui/a/s;)Lcom/bbm/util/fj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bbm/util/fj;->a(Ljava/lang/Object;)V

    :cond_62
    return-void

    :cond_63
    const/4 v0, 0x0

    goto :goto_29
.end method
