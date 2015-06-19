.class public final Lcom/bbm/ui/activities/afc;
.super Lcom/bbm/ui/ef;
.source "SelectGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/ui/ef",
        "<",
        "Lcom/bbm/g/a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/bbm/ui/activities/SelectGroupActivity;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/SelectGroupActivity;Lcom/bbm/j/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/g/a;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/activities/afc;->b:Lcom/bbm/ui/activities/SelectGroupActivity;

    invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/activities/afc;->b:Lcom/bbm/ui/activities/SelectGroupActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectGroupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/afd;

    iget-object v0, p0, Lcom/bbm/ui/activities/afc;->b:Lcom/bbm/ui/activities/SelectGroupActivity;

    invoke-direct {v2, v0}, Lcom/bbm/ui/activities/afd;-><init>(Lcom/bbm/ui/activities/SelectGroupActivity;)V

    const v0, 0x7f0a0411

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, v2, Lcom/bbm/ui/activities/afd;->a:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a0412

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/bbm/ui/activities/afd;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/bbm/g/a;

    iget-object v0, p1, Lcom/bbm/g/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 9

    check-cast p2, Lcom/bbm/g/a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/afd;

    iget-object v1, p2, Lcom/bbm/g/a;->r:Ljava/lang/String;

    :try_start_a
    iget-object v2, p2, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-wide v2, p2, Lcom/bbm/g/a;->h:J

    long-to-int v2, v2

    iget-object v3, p0, Lcom/bbm/ui/activities/afc;->b:Lcom/bbm/ui/activities/SelectGroupActivity;

    invoke-virtual {v3}, Lcom/bbm/ui/activities/SelectGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    iget-object v4, v0, Lcom/bbm/ui/activities/afd;->a:Lcom/bbm/ui/ObservingImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :goto_2f
    iget-object v2, v0, Lcom/bbm/ui/activities/afd;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/bbm/ui/activities/afd;->b:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3b
    return-void

    :cond_3c
    iget-object v2, p2, Lcom/bbm/g/a;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_54

    iget-object v2, v0, Lcom/bbm/ui/activities/afd;->a:Lcom/bbm/ui/ObservingImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
    :try_end_4c
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_4c} :catch_4d

    goto :goto_2f

    :catch_4d
    move-exception v0

    iget-object v0, p0, Lcom/bbm/ui/activities/afc;->b:Lcom/bbm/ui/activities/SelectGroupActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectGroupActivity;->finish()V

    goto :goto_3b

    :cond_54
    :try_start_54
    new-instance v3, Lcom/bbm/util/cr;

    new-instance v4, Lcom/bbm/d/fd;

    invoke-direct {v4, v2}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v3, v4}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/bbm/ui/activities/afd;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2, v3}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
    :try_end_63
    .catch Ljava/lang/NullPointerException; {:try_start_54 .. :try_end_63} :catch_4d

    goto :goto_2f
.end method
