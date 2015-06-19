.class public final Lcom/google/android/gms/internal/ir$b;
.super Lcom/google/android/gms/internal/fb;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person$Cover;
.field public static final CREATOR:Lcom/google/android/gms/internal/iu;
.field private static final RL:Ljava/util/HashMap;
.field private final RM:Ljava/util/Set;
.field private Tg:Lcom/google/android/gms/internal/ir$b$a;
.field private Th:Lcom/google/android/gms/internal/ir$b$b;
.field private Ti:I
.field private final wj:I
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x0
new-instance v0, Lcom/google/android/gms/internal/iu;
invoke-direct {v0}, Lcom/google/android/gms/internal/iu;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ir$b;->CREATOR:Lcom/google/android/gms/internal/iu;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ir$b;->RL:Ljava/util/HashMap;
const-string v1, "coverInfo"
const-string v2, "coverInfo"
const/4 v3, 0x2
const-class v4, Lcom/google/android/gms/internal/ir$b$a;
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$b;->RL:Ljava/util/HashMap;
const-string v1, "coverPhoto"
const-string v2, "coverPhoto"
const/4 v3, 0x3
const-class v4, Lcom/google/android/gms/internal/ir$b$b;
invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/ir$b;->RL:Ljava/util/HashMap;
const-string v1, "layout"
const-string v2, "layout"
const/4 v3, 0x4
new-instance v4, Lcom/google/android/gms/internal/ey;
invoke-direct {v4}, Lcom/google/android/gms/internal/ey;-><init>()V
const-string v5, "banner"
invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ey;->f(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;
move-result-object v4
invoke-static {v2, v3, v4, v6}, Lcom/google/android/gms/internal/fb$a;->a(Ljava/lang/String;ILcom/google/android/gms/internal/fb$b;Z)Lcom/google/android/gms/internal/fb$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ir$b;->wj:I
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ir$b;->RM:Ljava/util/Set;
return-void
.end method
.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/internal/ir$b$a;Lcom/google/android/gms/internal/ir$b$b;I)V
.registers 6
invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/ir$b;->RM:Ljava/util/Set;
iput p2, p0, Lcom/google/android/gms/internal/ir$b;->wj:I
iput-object p3, p0, Lcom/google/android/gms/internal/ir$b;->Tg:Lcom/google/android/gms/internal/ir$b$a;
iput-object p4, p0, Lcom/google/android/gms/internal/ir$b;->Th:Lcom/google/android/gms/internal/ir$b$b;
iput p5, p0, Lcom/google/android/gms/internal/ir$b;->Ti:I
return-void
.end method
.method protected final a(Lcom/google/android/gms/internal/fb$a;)Z
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->RM:Ljava/util/Set;
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
packed-switch v0, :pswitch_data_2e
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
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->Tg:Lcom/google/android/gms/internal/ir$b$a;
:goto_22
return-object v0
:pswitch_23
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->Th:Lcom/google/android/gms/internal/ir$b$b;
goto :goto_22
:pswitch_26
iget v0, p0, Lcom/google/android/gms/internal/ir$b;->Ti:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_22
nop
:pswitch_data_2e
.packed-switch 0x2
:pswitch_20
:pswitch_23
:pswitch_26
.end packed-switch
.end method
.method public final describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir$b;->CREATOR:Lcom/google/android/gms/internal/iu;
const/4 v0, 0x0
return v0
.end method
.method public final en()Ljava/util/HashMap;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ir$b;->RL:Ljava/util/HashMap;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
instance-of v0, p1, Lcom/google/android/gms/internal/ir$b;
if-nez v0, :cond_8
move v0, v1
:goto_7
return v0
:cond_8
if-ne p0, p1, :cond_c
move v0, v2
goto :goto_7
:cond_c
check-cast p1, Lcom/google/android/gms/internal/ir$b;
sget-object v0, Lcom/google/android/gms/internal/ir$b;->RL:Ljava/util/HashMap;
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
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$b;->a(Lcom/google/android/gms/internal/fb$a;)Z
move-result v4
if-eqz v4, :cond_42
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$b;->a(Lcom/google/android/gms/internal/fb$a;)Z
move-result v4
if-eqz v4, :cond_40
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$b;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$b;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
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
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ir$b;->a(Lcom/google/android/gms/internal/fb$a;)Z
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
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$b;->ih()Lcom/google/android/gms/internal/ir$b;
move-result-object v0
return-object v0
.end method
.method public final getCoverInfo()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->Tg:Lcom/google/android/gms/internal/ir$b$a;
return-object v0
.end method
.method public final getCoverPhoto()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->Th:Lcom/google/android/gms/internal/ir$b$b;
return-object v0
.end method
.method public final getLayout()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ir$b;->Ti:I
return v0
.end method
.method final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ir$b;->wj:I
return v0
.end method
.method final hB()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->RM:Ljava/util/Set;
return-object v0
.end method
.method public final hasCoverInfo()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->RM:Ljava/util/Set;
const/4 v1, 0x2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasCoverPhoto()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->RM:Ljava/util/Set;
const/4 v1, 0x3
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hasLayout()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->RM:Ljava/util/Set;
const/4 v1, 0x4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hashCode()I
.registers 5
const/4 v0, 0x0
sget-object v1, Lcom/google/android/gms/internal/ir$b;->RL:Ljava/util/HashMap;
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
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$b;->a(Lcom/google/android/gms/internal/fb$a;)Z
move-result v3
if-eqz v3, :cond_2f
invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->eu()I
move-result v3
add-int/2addr v1, v3
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ir$b;->b(Lcom/google/android/gms/internal/fb$a;)Ljava/lang/Object;
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
.method final if()Lcom/google/android/gms/internal/ir$b$a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->Tg:Lcom/google/android/gms/internal/ir$b$a;
return-object v0
.end method
.method final ig()Lcom/google/android/gms/internal/ir$b$b;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ir$b;->Th:Lcom/google/android/gms/internal/ir$b$b;
return-object v0
.end method
.method public final ih()Lcom/google/android/gms/internal/ir$b;
.registers 1
return-object p0
.end method
.method public final isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/ir$b;->CREATOR:Lcom/google/android/gms/internal/iu;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/ir$b;Landroid/os/Parcel;I)V
return-void
.end method