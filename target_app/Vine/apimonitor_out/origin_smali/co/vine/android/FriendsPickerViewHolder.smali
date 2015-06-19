.class public Lco/vine/android/FriendsPickerViewHolder;
.super Lco/vine/android/widget/UserViewHolder;
.source "FriendsPickerViewHolder.java"


# instance fields
.field public divider:Landroid/view/View;

.field private final mColoredIndicatorMap:Lco/vine/android/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public recipient:Lco/vine/android/api/VineRecipient;

.field public sectionIndicator:Landroid/view/View;

.field public sectionSort:Landroid/widget/TextView;

.field public sectionTitle:Landroid/widget/TextView;

.field public selectionIndicator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/util/SparseArray;Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lco/vine/android/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lco/vine/android/widget/UserViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lco/vine/android/FriendsPickerViewHolder;->mColoredIndicatorMap:Lco/vine/android/util/SparseArray;

    const v0, 0x7f0a0148

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FriendsPickerViewHolder;->selectionIndicator:Landroid/view/View;

    const v0, 0x7f0a0120

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FriendsPickerViewHolder;->sectionIndicator:Landroid/view/View;

    const v0, 0x7f0a01ab

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/FriendsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01aa

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/FriendsPickerViewHolder;->sectionSort:Landroid/widget/TextView;

    const v0, 0x7f0a0060

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FriendsPickerViewHolder;->divider:Landroid/view/View;

    iget-object v0, p0, Lco/vine/android/FriendsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/FriendsPickerViewHolder;->sectionSort:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lco/vine/android/util/Util;->styleSectionHeader(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public setSelected(Landroid/content/res/Resources;Z)V
    .registers 7

    if-eqz p2, :cond_56

    const/4 v0, 0x0

    iget-object v1, p0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v1, v1, Lco/vine/android/api/VineRecipient;->color:I

    if-lez v1, :cond_11

    iget-object v1, p0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v1, v1, Lco/vine/android/api/VineRecipient;->color:I

    sget v2, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-ne v1, v2, :cond_49

    :cond_11
    iget-object v1, p0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    const v2, 0x7f090096

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Lco/vine/android/api/VineRecipient;->color:I

    :goto_1c
    if-nez v0, :cond_43

    const v1, 0x7f02015a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x100

    iget-object v3, p0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v3, v3, Lco/vine/android/api/VineRecipient;->color:I

    or-int/2addr v2, v3

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lco/vine/android/FriendsPickerViewHolder;->mColoredIndicatorMap:Lco/vine/android/util/SparseArray;

    iget-object v2, p0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v2, v2, Lco/vine/android/api/VineRecipient;->color:I

    invoke-virtual {v1, v2, v0}, Lco/vine/android/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_43
    iget-object v1, p0, Lco/vine/android/FriendsPickerViewHolder;->selectionIndicator:Landroid/view/View;

    invoke-static {v1, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_48
    return-void

    :cond_49
    iget-object v1, p0, Lco/vine/android/FriendsPickerViewHolder;->mColoredIndicatorMap:Lco/vine/android/util/SparseArray;

    iget-object v2, p0, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v2, v2, Lco/vine/android/api/VineRecipient;->color:I

    invoke-virtual {v1, v2}, Lco/vine/android/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_1c

    :cond_56
    const v1, 0x7f020159

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f09001a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lco/vine/android/FriendsPickerViewHolder;->selectionIndicator:Landroid/view/View;

    invoke-static {v1, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_48
.end method
