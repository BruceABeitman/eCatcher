.class public Lcom/tencent/connect/dataprovider/DataType$TextOnly;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/tencent/connect/dataprovider/DataType$TextOnly$1;
invoke-direct {v0}, Lcom/tencent/connect/dataprovider/DataType$TextOnly$1;-><init>()V
sput-object v0, Lcom/tencent/connect/dataprovider/DataType$TextOnly;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/connect/dataprovider/DataType$TextOnly;->a:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/connect/dataprovider/DataType$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/tencent/connect/dataprovider/DataType$TextOnly;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/connect/dataprovider/DataType$TextOnly;->a:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/connect/dataprovider/DataType$TextOnly;->a:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/tencent/connect/dataprovider/DataType$TextOnly;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method