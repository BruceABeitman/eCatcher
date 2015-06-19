.class final Lcom/tencent/open/yyb/a;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/tencent/open/yyb/ShareModel;
.registers 4
new-instance v0, Lcom/tencent/open/yyb/ShareModel;
invoke-direct {v0}, Lcom/tencent/open/yyb/ShareModel;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/tencent/open/yyb/ShareModel;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/tencent/open/yyb/ShareModel;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/tencent/open/yyb/ShareModel;->d:Ljava/lang/String;
return-object v0
.end method
.method public a(I)[Lcom/tencent/open/yyb/ShareModel;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/a;->a(Landroid/os/Parcel;)Lcom/tencent/open/yyb/ShareModel;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/tencent/open/yyb/a;->a(I)[Lcom/tencent/open/yyb/ShareModel;
move-result-object v0
return-object v0
.end method