.class public Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;
.super Ljava/lang/Object;
.source "MenuUsersAdapter.java"
.field public avatarKey:Lco/vine/android/util/image/ImageKey;
.field public divider:Landroid/view/View;
.field public friendName:Landroid/widget/TextView;
.field public image:Landroid/widget/ImageView;
.field public position:I
.field public recipient:Lco/vine/android/api/VineRecipient;
.field public sectionIndicator:Landroid/view/View;
.field public sectionSort:Landroid/widget/TextView;
.field public sectionTitle:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f0a0125
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->friendName:Landroid/widget/TextView;
const v0, 0x7f0a0063
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->image:Landroid/widget/ImageView;
const v0, 0x7f0a0120
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionIndicator:Landroid/view/View;
const v0, 0x7f0a01ab
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionTitle:Landroid/widget/TextView;
const v0, 0x7f0a01aa
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionSort:Landroid/widget/TextView;
const v0, 0x7f0a0060
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->divider:Landroid/view/View;
iget-object v0, p0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionTitle:Landroid/widget/TextView;
iget-object v1, p0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionSort:Landroid/widget/TextView;
invoke-static {p1, v0, v1}, Lco/vine/android/util/Util;->styleSectionHeader(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
return-void
.end method