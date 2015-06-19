.class  Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ProfileHeaderAdapter.java"
.field public static final PAGER_COUNT:I = 0x2
.field public static final PAGER_INDEX_DETAILS:I = 0x1
.field public static final PAGER_INDEX_MAIN:I
.field final synthetic this$0:Lco/vine/android/ProfileHeaderAdapter;
.method private constructor <init>(Lco/vine/android/ProfileHeaderAdapter;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/ProfileHeaderAdapter;Lco/vine/android/ProfileHeaderAdapter$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;-><init>(Lco/vine/android/ProfileHeaderAdapter;)V
return-void
.end method
.method public getCount()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 8
const/4 v4, 0x0
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v2
const-string v3, "layout_inflater"
invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
packed-switch p2, :pswitch_data_68
const/4 v1, 0x0
:cond_11
:goto_11
return-object v1
:pswitch_12
const v2, 0x7f030078
invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
new-instance v3, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;
invoke-direct {v3, v1}, Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;-><init>(Landroid/view/View;)V
#setter for: Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerMain:Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;
invoke-static {v2, v3}, Lco/vine/android/ProfileHeaderAdapter;->access$102(Lco/vine/android/ProfileHeaderAdapter;Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;)Lco/vine/android/ProfileHeaderAdapter$PagerMainViewHolder;
invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
#getter for: Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;
invoke-static {v2}, Lco/vine/android/ProfileHeaderAdapter;->access$200(Lco/vine/android/ProfileHeaderAdapter;)Lco/vine/android/api/VineUser;
move-result-object v2
if-eqz v2, :cond_11
iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
#getter for: Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;
invoke-static {v3}, Lco/vine/android/ProfileHeaderAdapter;->access$200(Lco/vine/android/ProfileHeaderAdapter;)Lco/vine/android/api/VineUser;
move-result-object v3
invoke-virtual {v2, v3}, Lco/vine/android/ProfileHeaderAdapter;->bindUser(Lco/vine/android/api/VineUser;)V
goto :goto_11
:pswitch_3a
const v2, 0x7f030077
invoke-virtual {v0, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
new-instance v3, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;
invoke-direct {v3, v1}, Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;-><init>(Landroid/view/View;)V
#setter for: Lco/vine/android/ProfileHeaderAdapter;->mHolderPagerDetails:Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;
invoke-static {v2, v3}, Lco/vine/android/ProfileHeaderAdapter;->access$302(Lco/vine/android/ProfileHeaderAdapter;Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;)Lco/vine/android/ProfileHeaderAdapter$PagerDetailsViewHolder;
invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
#getter for: Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;
invoke-static {v2}, Lco/vine/android/ProfileHeaderAdapter;->access$200(Lco/vine/android/ProfileHeaderAdapter;)Lco/vine/android/api/VineUser;
move-result-object v2
if-eqz v2, :cond_61
iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
iget-object v3, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
#getter for: Lco/vine/android/ProfileHeaderAdapter;->mUser:Lco/vine/android/api/VineUser;
invoke-static {v3}, Lco/vine/android/ProfileHeaderAdapter;->access$200(Lco/vine/android/ProfileHeaderAdapter;)Lco/vine/android/api/VineUser;
move-result-object v3
invoke-virtual {v2, v3}, Lco/vine/android/ProfileHeaderAdapter;->bindUser(Lco/vine/android/api/VineUser;)V
:cond_61
iget-object v2, p0, Lco/vine/android/ProfileHeaderAdapter$ProfileViewPagerAdapter;->this$0:Lco/vine/android/ProfileHeaderAdapter;
#calls: Lco/vine/android/ProfileHeaderAdapter;->invalidateDetailHeight()V
invoke-static {v2}, Lco/vine/android/ProfileHeaderAdapter;->access$400(Lco/vine/android/ProfileHeaderAdapter;)V
goto :goto_11
nop
:pswitch_data_68
.packed-switch 0x0
:pswitch_12
:pswitch_3a
.end packed-switch
.end method
.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
if-ne p1, p2, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method