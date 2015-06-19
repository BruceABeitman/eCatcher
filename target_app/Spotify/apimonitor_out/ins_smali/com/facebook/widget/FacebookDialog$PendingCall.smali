.class public Lcom/facebook/widget/FacebookDialog$PendingCall;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/util/UUID;
.field private b:Landroid/content/Intent;
.field private c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall$1;
invoke-direct {v0}, Lcom/facebook/widget/FacebookDialog$PendingCall$1;-><init>()V
sput-object v0, Lcom/facebook/widget/FacebookDialog$PendingCall;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->a:Ljava/util/UUID;
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->b:Landroid/content/Intent;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->c:I
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public final a()Ljava/util/UUID;
.registers 2
iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->a:Ljava/util/UUID;
return-object v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->c:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->a:Ljava/util/UUID;
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->b:Landroid/content/Intent;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->c:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method