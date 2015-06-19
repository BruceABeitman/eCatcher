.class  Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:J
.field  b:J
.field  c:I
.field  d:I
.field  e:I
.field  f:Ljava/lang/String;
.field  g:Z
.field  h:I
.field  i:Landroid/util/SparseBooleanArray;
.field  j:Landroid/support/v4/c/e;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState$1;
invoke-direct {v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState$1;-><init>()V
sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 8
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
if-eqz v0, :cond_60
const/4 v0, 0x1
:goto_2f
iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I
invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;
move-result-object v0
iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/util/SparseBooleanArray;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-lez v0, :cond_62
new-instance v2, Landroid/support/v4/c/e;
invoke-direct {v2}, Landroid/support/v4/c/e;-><init>()V
iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/c/e;
:goto_4a
if-ge v1, v0, :cond_62
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v4
iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/c/e;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v5, v2, v3, v4}, Landroid/support/v4/c/e;->a(JLjava/lang/Object;)V
add-int/lit8 v1, v1, 0x1
goto :goto_4a
:cond_60
move v0, v1
goto :goto_2f
:cond_62
return-void
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
iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/util/SparseBooleanArray;
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
.registers 8
const/4 v1, 0x0
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget-wide v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J
invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v2, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J
invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V
iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z
if-eqz v0, :cond_60
const/4 v0, 0x1
:goto_27
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/util/SparseBooleanArray;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/c/e;
if-eqz v0, :cond_62
iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/c/e;
invoke-virtual {v0}, Landroid/support/v4/c/e;->a()I
move-result v0
move v2, v0
:goto_40
invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V
:goto_43
if-ge v1, v2, :cond_64
iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/c/e;
invoke-virtual {v0, v1}, Landroid/support/v4/c/e;->a(I)J
move-result-wide v3
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/c/e;
invoke-virtual {v0, v1}, Landroid/support/v4/c/e;->b(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
add-int/lit8 v1, v1, 0x1
goto :goto_43
:cond_60
move v0, v1
goto :goto_27
:cond_62
move v2, v1
goto :goto_40
:cond_64
return-void
.end method