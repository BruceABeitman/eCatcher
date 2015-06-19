.class public final Lcom/bbm/ui/activities/tw;
.super Landroid/widget/BaseAdapter;
.source "GroupsIconActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupsIconActivity;

.field private final b:I

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/GroupsIconActivity;Landroid/content/Context;I)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/tw;->a:Lcom/bbm/ui/activities/GroupsIconActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput p3, p0, Lcom/bbm/ui/activities/tw;->b:I

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/bbm/ui/activities/tw;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/tw;->b:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/bbm/ui/activities/tw;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_c
    const v0, 0x7f0a0470

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bbm/ui/activities/tw;->a:Lcom/bbm/ui/activities/GroupsIconActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupsIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/tw;->a:Lcom/bbm/ui/activities/GroupsIconActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/GroupsIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method
