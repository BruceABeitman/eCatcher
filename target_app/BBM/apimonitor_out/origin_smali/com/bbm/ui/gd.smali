.class final Lcom/bbm/ui/gd;
.super Lcom/bbm/d/b/f;
.source "StickerPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/f",
        "<",
        "Lcom/bbm/d/gf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/StickerPicker;


# direct methods
.method constructor <init>(Lcom/bbm/ui/StickerPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/gd;->a:Lcom/bbm/ui/StickerPicker;

    invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/gf;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bbm/d/gg;

    invoke-direct {v0}, Lcom/bbm/d/gg;-><init>()V

    iget-object v2, p0, Lcom/bbm/ui/gd;->a:Lcom/bbm/ui/StickerPicker;

    invoke-static {v2}, Lcom/bbm/ui/StickerPicker;->c(Lcom/bbm/ui/StickerPicker;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v2

    iput-object v2, v0, Lcom/bbm/d/gg;->a:Lcom/google/b/a/l;

    iget-object v2, p0, Lcom/bbm/ui/gd;->a:Lcom/bbm/ui/StickerPicker;

    invoke-static {v2}, Lcom/bbm/ui/StickerPicker;->d(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/d/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gg;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gf;

    iget-boolean v3, v0, Lcom/bbm/d/gf;->d:Z

    if-nez v3, :cond_2a

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3e
    return-object v1
.end method
