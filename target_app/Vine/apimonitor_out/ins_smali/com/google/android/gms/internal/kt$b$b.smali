.class public final Lcom/google/android/gms/internal/kt$b$b;
.super Lcom/google/android/gms/internal/hz;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;
.field public static final CREATOR:Lcom/google/android/gms/internal/ky;
.field private static final aco:Ljava/util/HashMap;
.field private final acp:Ljava/util/Set;
.field private ks:I
.field private kt:I
.field private qV:Ljava/lang/String;
.field private final xJ:I
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lcom/google/android/gms/internal/ky;
invoke-direct {v0}, Lcom/google/android/gms/internal/ky;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/kt$b$b;->CREATOR:Lcom/google/android/gms/internal/ky;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/kt$b$b;->aco:Ljava/util/HashMap;
sget-object v0, Lcom/google/android/gms/internal/kt$b$b;->aco:Ljava/util/HashMap;
const-string v1, "height"
const-string v2, "height"
const/4 v3, 0x2
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hz$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/kt$b$b;->aco:Ljava/util/HashMap;
const-string v1, "url"
const-string v2, "url"
const/4 v3, 0x3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hz$a;->j(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/google/android/gms/internal/kt$b$b;->aco:Ljava/util/HashMap;
const-string v1, "width"
const-string v2, "width"
const/4 v3, 0x4
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hz$a;->g(Ljava/lang/String;I)Lcom/google/android/gms/internal/hz$a;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/hz;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/kt$b$b;->xJ:I
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/kt$b$b;->acp:Ljava/util/Set;
return-void
.end method
.method constructor <init>(Ljava/util/Set;IILjava/lang/String;I)V
.registers 6
invoke-direct {p0}, Lcom/google/android/gms/internal/hz;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/kt$b$b;->acp:Ljava/util/Set;
iput p2, p0, Lcom/google/android/gms/internal/kt$b$b;->xJ:I
iput p3, p0, Lcom/google/android/gms/internal/kt$b$b;->kt:I
iput-object p4, p0, Lcom/google/android/gms/internal/kt$b$b;->qV:Ljava/lang/String;
iput p5, p0, Lcom/google/android/gms/internal/kt$b$b;->ks:I
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/hz$a;)Z
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/kt$b$b;->acp:Ljava/util/Set;
invoke-virtual {p1}, Lcom/google/android/gms/internal/hz$a;->fI()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected aF(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected aG(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/google/android/gms/internal/hz$a;->fI()I
move-result v0
packed-switch v0, :pswitch_data_36
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown safe parcelable id="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/google/android/gms/internal/hz$a;->fI()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_24
iget v0, p0, Lcom/google/android/gms/internal/kt$b$b;->kt:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_2a
return-object v0
:pswitch_2b
iget-object v0, p0, Lcom/google/android/gms/internal/kt$b$b;->qV:Ljava/lang/String;
goto :goto_2a
:pswitch_2e
iget v0, p0, Lcom/google/android/gms/internal/kt$b$b;->ks:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_2a
nop
:pswitch_data_36
.packed-switch 0x2
:pswitch_24
:pswitch_2b
:pswitch_2e
.end packed-switch
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/kt$b$b;->CREATOR:Lcom/google/android/gms/internal/ky;
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
instance-of v0, p1, Lcom/google/android/gms/internal/kt$b$b;
if-nez v0, :cond_8
move v0, v1
:goto_7
return v0
:cond_8
if-ne p0, p1, :cond_c
move v0, v2
goto :goto_7
:cond_c
check-cast p1, Lcom/google/android/gms/internal/kt$b$b;
sget-object v0, Lcom/google/android/gms/internal/kt$b$b;->aco:Ljava/util/HashMap;
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
check-cast v0, Lcom/google/android/gms/internal/hz$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$b$b;->a(Lcom/google/android/gms/internal/hz$a;)Z
move-result v4
if-eqz v4, :cond_42
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kt$b$b;->a(Lcom/google/android/gms/internal/hz$a;)Z
move-result v4
if-eqz v4, :cond_40
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$b$b;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kt$b$b;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;
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
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/kt$b$b;->a(Lcom/google/android/gms/internal/hz$a;)Z
move-result v0
if-eqz v0, :cond_18
move v0, v1
goto :goto_7
:cond_4a
move v0, v2
goto :goto_7
.end method
.method public fB()Ljava/util/HashMap;
.registers 2
sget-object v0, Lcom/google/android/gms/internal/kt$b$b;->aco:Ljava/util/HashMap;
return-object v0
.end method
.method public synthetic freeze()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/kt$b$b;->kN()Lcom/google/android/gms/internal/kt$b$b;
move-result-object v0
return-object v0
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/kt$b$b;->kt:I
return v0
.end method
.method public getUrl()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/kt$b$b;->qV:Ljava/lang/String;
return-object v0
.end method
.method  getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/kt$b$b;->xJ:I
return v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/kt$b$b;->ks:I
return v0
.end method
.method public hasHeight()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/kt$b$b;->acp:Ljava/util/Set;
const/4 v1, 0x2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public hasUrl()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/kt$b$b;->acp:Ljava/util/Set;
const/4 v1, 0x3
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public hasWidth()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/kt$b$b;->acp:Ljava/util/Set;
const/4 v1, 0x4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public hashCode()I
.registers 5
const/4 v0, 0x0
sget-object v1, Lcom/google/android/gms/internal/kt$b$b;->aco:Ljava/util/HashMap;
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
check-cast v0, Lcom/google/android/gms/internal/hz$a;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$b$b;->a(Lcom/google/android/gms/internal/hz$a;)Z
move-result v3
if-eqz v3, :cond_2f
invoke-virtual {v0}, Lcom/google/android/gms/internal/hz$a;->fI()I
move-result v3
add-int/2addr v1, v3
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt$b$b;->b(Lcom/google/android/gms/internal/hz$a;)Ljava/lang/Object;
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
.method public isDataValid()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public kN()Lcom/google/android/gms/internal/kt$b$b;
.registers 1
return-object p0
.end method
.method  kf()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/kt$b$b;->acp:Ljava/util/Set;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/kt$b$b;->CREATOR:Lcom/google/android/gms/internal/ky;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ky;->a(Lcom/google/android/gms/internal/kt$b$b;Landroid/os/Parcel;I)V
return-void
.end method