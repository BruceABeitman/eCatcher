.class  Lcom/umeng/newxp/view/aU;
.super Ljava/lang/Object;
.source "WapActivity.java"
.implements Landroid/os/Parcelable;
.field public static final f:Landroid/os/Parcelable$Creator;
.field public a:Z
.field public b:Z
.field public c:Z
.field public d:Z
.field public e:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/umeng/newxp/view/aV;
invoke-direct {v0}, Lcom/umeng/newxp/view/aV;-><init>()V
sput-object v0, Lcom/umeng/newxp/view/aU;->f:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/umeng/newxp/view/aU;->a:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/aU;->b:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/aU;->c:Z
iput-boolean v0, p0, Lcom/umeng/newxp/view/aU;->d:Z
const/4 v0, -0x1
iput v0, p0, Lcom/umeng/newxp/view/aU;->e:I
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/umeng/newxp/view/aU;->a:Z
iput-boolean v1, p0, Lcom/umeng/newxp/view/aU;->b:Z
iput-boolean v1, p0, Lcom/umeng/newxp/view/aU;->c:Z
iput-boolean v1, p0, Lcom/umeng/newxp/view/aU;->d:Z
const/4 v0, -0x1
iput v0, p0, Lcom/umeng/newxp/view/aU;->e:I
const/4 v0, 0x4
new-array v0, v0, [Z
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/umeng/newxp/view/aU;->a:Z
const/4 v1, 0x1
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/umeng/newxp/view/aU;->b:Z
const/4 v1, 0x2
aget-boolean v1, v0, v1
iput-boolean v1, p0, Lcom/umeng/newxp/view/aU;->c:Z
const/4 v1, 0x3
aget-boolean v0, v0, v1
iput-boolean v0, p0, Lcom/umeng/newxp/view/aU;->d:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/umeng/newxp/view/aU;->e:I
return-void
.end method
.method public a(I)Lcom/umeng/newxp/view/aU;
.registers 2
iput p1, p0, Lcom/umeng/newxp/view/aU;->e:I
return-object p0
.end method
.method public a(Z)Lcom/umeng/newxp/view/aU;
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/aU;->a:Z
return-object p0
.end method
.method public b(Z)Lcom/umeng/newxp/view/aU;
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/aU;->b:Z
return-object p0
.end method
.method public c(Z)Lcom/umeng/newxp/view/aU;
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/aU;->c:Z
return-object p0
.end method
.method public d(Z)Lcom/umeng/newxp/view/aU;
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/aU;->d:Z
return-object p0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
const/4 v0, 0x4
new-array v0, v0, [Z
const/4 v1, 0x0
iget-boolean v2, p0, Lcom/umeng/newxp/view/aU;->a:Z
aput-boolean v2, v0, v1
const/4 v1, 0x1
iget-boolean v2, p0, Lcom/umeng/newxp/view/aU;->b:Z
aput-boolean v2, v0, v1
const/4 v1, 0x2
iget-boolean v2, p0, Lcom/umeng/newxp/view/aU;->c:Z
aput-boolean v2, v0, v1
const/4 v1, 0x3
iget-boolean v2, p0, Lcom/umeng/newxp/view/aU;->d:Z
aput-boolean v2, v0, v1
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V
iget v0, p0, Lcom/umeng/newxp/view/aU;->e:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method