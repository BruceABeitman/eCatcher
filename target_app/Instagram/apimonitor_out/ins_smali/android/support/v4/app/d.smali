.class final Landroid/support/v4/app/d;
.super Ljava/lang/Object;
.source "BackStackRecord.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/os/Parcel;)Landroid/support/v4/app/BackStackState;
.registers 2
new-instance v0, Landroid/support/v4/app/BackStackState;
invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method private static a(I)[Landroid/support/v4/app/BackStackState;
.registers 2
new-array v0, p0, [Landroid/support/v4/app/BackStackState;
return-object v0
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/d;->a(Landroid/os/Parcel;)Landroid/support/v4/app/BackStackState;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/d;->a(I)[Landroid/support/v4/app/BackStackState;
move-result-object v0
return-object v0
.end method