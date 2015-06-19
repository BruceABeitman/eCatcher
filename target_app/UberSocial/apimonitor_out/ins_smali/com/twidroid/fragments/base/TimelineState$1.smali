.class final Lcom/twidroid/fragments/base/TimelineState$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/twidroid/fragments/base/TimelineState;
.registers 3
new-instance v0, Lcom/twidroid/fragments/base/TimelineState;
invoke-direct {v0, p1}, Lcom/twidroid/fragments/base/TimelineState;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public a(I)[Lcom/twidroid/fragments/base/TimelineState;
.registers 3
new-array v0, p1, [Lcom/twidroid/fragments/base/TimelineState;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/TimelineState$1;->a(Landroid/os/Parcel;)Lcom/twidroid/fragments/base/TimelineState;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/TimelineState$1;->a(I)[Lcom/twidroid/fragments/base/TimelineState;
move-result-object v0
return-object v0
.end method