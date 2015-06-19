.class public Landroid/support/v4/app/Fragment$SavedState;
.super Ljava/lang/Object;
.source "Fragment.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:Landroid/os/Bundle;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/app/j;
invoke-direct {v0}, Landroid/support/v4/app/j;-><init>()V
sput-object v0, Landroid/support/v4/app/Fragment$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/Fragment$SavedState;->a:Landroid/os/Bundle;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/Fragment$SavedState;->a:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
return-void
.end method