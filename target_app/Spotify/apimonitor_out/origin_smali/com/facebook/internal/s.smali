.class public final Lcom/facebook/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/internal/p;

.field private b:Ljava/lang/Exception;

.field private c:Z

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/facebook/internal/p;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/s;->a:Lcom/facebook/internal/p;

    iput-object p2, p0, Lcom/facebook/internal/s;->b:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/facebook/internal/s;->d:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/facebook/internal/s;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/internal/p;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/s;->a:Lcom/facebook/internal/p;

    return-object v0
.end method

.method public final b()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/s;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public final c()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/s;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/internal/s;->c:Z

    return v0
.end method
