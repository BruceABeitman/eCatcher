.class final Lcom/instagram/ui/widget/refresh/a;
.super Ljava/lang/Object;
.source "RefreshButton.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/os/Parcel;)Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;
.registers 2
new-instance v0, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;
invoke-direct {v0, p0}, Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method private static a(I)[Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;
.registers 2
new-array v0, p0, [Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;
return-object v0
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/ui/widget/refresh/a;->a(Landroid/os/Parcel;)Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/ui/widget/refresh/a;->a(I)[Lcom/instagram/ui/widget/refresh/RefreshButton$SavedState;
move-result-object v0
return-object v0
.end method