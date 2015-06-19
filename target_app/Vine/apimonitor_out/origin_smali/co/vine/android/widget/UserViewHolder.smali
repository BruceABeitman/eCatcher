.class public Lco/vine/android/widget/UserViewHolder;
.super Ljava/lang/Object;
.source "UserViewHolder.java"


# instance fields
.field public avatarUrl:Lco/vine/android/util/image/ImageKey;

.field public bio:Landroid/widget/TextView;

.field public followButton:Landroid/widget/ImageButton;

.field public image:Landroid/widget/ImageView;

.field public location:Landroid/widget/TextView;

.field public userId:J

.field public username:Landroid/widget/TextView;

.field public verified:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->username:Landroid/widget/TextView;

    const v0, 0x7f0a0230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const v0, 0x7f0a0231

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const v0, 0x7f0a022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    const v0, 0x7f0a0063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    const v0, 0x7f0a022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/widget/UserViewHolder;->verified:Landroid/widget/ImageView;

    return-void
.end method
