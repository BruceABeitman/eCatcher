.class Lcom/facebook/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/widget/u;

.field private b:Ljava/lang/Exception;

.field private c:Z

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/facebook/widget/u;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/widget/x;->a:Lcom/facebook/widget/u;

    iput-object p2, p0, Lcom/facebook/widget/x;->b:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/facebook/widget/x;->d:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/facebook/widget/x;->c:Z

    return-void
.end method


# virtual methods
.method a()Lcom/facebook/widget/u;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/x;->a:Lcom/facebook/widget/u;

    return-object v0
.end method

.method b()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/x;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method c()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/x;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/widget/x;->c:Z

    return v0
.end method
