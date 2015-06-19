.class Lcom/twidroid/ui/a/u;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/s;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/s;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/u;->a:Lcom/twidroid/ui/a/s;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/u;->b([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/ui/a/u;->a:Lcom/twidroid/ui/a/s;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/s;->notifyDataSetChanged()V

    :cond_e
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/u;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a_([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/twidroid/ui/a/u;->a:Lcom/twidroid/ui/a/s;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/s;->notifyDataSetChanged()V

    return-void
.end method

.method protected synthetic a_([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/u;->a([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 9

    const/4 v6, 0x1

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Lcom/b/a/a/a/a/n;

    iget-object v0, p0, Lcom/twidroid/ui/a/u;->a:Lcom/twidroid/ui/a/s;

    invoke-static {v0}, Lcom/twidroid/ui/a/s;->a(Lcom/twidroid/ui/a/s;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/b/a/a/a/a/n;-><init>(Landroid/graphics/Bitmap;)V

    move v1, v2

    :goto_e
    const/16 v0, 0xa

    if-ge v1, v0, :cond_4c

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Lcom/b/a/a/a/a/n;->c()Lcom/b/a/a/a/a/n;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/b/a/a/a/a/f;->a(Lcom/b/a/a/a/a/n;I)Lcom/b/a/a/a/a/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/b/a/a/a/a/n;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/twidroid/ui/a/u;->a:Lcom/twidroid/ui/a/s;

    invoke-static {v5}, Lcom/twidroid/ui/a/s;->b(Lcom/twidroid/ui/a/s;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/t;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Lcom/twidroid/ui/a/t;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v0, v4

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/a/u;->e([Ljava/lang/Object;)V
    :try_end_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_42} :catch_46

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :catch_46
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_4b
    return-object v0

    :cond_4c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4b
.end method
