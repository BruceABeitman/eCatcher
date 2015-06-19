.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:Ljava/lang/String;
.field final b:I
.field final c:I
.field final d:Z
.field final e:I
.field final f:I
.field final g:Ljava/lang/String;
.field final h:Z
.field final i:Z
.field final j:Landroid/os/Bundle;
.field  k:Landroid/os/Bundle;
.field  l:Landroid/support/v4/app/Fragment;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/app/ad;
invoke-direct {v0}, Landroid/support/v4/app/ad;-><init>()V
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
iput v0, p0, Landroid/support/v4/app/FragmentState;->c:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_50
move v0, v1
:goto_1e
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->d:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/FragmentState;->e:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/FragmentState;->f:I
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->g:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_52
move v0, v1
:goto_39
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->h:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_54
:goto_41
iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->i:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;
return-void
:cond_50
move v0, v2
goto :goto_1e
:cond_52
move v0, v2
goto :goto_39
:cond_54
move v1, v2
goto :goto_41
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;
iget v0, p1, Landroid/support/v4/app/Fragment;->o:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->b:I
iget v0, p1, Landroid/support/v4/app/Fragment;->p:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->c:I
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->y:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->d:Z
iget v0, p1, Landroid/support/v4/app/Fragment;->G:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->e:I
iget v0, p1, Landroid/support/v4/app/Fragment;->H:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->f:I
iget-object v0, p1, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->g:Ljava/lang/String;
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->L:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->h:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->K:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->i:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->r:Landroid/os/Bundle;
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
return-void
.end method
.method public final a(Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
.registers 6
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_7
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/support/v4/app/r;->a()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:cond_18
invoke-virtual {p1}, Landroid/support/v4/app/r;->a()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->a:Ljava/lang/String;
iget-object v2, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-static {v0, v1, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;
if-eqz v0, :cond_3d
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/support/v4/app/r;->a()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;
iput-object v1, v0, Landroid/support/v4/app/Fragment;->m:Landroid/os/Bundle;
:cond_3d
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget v1, p0, Landroid/support/v4/app/FragmentState;->b:I
invoke-virtual {v0, v1, p2}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget v1, p0, Landroid/support/v4/app/FragmentState;->c:I
iput v1, v0, Landroid/support/v4/app/Fragment;->p:I
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->d:Z
iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->y:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->A:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget v1, p0, Landroid/support/v4/app/FragmentState;->e:I
iput v1, v0, Landroid/support/v4/app/Fragment;->G:I
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget v1, p0, Landroid/support/v4/app/FragmentState;->f:I
iput v1, v0, Landroid/support/v4/app/Fragment;->H:I
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->g:Ljava/lang/String;
iput-object v1, v0, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->h:Z
iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->L:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->i:Z
iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->K:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
invoke-virtual {p1}, Landroid/support/v4/app/r;->g()Landroid/support/v4/app/u;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/u;
sget-boolean v0, Landroid/support/v4/app/u;->a:Z
if-eqz v0, :cond_8b
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Instantiated fragment "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:cond_8b
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/Fragment;
goto/16 :goto_6
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
iget v0, p0, Landroid/support/v4/app/FragmentState;->c:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->d:Z
if-eqz v0, :cond_42
move v0, v1
:goto_16
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Landroid/support/v4/app/FragmentState;->e:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Landroid/support/v4/app/FragmentState;->f:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->h:Z
if-eqz v0, :cond_44
move v0, v1
:goto_2d
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->i:Z
if-eqz v0, :cond_46
:goto_34
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->j:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
return-void
:cond_42
move v0, v2
goto :goto_16
:cond_44
move v0, v2
goto :goto_2d
:cond_46
move v1, v2
goto :goto_34
.end method