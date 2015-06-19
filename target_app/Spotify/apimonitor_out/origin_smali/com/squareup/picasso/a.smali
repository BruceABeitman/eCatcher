.class abstract Lcom/squareup/picasso/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/squareup/picasso/Picasso;

.field final b:Lcom/squareup/picasso/ab;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Z

.field final f:I

.field final g:Landroid/graphics/drawable/Drawable;

.field final h:Ljava/lang/String;

.field i:Z

.field j:Z


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/ab;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/picasso/Picasso;",
            "TT;",
            "Lcom/squareup/picasso/ab;",
            "ZZI",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    iput-object p3, p0, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/ab;

    new-instance v0, Lcom/squareup/picasso/b;

    iget-object v1, p1, Lcom/squareup/picasso/Picasso;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p2, v1}, Lcom/squareup/picasso/b;-><init>(Lcom/squareup/picasso/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/squareup/picasso/a;->c:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/squareup/picasso/a;->d:Z

    iput-boolean p5, p0, Lcom/squareup/picasso/a;->e:Z

    iput p6, p0, Lcom/squareup/picasso/a;->f:I

    iput-object p7, p0, Lcom/squareup/picasso/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/squareup/picasso/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
.end method

.method b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/picasso/a;->j:Z

    return-void
.end method
