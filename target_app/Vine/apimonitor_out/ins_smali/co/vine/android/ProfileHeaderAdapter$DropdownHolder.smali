.class public Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;
.super Ljava/lang/Object;
.source "ProfileHeaderAdapter.java"
.field public final revineIcon:Landroid/widget/ImageView;
.field public final revineLabel:Landroid/widget/TextView;
.field public final revineParent:Landroid/view/View;
.method public constructor <init>(Landroid/view/View;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const v0, 0x7f0a0197
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;->revineParent:Landroid/view/View;
const v0, 0x7f0a0198
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;->revineLabel:Landroid/widget/TextView;
const v0, 0x7f0a0199
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;->revineIcon:Landroid/widget/ImageView;
return-void
.end method