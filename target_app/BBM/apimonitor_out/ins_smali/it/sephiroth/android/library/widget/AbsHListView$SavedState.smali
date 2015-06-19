.class  Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AbsHListView.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:J
.field  b:J
.field  c:I
.field  d:I
.field  e:I
.field  f:Ljava/lang/String;
.field  g:Z
.field  h:I
.field  i:Landroid/support/v4/b/o;
.field  j:Landroid/support/v4/b/f;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lit/sephiroth/android/library/widget/r;
invoke-direct {v0}, Lit/sephiroth/android/library/widget/r;-><init>()V
sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_49
const/4 v0, 0x1
:goto_2f
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
if-gez v2, :cond_4b
move-object v0, v1
:goto_3e
iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-gtz v0, :cond_54
:goto_46
iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/b/f;
return-void
:cond_49
const/4 v0, 0x0
goto :goto_2f
:cond_4b
new-instance v0, Landroid/support/v4/b/o;
invoke-direct {v0, v2}, Landroid/support/v4/b/o;-><init>(I)V
invoke-static {v0, p1, v2}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a(Landroid/support/v4/b/o;Landroid/os/Parcel;I)V
goto :goto_3e
:cond_54
new-instance v1, Landroid/support/v4/b/f;
invoke-direct {v1, v0}, Landroid/support/v4/b/f;-><init>(I)V
invoke-static {v1, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a(Landroid/support/v4/b/f;Landroid/os/Parcel;I)V
goto :goto_46
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method constructor <init>(Landroid/os/Parcelable;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
return-void
.end method
.method private static a(Landroid/support/v4/b/f;Landroid/os/Parcel;I)V
.registers 6
:goto_0
if-lez p2, :cond_14
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/b/f;->a(JLjava/lang/Object;)V
add-int/lit8 p2, p2, -0x1
goto :goto_0
:cond_14
return-void
.end method
.method private static a(Landroid/support/v4/b/o;Landroid/os/Parcel;I)V
.registers 12
const/4 v1, 0x1
const/4 v2, 0x0
:goto_2
if-lez p2, :cond_69
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v3
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-ne v0, v1, :cond_27
move v0, v1
:goto_f
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
iget v4, p0, Landroid/support/v4/b/o;->d:I
if-eqz v4, :cond_29
iget-object v4, p0, Landroid/support/v4/b/o;->b:[I
iget v5, p0, Landroid/support/v4/b/o;->d:I
add-int/lit8 v5, v5, -0x1
aget v4, v4, v5
if-gt v3, v4, :cond_29
invoke-virtual {p0, v3, v0}, Landroid/support/v4/b/o;->b(ILjava/lang/Object;)V
:goto_24
add-int/lit8 p2, p2, -0x1
goto :goto_2
:cond_27
move v0, v2
goto :goto_f
:cond_29
iget-boolean v4, p0, Landroid/support/v4/b/o;->a:Z
if-eqz v4, :cond_37
iget v4, p0, Landroid/support/v4/b/o;->d:I
iget-object v5, p0, Landroid/support/v4/b/o;->b:[I
array-length v5, v5
if-lt v4, v5, :cond_37
invoke-virtual {p0}, Landroid/support/v4/b/o;->b()V
:cond_37
iget v4, p0, Landroid/support/v4/b/o;->d:I
iget-object v5, p0, Landroid/support/v4/b/o;->b:[I
array-length v5, v5
if-lt v4, v5, :cond_5c
add-int/lit8 v5, v4, 0x1
invoke-static {v5}, Landroid/support/v4/b/c;->a(I)I
move-result v5
new-array v6, v5, [I
new-array v5, v5, [Ljava/lang/Object;
iget-object v7, p0, Landroid/support/v4/b/o;->b:[I
iget-object v8, p0, Landroid/support/v4/b/o;->b:[I
array-length v8, v8
invoke-static {v7, v2, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/b/o;->c:[Ljava/lang/Object;
iget-object v8, p0, Landroid/support/v4/b/o;->c:[Ljava/lang/Object;
array-length v8, v8
invoke-static {v7, v2, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v6, p0, Landroid/support/v4/b/o;->b:[I
iput-object v5, p0, Landroid/support/v4/b/o;->c:[Ljava/lang/Object;
:cond_5c
iget-object v5, p0, Landroid/support/v4/b/o;->b:[I
aput v3, v5, v4
iget-object v3, p0, Landroid/support/v4/b/o;->c:[Ljava/lang/Object;
aput-object v0, v3, v4
add-int/lit8 v0, v4, 0x1
iput v0, p0, Landroid/support/v4/b/o;->d:I
goto :goto_24
:cond_69
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "AbsListView.SavedState{"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " selectedId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " firstId="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " viewLeft="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " position="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " width="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " filter="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " checkState="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget-wide v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z
if-eqz v0, :cond_5e
move v0, v1
:goto_28
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/b/o;
if-nez v4, :cond_60
const/4 v0, -0x1
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
:cond_39
iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/b/f;
if-eqz v3, :cond_88
invoke-virtual {v3}, Landroid/support/v4/b/f;->b()I
move-result v0
move v1, v0
:goto_42
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
:goto_45
if-ge v2, v1, :cond_8a
invoke-virtual {v3, v2}, Landroid/support/v4/b/f;->a(I)J
move-result-wide v4
invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v3, v2}, Landroid/support/v4/b/f;->b(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
add-int/lit8 v2, v2, 0x1
goto :goto_45
:cond_5e
move v0, v2
goto :goto_28
:cond_60
invoke-virtual {v4}, Landroid/support/v4/b/o;->c()I
move-result v5
invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V
move v3, v2
:goto_68
if-ge v3, v5, :cond_39
invoke-virtual {v4, v3}, Landroid/support/v4/b/o;->b(I)I
move-result v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v4, v3}, Landroid/support/v4/b/o;->c(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_86
move v0, v1
:goto_7e
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_68
:cond_86
move v0, v2
goto :goto_7e
:cond_88
move v1, v2
goto :goto_42
:cond_8a
return-void
.end method