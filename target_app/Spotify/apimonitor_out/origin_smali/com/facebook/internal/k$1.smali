.class final Lcom/facebook/internal/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/k;->a(Lcom/facebook/internal/o;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/p;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Z

.field final synthetic d:Landroid/graphics/Bitmap;

.field final synthetic e:Lcom/facebook/internal/r;


# direct methods
.method constructor <init>(Lcom/facebook/internal/p;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/r;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/internal/k$1;->a:Lcom/facebook/internal/p;

    iput-object p2, p0, Lcom/facebook/internal/k$1;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lcom/facebook/internal/k$1;->c:Z

    iput-object p4, p0, Lcom/facebook/internal/k$1;->d:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/facebook/internal/k$1;->e:Lcom/facebook/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    new-instance v0, Lcom/facebook/internal/s;

    iget-object v1, p0, Lcom/facebook/internal/k$1;->a:Lcom/facebook/internal/p;

    iget-object v2, p0, Lcom/facebook/internal/k$1;->b:Ljava/lang/Exception;

    iget-boolean v3, p0, Lcom/facebook/internal/k$1;->c:Z

    iget-object v4, p0, Lcom/facebook/internal/k$1;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/internal/s;-><init>(Lcom/facebook/internal/p;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/facebook/internal/k$1;->e:Lcom/facebook/internal/r;

    invoke-interface {v1, v0}, Lcom/facebook/internal/r;->a(Lcom/facebook/internal/s;)V

    return-void
.end method
