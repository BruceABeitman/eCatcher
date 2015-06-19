.class Lcom/twidroid/ui/a/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/s;

.field private b:Landroid/graphics/drawable/Drawable;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/twidroid/ui/a/s;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/ui/a/t;->a:Lcom/twidroid/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/ui/a/t;->b:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/twidroid/ui/a/t;->c:Ljava/lang/String;

    iput p4, p0, Lcom/twidroid/ui/a/t;->d:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/t;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/t;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/a/t;->d:I

    return v0
.end method
