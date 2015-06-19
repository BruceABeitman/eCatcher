.class public Lboston/Bus/Map/ui/ModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lboston/Bus/Map/ui/ViewingMode;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lboston/Bus/Map/ui/ViewingMode;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f030002

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lboston/Bus/Map/ui/ModeAdapter;->setDropDownViewResource(I)V

    iput-object p1, p0, Lboston/Bus/Map/ui/ModeAdapter;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    if-nez p2, :cond_10

    iget-object v5, p0, Lboston/Bus/Map/ui/ModeAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_10
    const v5, 0x7f090007

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v5, 0x7f090008

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lboston/Bus/Map/ui/ModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboston/Bus/Map/ui/ViewingMode;

    iget-object v5, v0, Lboston/Bus/Map/ui/ViewingMode;->string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lboston/Bus/Map/ui/ModeAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Lboston/Bus/Map/ui/ViewingMode;->drawable:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    if-nez p2, :cond_10

    iget-object v4, p0, Lboston/Bus/Map/ui/ModeAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_10
    const v4, 0x7f090005

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lboston/Bus/Map/ui/ModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lboston/Bus/Map/ui/ViewingMode;

    iget-object v4, p0, Lboston/Bus/Map/ui/ModeAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v0, Lboston/Bus/Map/ui/ViewingMode;->drawable:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
