.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:[I
.field final b:I
.field final c:I
.field final d:Ljava/lang/String;
.field final e:I
.field final f:I
.field final g:Ljava/lang/CharSequence;
.field final h:I
.field final i:Ljava/lang/CharSequence;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/app/BackStackState$1;
invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V
sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I
sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I
sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/l;)V
.registers 10
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/m;
move-object v1, v0
move v0, v3
:goto_8
if-eqz v1, :cond_18
iget-object v2, v1, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;
if-eqz v2, :cond_15
iget-object v2, v1, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/2addr v0, v2
:cond_15
iget-object v1, v1, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/m;
goto :goto_8
:cond_18
iget v1, p1, Landroid/support/v4/app/l;->d:I
mul-int/lit8 v1, v1, 0x7
add-int/2addr v0, v1
new-array v0, v0, [I
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
iget-boolean v0, p1, Landroid/support/v4/app/l;->k:Z
if-nez v0, :cond_2d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Not on back stack"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
iget-object v0, p1, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/m;
move-object v5, v0
move v0, v3
:goto_31
if-eqz v5, :cond_9f
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v2, v0, 0x1
iget v4, v5, Landroid/support/v4/app/m;->c:I
aput v4, v1, v0
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v4, v2, 0x1
iget-object v0, v5, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_91
iget-object v0, v5, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;
iget v0, v0, Landroid/support/v4/app/Fragment;->o:I
:goto_47
aput v0, v1, v2
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v1, v4, 0x1
iget v2, v5, Landroid/support/v4/app/m;->e:I
aput v2, v0, v4
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v2, v1, 0x1
iget v4, v5, Landroid/support/v4/app/m;->f:I
aput v4, v0, v1
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v1, v2, 0x1
iget v4, v5, Landroid/support/v4/app/m;->g:I
aput v4, v0, v2
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v2, v1, 0x1
iget v4, v5, Landroid/support/v4/app/m;->h:I
aput v4, v0, v1
iget-object v0, v5, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;
if-eqz v0, :cond_98
iget-object v0, v5, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v6
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v1, v2, 0x1
aput v6, v0, v2
move v2, v3
:goto_7a
if-ge v2, v6, :cond_93
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v4, v1, 0x1
iget-object v0, v5, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget v0, v0, Landroid/support/v4/app/Fragment;->o:I
aput v0, v7, v1
add-int/lit8 v0, v2, 0x1
move v2, v0
move v1, v4
goto :goto_7a
:cond_91
const/4 v0, -0x1
goto :goto_47
:cond_93
move v0, v1
:goto_94
iget-object v1, v5, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/m;
move-object v5, v1
goto :goto_31
:cond_98
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v0, v2, 0x1
aput v3, v1, v2
goto :goto_94
:cond_9f
iget v0, p1, Landroid/support/v4/app/l;->i:I
iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I
iget v0, p1, Landroid/support/v4/app/l;->j:I
iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I
iget-object v0, p1, Landroid/support/v4/app/l;->m:Ljava/lang/String;
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;
iget v0, p1, Landroid/support/v4/app/l;->o:I
iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I
iget v0, p1, Landroid/support/v4/app/l;->p:I
iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I
iget-object v0, p1, Landroid/support/v4/app/l;->q:Ljava/lang/CharSequence;
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;
iget v0, p1, Landroid/support/v4/app/l;->r:I
iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I
iget-object v0, p1, Landroid/support/v4/app/l;->s:Ljava/lang/CharSequence;
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;
return-void
.end method
.method public final a(Landroid/support/v4/app/t;)Landroid/support/v4/app/l;
.registers 13
const/4 v10, 0x1
const/4 v2, 0x0
new-instance v6, Landroid/support/v4/app/l;
invoke-direct {v6, p1}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/t;)V
move v1, v2
move v0, v2
:goto_9
iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I
array-length v3, v3
if-ge v0, v3, :cond_da
new-instance v7, Landroid/support/v4/app/m;
invoke-direct {v7}, Landroid/support/v4/app/m;-><init>()V
iget-object v3, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v4, v0, 0x1
aget v0, v3, v0
iput v0, v7, Landroid/support/v4/app/m;->c:I
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_4b
const-string v0, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
const-string v5, "Instantiate "
invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, " op #"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, " base fragment #"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v5, p0, Landroid/support/v4/app/BackStackState;->a:[I
aget v5, v5, v4
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_4b
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v3, v4, 0x1
aget v0, v0, v4
if-ltz v0, :cond_cd
iget-object v4, p1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iput-object v0, v7, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;
:goto_5d
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v4, v3, 0x1
aget v0, v0, v3
iput v0, v7, Landroid/support/v4/app/m;->e:I
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v3, v4, 0x1
aget v0, v0, v4
iput v0, v7, Landroid/support/v4/app/m;->f:I
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v4, v3, 0x1
aget v0, v0, v3
iput v0, v7, Landroid/support/v4/app/m;->g:I
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v5, v4, 0x1
aget v0, v0, v4
iput v0, v7, Landroid/support/v4/app/m;->h:I
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v3, v5, 0x1
aget v8, v0, v5
if-lez v8, :cond_d1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, v7, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;
move v4, v2
:goto_8d
if-ge v4, v8, :cond_d1
sget-boolean v0, Landroid/support/v4/app/t;->a:Z
if-eqz v0, :cond_b5
const-string v0, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
const-string v9, "Instantiate "
invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v9, " set remove fragment #"
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v9, p0, Landroid/support/v4/app/BackStackState;->a:[I
aget v9, v9, v3
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_b5
iget-object v0, p1, Landroid/support/v4/app/t;->f:Ljava/util/ArrayList;
iget-object v9, p0, Landroid/support/v4/app/BackStackState;->a:[I
add-int/lit8 v5, v3, 0x1
aget v3, v9, v3
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v3, v7, Landroid/support/v4/app/m;->i:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v4, 0x1
move v4, v0
move v3, v5
goto :goto_8d
:cond_cd
const/4 v0, 0x0
iput-object v0, v7, Landroid/support/v4/app/m;->d:Landroid/support/v4/app/Fragment;
goto :goto_5d
:cond_d1
invoke-virtual {v6, v7}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/m;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
move v0, v3
goto/16 :goto_9
:cond_da
iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I
iput v0, v6, Landroid/support/v4/app/l;->i:I
iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I
iput v0, v6, Landroid/support/v4/app/l;->j:I
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;
iput-object v0, v6, Landroid/support/v4/app/l;->m:Ljava/lang/String;
iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I
iput v0, v6, Landroid/support/v4/app/l;->o:I
iput-boolean v10, v6, Landroid/support/v4/app/l;->k:Z
iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I
iput v0, v6, Landroid/support/v4/app/l;->p:I
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;
iput-object v0, v6, Landroid/support/v4/app/l;->q:Ljava/lang/CharSequence;
iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I
iput v0, v6, Landroid/support/v4/app/l;->r:I
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;
iput-object v0, v6, Landroid/support/v4/app/l;->s:Ljava/lang/CharSequence;
invoke-virtual {v6, v10}, Landroid/support/v4/app/l;->a(I)V
return-object v6
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V
iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;
invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;
invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
return-void
.end method