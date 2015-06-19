.class public Lcom/google/android/gms/internal/fb$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/ix;
.field protected final a:I
.field protected final b:Z
.field protected final c:I
.field protected final d:Z
.field protected final e:Ljava/lang/String;
.field protected final f:I
.field protected final g:Ljava/lang/Class;
.field protected final h:Ljava/lang/String;
.field private final i:I
.field private j:Lcom/google/android/gms/internal/fe;
.field private k:Lcom/google/android/gms/internal/iw;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/ix;
invoke-direct {v0}, Lcom/google/android/gms/internal/ix;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/fb$a;->CREATOR:Lcom/google/android/gms/internal/ix;
return-void
.end method
.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ew;)V
.registers 12
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/fb$a;->i:I
iput p2, p0, Lcom/google/android/gms/internal/fb$a;->a:I
iput-boolean p3, p0, Lcom/google/android/gms/internal/fb$a;->b:Z
iput p4, p0, Lcom/google/android/gms/internal/fb$a;->c:I
iput-boolean p5, p0, Lcom/google/android/gms/internal/fb$a;->d:Z
iput-object p6, p0, Lcom/google/android/gms/internal/fb$a;->e:Ljava/lang/String;
iput p7, p0, Lcom/google/android/gms/internal/fb$a;->f:I
if-nez p8, :cond_1d
iput-object v1, p0, Lcom/google/android/gms/internal/fb$a;->g:Ljava/lang/Class;
iput-object v1, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
:goto_18
if-nez p9, :cond_24
iput-object v1, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
:goto_1c
return-void
:cond_1d
const-class v0, Lcom/google/android/gms/internal/fh;
iput-object v0, p0, Lcom/google/android/gms/internal/fb$a;->g:Ljava/lang/Class;
iput-object p8, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
goto :goto_18
:cond_24
invoke-virtual {p9}, Lcom/google/android/gms/internal/ew;->c()Lcom/google/android/gms/internal/iw;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
goto :goto_1c
.end method
.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/fb$a;->i:I
iput p1, p0, Lcom/google/android/gms/internal/fb$a;->a:I
iput-boolean p2, p0, Lcom/google/android/gms/internal/fb$a;->b:Z
iput p3, p0, Lcom/google/android/gms/internal/fb$a;->c:I
iput-boolean p4, p0, Lcom/google/android/gms/internal/fb$a;->d:Z
iput-object p5, p0, Lcom/google/android/gms/internal/fb$a;->e:Ljava/lang/String;
iput p6, p0, Lcom/google/android/gms/internal/fb$a;->f:I
iput-object p7, p0, Lcom/google/android/gms/internal/fb$a;->g:Ljava/lang/Class;
if-nez p7, :cond_1c
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
:goto_19
iput-object p8, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
return-void
:cond_1c
invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
goto :goto_19
.end method
.method public static a(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x0
new-instance v0, Lcom/google/android/gms/internal/fb$a;
move v2, v1
move v3, v1
move v4, v1
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;ILcom/google/android/gms/internal/iw;Z)Lcom/google/android/gms/internal/fb$a;
.registers 13
new-instance v0, Lcom/google/android/gms/internal/fb$a;
invoke-interface {p2}, Lcom/google/android/gms/internal/iw;->c()I
move-result v1
invoke-interface {p2}, Lcom/google/android/gms/internal/iw;->d()I
move-result v3
const/4 v4, 0x0
const/4 v7, 0x0
move v2, p3
move-object v5, p0
move v6, p1
move-object v8, p2
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
return-object v0
.end method
.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;
.registers 12
const/16 v1, 0xb
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/fb$a;
const/4 v8, 0x0
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v7, p2
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/internal/fb$a;)Lcom/google/android/gms/internal/iw;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
return-object v0
.end method
.method public static b(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x4
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/fb$a;
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
return-object v0
.end method
.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/fb$a;
.registers 12
const/16 v1, 0xb
const/4 v2, 0x1
new-instance v0, Lcom/google/android/gms/internal/fb$a;
const/4 v8, 0x0
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v7, p2
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
return-object v0
.end method
.method public static c(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x6
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/fb$a;
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
return-object v0
.end method
.method public static d(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x7
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/internal/fb$a;
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
return-object v0
.end method
.method public static e(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
.registers 11
const/4 v7, 0x0
const/4 v1, 0x7
const/4 v2, 0x1
new-instance v0, Lcom/google/android/gms/internal/fb$a;
move v3, v1
move v4, v2
move-object v5, p0
move v6, p1
move-object v8, v7
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/iw;)V
return-object v0
.end method
.method public a()Lcom/google/android/gms/internal/fb$a;
.registers 11
new-instance v0, Lcom/google/android/gms/internal/fb$a;
iget v1, p0, Lcom/google/android/gms/internal/fb$a;->i:I
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->a:I
iget-boolean v3, p0, Lcom/google/android/gms/internal/fb$a;->b:Z
iget v4, p0, Lcom/google/android/gms/internal/fb$a;->c:I
iget-boolean v5, p0, Lcom/google/android/gms/internal/fb$a;->d:Z
iget-object v6, p0, Lcom/google/android/gms/internal/fb$a;->e:Ljava/lang/String;
iget v7, p0, Lcom/google/android/gms/internal/fb$a;->f:I
iget-object v8, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb$a;->l()Lcom/google/android/gms/internal/ew;
move-result-object v9
invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/fb$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ew;)V
return-object v0
.end method
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/google/android/gms/internal/fe;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/fb$a;->j:Lcom/google/android/gms/internal/fe;
return-void
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fb$a;->i:I
return v0
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fb$a;->a:I
return v0
.end method
.method public d()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/fb$a;->b:Z
return v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/fb$a;->CREATOR:Lcom/google/android/gms/internal/ix;
const/4 v0, 0x0
return v0
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fb$a;->c:I
return v0
.end method
.method public f()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/fb$a;->d:Z
return v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->e:Ljava/lang/String;
return-object v0
.end method
.method public h()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fb$a;->f:I
return v0
.end method
.method public i()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->g:Ljava/lang/Class;
return-object v0
.end method
.method  j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
goto :goto_5
.end method
.method public k()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method  l()Lcom/google/android/gms/internal/ew;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
invoke-static {v0}, Lcom/google/android/gms/internal/ew;->a(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/ew;
move-result-object v0
goto :goto_5
.end method
.method public m()Ljava/util/HashMap;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->j:Lcom/google/android/gms/internal/fe;
invoke-static {v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->j:Lcom/google/android/gms/internal/fe;
iget-object v1, p0, Lcom/google/android/gms/internal/fb$a;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fe;->a(Ljava/lang/String;)Ljava/util/HashMap;
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
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->i:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "                 typeIn="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->a:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "            typeInArray="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v2, p0, Lcom/google/android/gms/internal/fb$a;->b:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "                typeOut="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->c:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "           typeOutArray="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v2, p0, Lcom/google/android/gms/internal/fb$a;->d:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "        outputFieldName="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/fb$a;->e:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "      safeParcelFieldId="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->f:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "       concreteTypeName="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb$a;->j()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb$a;->i()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_a1
const-string v0, "     concreteType.class="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb$a;->i()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_a1
const-string v0, "          converterName="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
if-nez v0, :cond_b9
const-string v0, "null"
:goto_ad
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_b9
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->k:Lcom/google/android/gms/internal/iw;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
goto :goto_ad
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/fb$a;->CREATOR:Lcom/google/android/gms/internal/ix;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ix;->a(Lcom/google/android/gms/internal/fb$a;Landroid/os/Parcel;I)V
return-void
.end method