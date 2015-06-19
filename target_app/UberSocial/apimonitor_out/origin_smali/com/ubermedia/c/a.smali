.class public Lcom/ubermedia/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/MotionEvent;


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ubermedia/c/a;->a:Landroid/view/MotionEvent;

    return-void
.end method

.method public static a(Landroid/view/MotionEvent;)Lcom/ubermedia/c/a;
    .registers 2

    :try_start_0
    new-instance v0, Lcom/ubermedia/c/b;

    invoke-direct {v0, p0}, Lcom/ubermedia/c/b;-><init>(Landroid/view/MotionEvent;)V
    :try_end_5
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-object v0

    :catch_6
    move-exception v0

    new-instance v0, Lcom/ubermedia/c/a;

    invoke-direct {v0, p0}, Lcom/ubermedia/c/a;-><init>(Landroid/view/MotionEvent;)V

    goto :goto_5
.end method

.method private d(I)V
    .registers 4

    if-lez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pointer index not supported by Android < 2.1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method


# virtual methods
.method public a(I)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/c/a;->d(I)V

    invoke-virtual {p0}, Lcom/ubermedia/c/a;->b()F

    move-result v0

    return v0
.end method

.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/c/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public b()F
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/c/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public b(I)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/c/a;->d(I)V

    invoke-virtual {p0}, Lcom/ubermedia/c/a;->c()F

    move-result v0

    return v0
.end method

.method public c()F
    .registers 2

    iget-object v0, p0, Lcom/ubermedia/c/a;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public c(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/c/a;->d(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
