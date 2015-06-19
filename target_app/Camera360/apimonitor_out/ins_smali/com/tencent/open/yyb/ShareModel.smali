.class public Lcom/tencent/open/yyb/ShareModel;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public a:Ljava/lang/String;
.field public b:Ljava/lang/String;
.field public c:Ljava/lang/String;
.field public d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/tencent/open/yyb/a;
invoke-direct {v0}, Lcom/tencent/open/yyb/a;-><init>()V
sput-object v0, Lcom/tencent/open/yyb/ShareModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/tencent/open/yyb/ShareModel;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/ShareModel;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/ShareModel;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/open/yyb/ShareModel;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method