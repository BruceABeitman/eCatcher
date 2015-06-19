.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/common/data/f;
.field private static final EL:Lcom/google/android/gms/common/data/DataHolder$a;
.field private final CQ:I
.field private final ED:[Ljava/lang/String;
.field  EE:Landroid/os/Bundle;
.field private final EF:[Landroid/database/CursorWindow;
.field private final EG:Landroid/os/Bundle;
.field  EH:[I
.field  EI:I
.field private EJ:Ljava/lang/Object;
.field private EK:Z
.field  mClosed:Z
.field private final xJ:I
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/google/android/gms/common/data/f;
invoke-direct {v0}, Lcom/google/android/gms/common/data/f;-><init>()V
sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
new-instance v0, Lcom/google/android/gms/common/data/DataHolder$1;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder$1;-><init>([Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->EL:Lcom/google/android/gms/common/data/DataHolder$a;
return-void
.end method
.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EK:Z
iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->ED:[Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->CQ:I
iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->EG:Landroid/os/Bundle;
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$a;ILandroid/os/Bundle;)V
.registers 6
invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
move-result-object v0
const/4 v1, -0x1
invoke-static {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->a(Lcom/google/android/gms/common/data/DataHolder$a;I)[Landroid/database/CursorWindow;
move-result-object v1
invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
return-void
.end method
.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
.registers 7
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z
iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EK:Z
iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->xJ:I
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ED:[Ljava/lang/String;
invoke-static {p2}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/database/CursorWindow;
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->CQ:I
iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->EG:Landroid/os/Bundle;
invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->eR()V
return-void
.end method
.method public static a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
.registers 4
new-instance v0, Lcom/google/android/gms/common/data/DataHolder;
sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->EL:Lcom/google/android/gms/common/data/DataHolder$a;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$a;ILandroid/os/Bundle;)V
return-object v0
.end method
.method private static a(Lcom/google/android/gms/common/data/DataHolder$a;I)[Landroid/database/CursorWindow;
.registers 14
const/4 v4, 0x0
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
move-result-object v0
array-length v0, v0
if-nez v0, :cond_b
new-array v0, v4, [Landroid/database/CursorWindow;
:goto_a
return-object v0
:cond_b
if-ltz p1, :cond_17
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->b(Lcom/google/android/gms/common/data/DataHolder$a;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt p1, v0, :cond_8f
:cond_17
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->b(Lcom/google/android/gms/common/data/DataHolder$a;)Ljava/util/ArrayList;
move-result-object v0
move-object v2, v0
:goto_1c
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v10
new-instance v5, Landroid/database/CursorWindow;
invoke-direct {v5, v4}, Landroid/database/CursorWindow;-><init>(Z)V
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
move-result-object v0
array-length v0, v0
invoke-virtual {v5, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z
move v3, v4
move v0, v4
:goto_37
if-ge v3, v10, :cond_1a8
:try_start_39
invoke-virtual {v5}, Landroid/database/CursorWindow;->allocRow()Z
move-result v1
if-nez v1, :cond_1b6
const-string v0, "DataHolder"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Allocating additional cursor window for large data set (row "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, ")"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
new-instance v5, Landroid/database/CursorWindow;
const/4 v0, 0x0
invoke-direct {v5, v0}, Landroid/database/CursorWindow;-><init>(Z)V
invoke-virtual {v5, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
move-result-object v0
array-length v0, v0
invoke-virtual {v5, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z
invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v5}, Landroid/database/CursorWindow;->allocRow()Z
move-result v0
if-nez v0, :cond_99
const-string v0, "DataHolder"
const-string v1, "Unable to allocate row to hold data."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Landroid/database/CursorWindow;
invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/database/CursorWindow;
:try_end_8d
.catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_8d} :catch_14e
goto/16 :goto_a
:cond_8f
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->b(Lcom/google/android/gms/common/data/DataHolder$a;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;
move-result-object v0
move-object v2, v0
goto :goto_1c
:cond_99
move v9, v4
:goto_9a
:try_start_9a
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
const/4 v1, 0x1
move v8, v4
:goto_a2
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
move-result-object v6
array-length v6, v6
if-ge v8, v6, :cond_162
if-eqz v1, :cond_162
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
move-result-object v1
aget-object v6, v1, v8
invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_bf
invoke-virtual {v5, v9, v8}, Landroid/database/CursorWindow;->putNull(II)Z
move-result v1
:goto_bb
add-int/lit8 v6, v8, 0x1
move v8, v6
goto :goto_a2
:cond_bf
instance-of v7, v1, Ljava/lang/String;
if-eqz v7, :cond_ca
check-cast v1, Ljava/lang/String;
invoke-virtual {v5, v1, v9, v8}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z
move-result v1
goto :goto_bb
:cond_ca
instance-of v7, v1, Ljava/lang/Long;
if-eqz v7, :cond_d9
check-cast v1, Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v6
invoke-virtual {v5, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z
move-result v1
goto :goto_bb
:cond_d9
instance-of v7, v1, Ljava/lang/Integer;
if-eqz v7, :cond_e9
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
int-to-long v6, v1
invoke-virtual {v5, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z
move-result v1
goto :goto_bb
:cond_e9
instance-of v7, v1, Ljava/lang/Boolean;
if-eqz v7, :cond_ff
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-eqz v1, :cond_fc
const-wide/16 v6, 0x1
:goto_f7
invoke-virtual {v5, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z
move-result v1
goto :goto_bb
:cond_fc
const-wide/16 v6, 0x0
goto :goto_f7
:cond_ff
instance-of v7, v1, [B
if-eqz v7, :cond_10c
check-cast v1, [B
check-cast v1, [B
invoke-virtual {v5, v1, v9, v8}, Landroid/database/CursorWindow;->putBlob([BII)Z
move-result v1
goto :goto_bb
:cond_10c
instance-of v7, v1, Ljava/lang/Double;
if-eqz v7, :cond_11b
check-cast v1, Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v6
invoke-virtual {v5, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putDouble(DII)Z
move-result v1
goto :goto_bb
:cond_11b
instance-of v7, v1, Ljava/lang/Float;
if-eqz v7, :cond_12b
check-cast v1, Ljava/lang/Float;
invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
move-result v1
float-to-double v6, v1
invoke-virtual {v5, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putDouble(DII)Z
move-result v1
goto :goto_bb
:cond_12b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unsupported object for column "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catch_14e
:try_end_14e
.catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_14e} :catch_14e
move-exception v0
move-object v1, v0
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v2
:goto_154
if-ge v4, v2, :cond_1a7
invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/CursorWindow;
invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V
add-int/lit8 v4, v4, 0x1
goto :goto_154
:cond_162
if-nez v1, :cond_1a1
:try_start_164
const-string v0, "DataHolder"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Couldn\'t populate window data for row "
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v6, " - allocating new window."
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v5}, Landroid/database/CursorWindow;->freeLastRow()V
new-instance v1, Landroid/database/CursorWindow;
const/4 v0, 0x0
invoke-direct {v1, v0}, Landroid/database/CursorWindow;-><init>(Z)V
invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$a;->a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
move-result-object v0
array-length v0, v0
invoke-virtual {v1, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z
invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_196
.catch Ljava/lang/RuntimeException; {:try_start_164 .. :try_end_196} :catch_14e
add-int/lit8 v0, v3, -0x1
move-object v3, v1
move v1, v4
:goto_19a
add-int/lit8 v0, v0, 0x1
move-object v5, v3
move v3, v0
move v0, v1
goto/16 :goto_37
:cond_1a1
add-int/lit8 v0, v9, 0x1
move v1, v0
move v0, v3
move-object v3, v5
goto :goto_19a
:cond_1a7
throw v1
:cond_1a8
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Landroid/database/CursorWindow;
invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/database/CursorWindow;
goto/16 :goto_a
:cond_1b6
move v9, v0
goto/16 :goto_9a
.end method
.method public static af(I)Lcom/google/android/gms/common/data/DataHolder;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Lcom/google/android/gms/common/data/DataHolder;->a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
return-object v0
.end method
.method private e(Ljava/lang/String;I)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_25
:cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No such column: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z
move-result v0
if-eqz v0, :cond_33
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Buffer is closed."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
if-ltz p2, :cond_39
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:I
if-lt p2, v0, :cond_41
:cond_39
new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;
iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:I
invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V
throw v0
:cond_41
return-void
.end method
.method public a(Ljava/lang/String;II)J
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J
move-result-wide v0
return-wide v0
.end method
.method public a(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
.registers 7
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
return-void
.end method
.method public ae(I)I
.registers 4
const/4 v1, 0x0
if-ltz p1, :cond_20
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:I
if-ge p1, v0, :cond_20
const/4 v0, 0x1
:goto_8
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->A(Z)V
:goto_b
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:[I
array-length v0, v0
if-ge v1, v0, :cond_18
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:[I
aget v0, v0, v1
if-ge p1, v0, :cond_22
add-int/lit8 v1, v1, -0x1
:cond_18
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:[I
array-length v0, v0
if-ne v1, v0, :cond_1f
add-int/lit8 v1, v1, -0x1
:cond_1f
return v1
:cond_20
move v0, v1
goto :goto_8
:cond_22
add-int/lit8 v1, v1, 0x1
goto :goto_b
.end method
.method public av(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public b(Ljava/lang/String;II)I
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getInt(II)I
move-result v0
return v0
.end method
.method public b(Ljava/lang/Object;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->EJ:Ljava/lang/Object;
return-void
.end method
.method public c(Ljava/lang/String;II)Ljava/lang/String;
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public close()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z
if-nez v0, :cond_18
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z
const/4 v0, 0x0
:goto_9
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
array-length v1, v1
if-ge v0, v1, :cond_18
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v1, v1, v0
invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_18
monitor-exit p0
return-void
:catchall_1a
move-exception v0
monitor-exit p0
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_1a
throw v0
.end method
.method public d(Ljava/lang/String;II)Z
.registers 8
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
const-wide/16 v2, 0x1
cmp-long v0, v0, v2
if-nez v0, :cond_21
const/4 v0, 0x1
:goto_20
return v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e(Ljava/lang/String;II)F
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getFloat(II)F
move-result v0
return v0
.end method
.method public eP()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EG:Landroid/os/Bundle;
return-object v0
.end method
.method public eR()V
.registers 5
const/4 v1, 0x0
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
move v0, v1
:goto_9
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->ED:[Ljava/lang/String;
array-length v2, v2
if-ge v0, v2, :cond_1a
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->ED:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_1a
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
array-length v0, v0
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:[I
move v0, v1
:goto_22
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
array-length v2, v2
if-ge v1, v2, :cond_43
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EH:[I
aput v0, v2, v1
iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v2, v2, v1
invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I
move-result v2
sub-int v2, v0, v2
iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v3, v3, v1
invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I
move-result v3
sub-int v2, v3, v2
add-int/2addr v0, v2
add-int/lit8 v1, v1, 0x1
goto :goto_22
:cond_43
iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:I
return-void
.end method
.method  eS()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ED:[Ljava/lang/String;
return-object v0
.end method
.method  eT()[Landroid/database/CursorWindow;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
return-object v0
.end method
.method public f(Ljava/lang/String;II)[B
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getBlob(II)[B
move-result-object v0
return-object v0
.end method
.method protected finalize()V
.registers 5
:try_start_0
iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EK:Z
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
array-length v0, v0
if-lez v0, :cond_4b
invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z
move-result v0
if-nez v0, :cond_4b
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EJ:Ljava/lang/Object;
if-nez v0, :cond_4f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "internal object: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2a
const-string v1, "DataBuffer"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call close() on all DataBuffer extending objects when you are done with them. ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ")"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
:cond_4b
:try_end_4b
.catchall {:try_start_0 .. :try_end_4b} :catchall_56
invoke-super {p0}, Ljava/lang/Object;->finalize()V
return-void
:cond_4f
:try_start_4f
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EJ:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
:try_end_54
.catchall {:try_start_4f .. :try_end_54} :catchall_56
move-result-object v0
goto :goto_2a
:catchall_56
move-exception v0
invoke-super {p0}, Ljava/lang/Object;->finalize()V
throw v0
.end method
.method public g(Ljava/lang/String;II)Landroid/net/Uri;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_7
.end method
.method public getCount()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EI:I
return v0
.end method
.method public getStatusCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->CQ:I
return v0
.end method
.method  getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->xJ:I
return v0
.end method
.method public h(Ljava/lang/String;II)Z
.registers 6
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->EF:[Landroid/database/CursorWindow;
aget-object v0, v0, p3
iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->EE:Landroid/os/Bundle;
invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->isNull(II)Z
move-result v0
return v0
.end method
.method public isClosed()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_5
throw v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/f;->a(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V
return-void
.end method