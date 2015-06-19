.class final Lcom/instagram/android/people/widget/h;
.super Ljava/lang/Object;
.source "PeopleTagsInteractiveLayout.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/os/Parcel;)Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;
.registers 2
new-instance v0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;
invoke-direct {v0, p0}, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method private static a(I)[Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;
.registers 2
new-array v0, p0, [Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;
return-object v0
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/android/people/widget/h;->a(Landroid/os/Parcel;)Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/android/people/widget/h;->a(I)[Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;
move-result-object v0
return-object v0
.end method