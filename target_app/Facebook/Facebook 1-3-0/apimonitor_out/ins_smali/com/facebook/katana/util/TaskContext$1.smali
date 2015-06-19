.class  Lcom/facebook/katana/util/TaskContext$1;
.super Ljava/lang/Object;
.source "TaskContext.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/katana/util/TaskContext;
.registers 4
new-instance v0, Lcom/facebook/katana/util/TaskContext;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/facebook/katana/util/TaskContext;-><init>(Landroid/os/Parcel;Lcom/facebook/katana/util/TaskContext;)V
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/facebook/katana/util/TaskContext$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/katana/util/TaskContext;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lcom/facebook/katana/util/TaskContext;
.registers 3
new-array v0, p1, [Lcom/facebook/katana/util/TaskContext;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/facebook/katana/util/TaskContext$1;->newArray(I)[Lcom/facebook/katana/util/TaskContext;
move-result-object v0
return-object v0
.end method