.class Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;
.super Ljava/lang/Object;
.source "ProfileHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ProfileHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PagerDetailsViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public location:Landroid/widget/TextView;

.field public parent:Landroid/view/View;

.field public userLoopCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->parent:Landroid/view/View;

    const v0, 0x7f0a019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->location:Landroid/widget/TextView;

    const v0, 0x7f0a019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f0a019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;->userLoopCount:Landroid/widget/TextView;

    return-void
.end method
