.class Lcom/twidroid/net/b/a$1;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/b/a;->a(Lcom/twidroid/net/b/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/b/a;


# direct methods
.method constructor <init>(Lcom/twidroid/net/b/a;I)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/b/a$1;->a:Lcom/twidroid/net/b/a;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/twidroid/net/b/c;Landroid/graphics/Bitmap;)I
    .registers 4

    invoke-static {p2}, Lcom/twidroid/net/b/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/twidroid/net/b/c;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/net/b/a$1;->a(Lcom/twidroid/net/b/c;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
