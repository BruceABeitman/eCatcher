.class public Lcom/mato/sdk/proxy/Address;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.field private static c:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.field private b:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/mato/sdk/proxy/a;
invoke-direct {v0}, Lcom/mato/sdk/proxy/a;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/mato/sdk/proxy/Address;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/mato/sdk/proxy/Address;->b:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/mato/sdk/proxy/Address;->a:Ljava/lang/String;
iput p2, p0, Lcom/mato/sdk/proxy/Address;->b:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getHost()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/sdk/proxy/Address;->a:Ljava/lang/String;
return-object v0
.end method
.method public getPort()I
.registers 2
iget v0, p0, Lcom/mato/sdk/proxy/Address;->b:I
return v0
.end method
.method public setHost(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mato/sdk/proxy/Address;->a:Ljava/lang/String;
return-void
.end method
.method public setPort(I)V
.registers 2
iput p1, p0, Lcom/mato/sdk/proxy/Address;->b:I
return-void
.end method
.method public toSocketAddress()Ljava/net/SocketAddress;
.registers 4
new-instance v0, Ljava/net/InetSocketAddress;
invoke-virtual {p0}, Lcom/mato/sdk/proxy/Address;->getHost()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/mato/sdk/proxy/Address;->getPort()I
move-result v2
invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/mato/sdk/proxy/Address;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/mato/sdk/proxy/Address;->b:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method