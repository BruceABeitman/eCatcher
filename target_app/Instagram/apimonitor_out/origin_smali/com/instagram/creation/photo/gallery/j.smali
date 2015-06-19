.class final Lcom/instagram/creation/photo/gallery/j;
.super Ljava/lang/Object;
.source "ImageListUber.java"


# instance fields
.field a:I

.field b:J

.field c:Lcom/instagram/creation/photo/gallery/c;

.field private d:I

.field private final e:Lcom/instagram/creation/photo/gallery/d;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/photo/gallery/d;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/creation/photo/gallery/j;->d:I

    iput-object p1, p0, Lcom/instagram/creation/photo/gallery/j;->e:Lcom/instagram/creation/photo/gallery/d;

    iput p2, p0, Lcom/instagram/creation/photo/gallery/j;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget v0, p0, Lcom/instagram/creation/photo/gallery/j;->d:I

    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/j;->e:Lcom/instagram/creation/photo/gallery/d;

    invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/d;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/j;->e:Lcom/instagram/creation/photo/gallery/d;

    iget v1, p0, Lcom/instagram/creation/photo/gallery/j;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/instagram/creation/photo/gallery/j;->d:I

    invoke-interface {v0, v1}, Lcom/instagram/creation/photo/gallery/d;->a(I)Lcom/instagram/creation/photo/gallery/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/j;->c:Lcom/instagram/creation/photo/gallery/c;

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/j;->c:Lcom/instagram/creation/photo/gallery/c;

    invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/creation/photo/gallery/j;->b:J

    const/4 v0, 0x1

    goto :goto_d
.end method
