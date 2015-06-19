.class public abstract Lcom/twidroid/ui/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "no_app_tag_assigned_to_item"

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5


# instance fields
.field private a:I

.field protected c:I

.field public d:I

.field protected e:Z

.field protected f:Z

.field m:I

.field n:Ljava/lang/String;

.field o:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    iput v1, p0, Lcom/twidroid/ui/c/h;->d:I

    iput-boolean v1, p0, Lcom/twidroid/ui/c/h;->e:Z

    const-string v0, "no_app_tag_assigned_to_item"

    iput-object v0, p0, Lcom/twidroid/ui/c/h;->s:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/twidroid/ui/c/h;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/ui/c/h;->m:I

    iput-object v2, p0, Lcom/twidroid/ui/c/h;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/twidroid/ui/c/h;->o:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/twidroid/ui/c/h;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/ui/c/h;->m:I

    iput-object v1, p0, Lcom/twidroid/ui/c/h;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/twidroid/ui/c/h;->o:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/h;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/ui/c/h;->c()V

    iput-object p1, p0, Lcom/twidroid/ui/c/h;->o:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/c/h;->q:Z

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/twidroid/ui/c/h;->a:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/c/h;->r:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/c/h;->r:Z

    return v0
.end method

.method public c(I)Lcom/twidroid/ui/c/h;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/ui/c/h;->c()V

    iput p1, p0, Lcom/twidroid/ui/c/h;->m:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/ui/c/h;->c()V

    iput-object p1, p0, Lcom/twidroid/ui/c/h;->n:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/twidroid/ui/c/h;
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/c/h;->e:Z

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/h;->s:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/c/h;->f:Z

    return-void
.end method

.method public abstract e()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/twidroid/ui/c/h;

    iget-object v2, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-boolean v2, p0, Lcom/twidroid/ui/c/h;->e:Z

    iget-boolean v3, p1, Lcom/twidroid/ui/c/h;->e:Z

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget v2, p0, Lcom/twidroid/ui/c/h;->c:I

    iget v3, p1, Lcom/twidroid/ui/c/h;->c:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/c/h;->a:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/twidroid/ui/c/h;->s:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/twidroid/ui/c/h;->e:Z

    if-eqz v0, :cond_1d

    const/16 v0, 0x4cf

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twidroid/ui/c/h;->c:I

    add-int/2addr v0, v1

    return v0

    :cond_16
    iget-object v0, p0, Lcom/twidroid/ui/c/h;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_1d
    const/16 v0, 0x4d5

    goto :goto_f
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/c/h;->c:I

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/c/h;->e:Z

    return v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/c/h;->m:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/c/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/c/h;->f:Z

    return v0
.end method
