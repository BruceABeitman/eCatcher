.class Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;
.super Ljava/lang/Object;
.source "ProfileHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ProfileHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileViewHolder"
.end annotation


# instance fields
.field public final dots:Lco/vine/android/widget/DotIndicators;

.field public final dropDownHolder:Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;

.field public final follow:Landroid/widget/Button;

.field public final likesLabel:Lco/vine/android/widget/TypefacesTextView;

.field public final likesParent:Landroid/view/View;

.field public final messageButton:Landroid/widget/Button;

.field public final pager:Landroid/support/v4/view/ViewPager;

.field public final postsLabel:Lco/vine/android/widget/TypefacesTextView;

.field public final postsParent:Landroid/view/View;

.field public final profileActions:Landroid/view/ViewGroup;

.field public final profileBackground:Landroid/widget/RelativeLayout;

.field public final profileTabArrow:Landroid/view/ViewGroup;

.field public final profileTabArrowImage:Landroid/widget/ImageView;

.field public final progress:Landroid/widget/ProgressBar;

.field public final settings:Landroid/widget/Button;

.field public userId:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x7f0a00da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->pager:Landroid/support/v4/view/ViewPager;

    const v1, 0x7f0a018a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileBackground:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a018d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->follow:Landroid/widget/Button;

    const v1, 0x7f0a018c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->settings:Landroid/widget/Button;

    const v1, 0x7f0a018e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->messageButton:Landroid/widget/Button;

    const v1, 0x7f0a0190

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsParent:Landroid/view/View;

    const v1, 0x7f0a0191

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/TypefacesTextView;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->postsLabel:Lco/vine/android/widget/TypefacesTextView;

    const v1, 0x7f0a0194

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesParent:Landroid/view/View;

    const v1, 0x7f0a0195

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/TypefacesTextView;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->likesLabel:Lco/vine/android/widget/TypefacesTextView;

    const v1, 0x7f0a019a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->progress:Landroid/widget/ProgressBar;

    const v1, 0x7f0a0192

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileTabArrow:Landroid/view/ViewGroup;

    const v1, 0x7f0a0193

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileTabArrowImage:Landroid/widget/ImageView;

    const v1, 0x7f0a00db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lco/vine/android/widget/DotIndicators;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dots:Lco/vine/android/widget/DotIndicators;

    const v1, 0x7f0a018b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->profileActions:Landroid/view/ViewGroup;

    const v1, 0x7f0a0196

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;

    invoke-direct {v1, v0}, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dropDownHolder:Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;

    iget-object v1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewHolder;->dropDownHolder:Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
