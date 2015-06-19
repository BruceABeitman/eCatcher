.class public final Lcom/google/android/gms/internal/ir$f;
.super Lcom/google/android/gms/internal/fb;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person$Organizations;
.field public static final CREATOR:Lcom/google/android/gms/internal/iz;
.field private static final RL:Ljava/util/HashMap;
.field private AI:I
.field private CX:Ljava/lang/String;
.field private FH:Ljava/lang/String;
.field private final RM:Ljava/util/Set;
.field private Sj:Ljava/lang/String;
.field private Sz:Ljava/lang/String;
.field private Tp:Ljava/lang/String;
.field private Tq:Ljava/lang/String;
.field private Tr:Z
.field private mName:Ljava/lang/String;
.field private final wj:I
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x0
new-instance v0, Lcom/google/android/gms/internal/iz;
invoke-direct {v0}, Lcom/google/android/gms/internal/iz;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ir$f;->CREATOR:Lcom/google/android/gms/internal/iz;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "department"
const-string v2, "department"
const/4 v3, 0x2
invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "description"
const-string v2, "description"
const/4 v3, 0x3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "endDate"
const-string v2, "endDate"
const/4 v3, 0x4
invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "location"
const-string v2, "location"
const/4 v3, 0x5
invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "name"
const-string v2, "name"
const/4 v3, 0x6
invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "primary"
const-string v2, "primary"
const/4 v3, 0x7
invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->i(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "startDate"
const-string v2, "startDate"
const/16 v3, 0x8
invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "title"
const-string v2, "title"
const/16 v3, 0x9
invoke-static {v2, v3}, Lcom/google/android/gms/internal/fb$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
const-string v1, "type"
const-string v2, "type"
const/16 v3, 0xa
new-instance v4, Lcom/google/android/gms/internal/ey;
invoke-direct {v4}, Lcom/google/android/gms/internal/ey;-><init>()V
const-string v5, "work"
invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;
move-result-object v4
const-string v5, "school"
const/4 v6, 0x1
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;
move-result-object v4
invoke-static {v2, v3, v4, v7}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/fb$b;Z)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ir$f;->wj:I
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
return-void
.end method
.method constructor <init>(Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
.registers 12
invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
iput p2, p0, Lcom/google/android/gms/internal/ir$f;->wj:I
iput-object p3, p0, Lcom/google/android/gms/internal/ir$f;->Tp:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/ir$f;->FH:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/internal/ir$f;->Sj:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/internal/ir$f;->Tq:Ljava/lang/String;
iput-object p7, p0, Lcom/google/android/gms/internal/ir$f;->mName:Ljava/lang/String;
iput-boolean p8, p0, Lcom/google/android/gms/internal/ir$f;->Tr:Z
iput-object p9, p0, Lcom/google/android/gms/internal/ir$f;->Sz:Ljava/lang/String;
iput-object p10, p0, Lcom/google/android/gms/internal/ir$f;->CX:Ljava/lang/String;
iput p11, p0, Lcom/google/android/gms/internal/ir$f;->AI:I
return-void
.end method
.method protected final a(Lcom/google/android/gms/internal/fb$a;)Z
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->eu()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected final ak(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected final al(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected final b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->eu()I
move-result v0
packed-switch v0, :pswitch_data_44
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown safe parcelable id="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb$a;->eu()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_20
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->Tp:Ljava/lang/String;
:goto_22
return-object v0
:pswitch_23
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->FH:Ljava/lang/String;
goto :goto_22
:pswitch_26
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->Sj:Ljava/lang/String;
goto :goto_22
:pswitch_29
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->Tq:Ljava/lang/String;
goto :goto_22
:pswitch_2c
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->mName:Ljava/lang/String;
goto :goto_22
:pswitch_2f
iget-boolean v0, p0, Lcom/google/android/gms/internal/ir$f;->Tr:Z
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_22
:pswitch_36
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->Sz:Ljava/lang/String;
goto :goto_22
:pswitch_39
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->CX:Ljava/lang/String;
goto :goto_22
:pswitch_3c
iget v0, p0, Lcom/google/android/gms/internal/ir$f;->AI:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_22
nop
:pswitch_data_44
.packed-switch 0x2
:pswitch_20
:pswitch_23
:pswitch_26
:pswitch_29
:pswitch_2c
:pswitch_2f
:pswitch_36
:pswitch_39
:pswitch_3c
.end packed-switch
.end method
.method public final describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir$f;->CREATOR:Lcom/google/android/gms/internal/iz;
const/4 v0, 0x0
return v0
.end method
.method public final en()Ljava/util/HashMap;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
instance-of v0, p1, Lcom/google/android/gms/internal/ir$f;
if-nez v0, :cond_8
move v0, v1
:goto_7
return v0
:cond_8
if-ne p0, p1, :cond_c
move v0, v2
goto :goto_7
:cond_c
check-cast p1, Lcom/google/android/gms/internal/ir$f;
sget-object v0, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fb$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$f;->a(Lcom/google/android/gms/internal/fb$a;)Z
move-result v4
if-eqz v4, :cond_42
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$f;->a(Lcom/google/android/gms/internal/fb$a;)Z
move-result v4
if-eqz v4, :cond_40
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$f;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$f;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
move v0, v1
goto :goto_7
:cond_40
move v0, v1
goto :goto_7
:cond_42
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$f;->a(Lcom/google/android/gms/internal/fb$a;)Z
move-result v0
if-eqz v0, :cond_18
move v0, v1
goto :goto_7
:cond_4a
move v0, v2
goto :goto_7
.end method
.method public final synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$f;->im()Lcom/google/android/gms/internal/ir$f;
move-result-object v0
return-object v0
.end method
.method public final getDepartment()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->Tp:Ljava/lang/String;
return-object v0
.end method
.method public final getDescription()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->FH:Ljava/lang/String;
return-object v0
.end method
.method public final getEndDate()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->Sj:Ljava/lang/String;
return-object v0
.end method
.method public final getLocation()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->Tq:Ljava/lang/String;
return-object v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->mName:Ljava/lang/String;
return-object v0
.end method
.method public final getStartDate()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->Sz:Ljava/lang/String;
return-object v0
.end method
.method public final getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->CX:Ljava/lang/String;
return-object v0
.end method
.method public final getType()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ir$f;->AI:I
return v0
.end method
.method final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ir$f;->wj:I
return v0
.end method
.method final hB()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
return-object v0
.end method
.method public final hasDepartment()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/4 v1, 0x2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasDescription()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/4 v1, 0x3
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasEndDate()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/4 v1, 0x4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasLocation()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/4 v1, 0x5
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasName()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/4 v1, 0x6
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasPrimary()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/4 v1, 0x7
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasStartDate()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/16 v1, 0x8
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasTitle()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/16 v1, 0x9
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasType()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$f;->RM:Ljava/util/Set;
const/16 v1, 0xa
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hashCode()I
.registers 5
const/4 v0, 0x0
sget-object v1, Lcom/google/android/gms/internal/ir$f;->RL:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fb$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$f;->a(Lcom/google/android/gms/internal/fb$a;)Z
move-result v3
if-eqz v3, :cond_2f
invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->eu()I
move-result v3
add-int/2addr v1, v3
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$f;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
add-int/2addr v0, v1
:goto_2c
move v1, v0
goto :goto_c
:cond_2e
return v1
:cond_2f
move v0, v1
goto :goto_2c
.end method
.method public final im()Lcom/google/android/gms/internal/ir$f;
.registers 1
return-object p0
.end method
.method public final isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isPrimary()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/ir$f;->Tr:Z
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/ir$f;->CREATOR:Lcom/google/android/gms/internal/iz;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/ir$f;Landroid/os/Parcel;I)V
return-void
.end method