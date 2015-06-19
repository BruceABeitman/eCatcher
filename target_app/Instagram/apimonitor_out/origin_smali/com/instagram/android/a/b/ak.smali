.class final Lcom/instagram/android/a/b/ak;
.super Ljava/lang/Object;
.source "ReviewPhotoMapTypeRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/a/q;

.field final synthetic b:Lcom/instagram/android/a/b/al;


# direct methods
.method constructor <init>(Lcom/instagram/android/a/q;Lcom/instagram/android/a/b/al;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/a/b/ak;->a:Lcom/instagram/android/a/q;

    iput-object p2, p0, Lcom/instagram/android/a/b/ak;->b:Lcom/instagram/android/a/b/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/a/b/ak;->a:Lcom/instagram/android/a/q;

    iget-object v1, v1, Lcom/instagram/android/a/q;->a:Lcom/instagram/android/maps/b/f;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_13
    iget-object v1, p0, Lcom/instagram/android/a/b/ak;->b:Lcom/instagram/android/a/b/al;

    iget-object v2, v1, Lcom/instagram/android/a/b/al;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    const/16 v1, 0x80

    :goto_1b
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/a/b/ak;->a:Lcom/instagram/android/a/q;

    iget-object v1, v1, Lcom/instagram/android/a/q;->a:Lcom/instagram/android/maps/b/f;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Ljava/util/Collection;)V

    :goto_2f
    return-void

    :cond_30
    const/4 v0, 0x0

    goto :goto_13

    :cond_32
    const/16 v1, 0xff

    goto :goto_1b

    :cond_35
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/a/b/ak;->a:Lcom/instagram/android/a/q;

    iget-object v1, v1, Lcom/instagram/android/a/q;->a:Lcom/instagram/android/maps/b/f;

    invoke-virtual {v1}, Lcom/instagram/android/maps/b/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Ljava/util/Collection;)V

    goto :goto_2f
.end method
