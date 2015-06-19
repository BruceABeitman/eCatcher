.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:Ljava/lang/String;
.field final b:I
.field final c:Z
.field final d:I
.field final e:I
.field final f:Ljava/lang/String;
.field final g:Z
.field final h:Z
.field final i:Landroid/os/Bundle;
.field  j:Landroid/os/Bundle;
.field  k:Landroid/support/v4/app/Fragment;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/app/t;
invoke-direct {v0}, Landroid/support/v4/app/t;-><init>()V
sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/FragmentState;->b:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4a
move v0, v1
:goto_18
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->c:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/FragmentState;->d:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/FragmentState;->e:I
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4c
move v0, v1
:goto_33
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->g:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4e
:goto_3b
iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->h:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
return-void
:cond_4a
move v0, v2
goto :goto_18
:cond_4c
move v0, v2
goto :goto_33
:cond_4e
move v1, v2
goto :goto_3b
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->b:I
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->c:Z
iget v0, p1, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->d:I
iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->e:I
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->g:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->h:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/FragmentState;->b:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->c:Z
if-eqz v0, :cond_3d
move v0, v1
:goto_11
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Landroid/support/v4/app/FragmentState;->d:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Landroid/support/v4/app/FragmentState;->e:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->f:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->g:Z
if-eqz v0, :cond_3f
move v0, v1
:goto_28
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->h:Z
if-eqz v0, :cond_41
:goto_2f
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->i:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
return-void
:cond_3d
move v0, v2
goto :goto_11
:cond_3f
move v0, v2
goto :goto_28
:cond_41
move v1, v2
goto :goto_2f
.end method