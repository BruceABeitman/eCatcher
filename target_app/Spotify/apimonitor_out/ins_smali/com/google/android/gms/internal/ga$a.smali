.class public Lcom/google/android/gms/internal/ga$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/hv;
.field protected final a:I
.field protected final b:Z
.field protected final c:I
.field protected final d:Z
.field protected final e:Ljava/lang/String;
.field protected final f:I
.field protected final g:Ljava/lang/Class;
.field protected final h:Ljava/lang/String;
.field private final i:I
.field private j:Lcom/google/android/gms/internal/gd;
.field private k:Lcom/google/android/gms/internal/hu;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/hv;
invoke-direct {v0}, Lcom/google/android/gms/internal/hv;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ga$a;->CREATOR:Lcom/google/android/gms/internal/hv;
return-void
.end method
.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/fv;)V
.registers 12
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ga$a;->i:I
iput p2, p0, Lcom/google/android/gms/internal/ga$a;->a:I
iput-boolean p3, p0, Lcom/google/android/gms/internal/ga$a;->b:Z
iput p4, p0, Lcom/google/android/gms/internal/ga$a;->c:I
iput-boolean p5, p0, Lcom/google/android/gms/internal/ga$a;->d:Z
iput-object p6, p0, Lcom/google/android/gms/internal/ga$a;->e:Ljava/lang/String;
iput p7, p0, Lcom/google/android/gms/internal/ga$a;->f:I
if-nez p8, :cond_1d
iput-object v1, p0, Lcom/google/android/gms/internal/ga$a;->g:Ljava/lang/Class;
iput-object v1, p0, Lcom/google/android/gms/internal/ga$a;->h:Ljava/lang/String;
:goto_18
if-nez p9, :cond_24
iput-object v1, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
:goto_1c
return-void
:cond_1d
const-class v0, Lcom/google/android/gms/internal/gg;
iput-object v0, p0, Lcom/google/android/gms/internal/ga$a;->g:Ljava/lang/Class;
iput-object p8, p0, Lcom/google/android/gms/internal/ga$a;->h:Ljava/lang/String;
goto :goto_18
:cond_24
invoke-virtual {p9}, Lcom/google/android/gms/internal/fv;->c()Lcom/google/android/gms/internal/hu;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
goto :goto_1c
.end method
.method private constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ga$a;->i:I
iput p1, p0, Lcom/google/android/gms/internal/ga$a;->a:I
iput-boolean p2, p0, Lcom/google/android/gms/internal/ga$a;->b:Z
iput p3, p0, Lcom/google/android/gms/internal/ga$a;->c:I
iput-boolean p4, p0, Lcom/google/android/gms/internal/ga$a;->d:Z
iput-object p5, p0, Lcom/google/android/gms/internal/ga$a;->e:Ljava/lang/String;
iput p6, p0, Lcom/google/android/gms/internal/ga$a;->f:I
iput-object p7, p0, Lcom/google/android/gms/internal/ga$a;->g:Ljava/lang/Class;
if-nez p7, :cond_1c
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/ga$a;->h:Ljava/lang/String;
:goto_19
iput-object p8, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
return-void
:cond_1c
invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ga$a;->h:Ljava/lang/String;
goto :goto_19
.end method
.method public static a(Ljava/lang/String;)Lcom/google/android/gms/internal/ga$a;
.registers 10
const/4 v7, 0x0
const/4 v1, 0x7
const/4 v2, 0x1
new-instance v0, Lcom/google/android/gms/internal/ga$a;
const/4 v6, 0x3
move v3, v1
move v4, v2
move-object v5, p0
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ga$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x0
new-instance v0, Lcom/google/android/gms/internal/ga$a;
move v2, v1
move v3, v1
move v4, v1
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ga$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;ILcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/ga$a;
.registers 12
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/ga$a;
const/4 v1, 0x7
const/4 v7, 0x0
move v3, v2
move v4, v2
move-object v5, p0
move v6, p1
move-object v8, p2
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ga$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
.registers 12
const/16 v1, 0xb
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/ga$a;
const/4 v8, 0x0
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v7, p2
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ga$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ga$a;)Lcom/google/android/gms/internal/hu;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
return-object v0
.end method
.method public static b(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x4
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/ga$a;
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ga$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
return-object v0
.end method
.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/ga$a;
.registers 12
const/16 v1, 0xb
const/4 v2, 0x1
new-instance v0, Lcom/google/android/gms/internal/ga$a;
const/4 v8, 0x0
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v7, p2
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ga$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
return-object v0
.end method
.method public static c(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x6
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/ga$a;
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ga$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
return-object v0
.end method
.method public static d(Ljava/lang/String;I)Lcom/google/android/gms/internal/ga$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x7
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/ga$a;
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ga$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/hu;)V
return-object v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ga$a;->i:I
return v0
.end method
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hu;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/google/android/gms/internal/gd;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ga$a;->j:Lcom/google/android/gms/internal/gd;
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ga$a;->a:I
return v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/ga$a;->b:Z
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ga$a;->c:I
return v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ga$a;->CREATOR:Lcom/google/android/gms/internal/hv;
const/4 v0, 0x0
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/ga$a;->d:Z
return v0
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->e:Ljava/lang/String;
return-object v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ga$a;->f:I
return v0
.end method
.method public final h()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->g:Ljava/lang/Class;
return-object v0
.end method
.method final i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->h:Ljava/lang/String;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->h:Ljava/lang/String;
goto :goto_5
.end method
.method public final j()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method final k()Lcom/google/android/gms/internal/fv;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
invoke-static {v0}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/fv;
move-result-object v0
goto :goto_5
.end method
.method public final l()Ljava/util/HashMap;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->j:Lcom/google/android/gms/internal/gd;
invoke-static {v0}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->j:Lcom/google/android/gms/internal/gd;
iget-object v1, p0, Lcom/google/android/gms/internal/ga$a;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;)Ljava/util/HashMap;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 5
const/16 v3, 0xa
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "Field\n"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "            versionCode="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/ga$a;->i:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "                 typeIn="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/ga$a;->a:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "            typeInArray="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v2, p0, Lcom/google/android/gms/internal/ga$a;->b:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "                typeOut="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/ga$a;->c:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "           typeOutArray="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v2, p0, Lcom/google/android/gms/internal/ga$a;->d:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "        outputFieldName="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/ga$a;->e:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "      safeParcelFieldId="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/ga$a;->f:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "       concreteTypeName="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/ga$a;->i()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->g:Ljava/lang/Class;
if-eqz v0, :cond_9d
const-string v0, "     concreteType.class="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/ga$a;->g:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_9d
const-string v0, "          converterName="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
if-nez v0, :cond_b5
const-string v0, "null"
:goto_a9
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_b5
iget-object v0, p0, Lcom/google/android/gms/internal/ga$a;->k:Lcom/google/android/gms/internal/hu;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
goto :goto_a9
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/ga$a;->CREATOR:Lcom/google/android/gms/internal/hv;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hv;->a(Lcom/google/android/gms/internal/ga$a;Landroid/os/Parcel;I)V
return-void
.end method