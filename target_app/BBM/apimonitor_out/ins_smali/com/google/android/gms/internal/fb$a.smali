.class public Lcom/google/android/gms/internal/fb$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/fc;
.field protected final CA:Ljava/lang/Class;
.field protected final CB:Ljava/lang/String;
.field private CC:Lcom/google/android/gms/internal/fe;
.field private CD:Lcom/google/android/gms/internal/fb$b;
.field protected final Cu:I
.field protected final Cv:Z
.field protected final Cw:I
.field protected final Cx:Z
.field protected final Cy:Ljava/lang/String;
.field protected final Cz:I
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/fc;
invoke-direct {v0}, Lcom/google/android/gms/internal/fc;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/fb$a;->CREATOR:Lcom/google/android/gms/internal/fc;
return-void
.end method
.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ew;)V
.registers 12
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/fb$a;->wj:I
iput p2, p0, Lcom/google/android/gms/internal/fb$a;->Cu:I
iput-boolean p3, p0, Lcom/google/android/gms/internal/fb$a;->Cv:Z
iput p4, p0, Lcom/google/android/gms/internal/fb$a;->Cw:I
iput-boolean p5, p0, Lcom/google/android/gms/internal/fb$a;->Cx:Z
iput-object p6, p0, Lcom/google/android/gms/internal/fb$a;->Cy:Ljava/lang/String;
iput p7, p0, Lcom/google/android/gms/internal/fb$a;->Cz:I
if-nez p8, :cond_1d
iput-object v1, p0, Lcom/google/android/gms/internal/fb$a;->CA:Ljava/lang/Class;
iput-object v1, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
:goto_18
if-nez p9, :cond_24
iput-object v1, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
:goto_1c
return-void
:cond_1d
const-class v0, Lcom/google/android/gms/internal/fh;
iput-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CA:Ljava/lang/Class;
iput-object p8, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
goto :goto_18
:cond_24
invoke-virtual {p9}, Lcom/google/android/gms/internal/ew;->ej()Lcom/google/android/gms/internal/fb$b;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
goto :goto_1c
.end method
.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/fb$a;->wj:I
iput p1, p0, Lcom/google/android/gms/internal/fb$a;->Cu:I
iput-boolean p2, p0, Lcom/google/android/gms/internal/fb$a;->Cv:Z
iput p3, p0, Lcom/google/android/gms/internal/fb$a;->Cw:I
iput-boolean p4, p0, Lcom/google/android/gms/internal/fb$a;->Cx:Z
iput-object p5, p0, Lcom/google/android/gms/internal/fb$a;->Cy:Ljava/lang/String;
iput p6, p0, Lcom/google/android/gms/internal/fb$a;->Cz:I
iput-object p7, p0, Lcom/google/android/gms/internal/fb$a;->CA:Ljava/lang/Class;
if-nez p7, :cond_1c
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
:goto_19
iput-object p8, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
return-void
:cond_1c
invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
goto :goto_19
.end method
.method public static a(Ljava/lang/String;ILcom/google/android/gms/internal/fb$b;Z)Lcom/google/android/gms/internal/fb$a;
.registers 13
new-instance v0, Lcom/google/android/gms/internal/fb$a;
invoke-interface {p2}, Lcom/google/android/gms/internal/fb$b;->el()I
move-result v1
invoke-interface {p2}, Lcom/google/android/gms/internal/fb$b;->em()I
move-result v3
const/4 v4, 0x0
const/4 v7, 0x0
move v2, p3
move-object v5, p0
move v6, p1
move-object v8, p2
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
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
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
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
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
return-object v0
.end method
.method static synthetic c(Lcom/google/android/gms/internal/fb$a;)Lcom/google/android/gms/internal/fb$b;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
return-object v0
.end method
.method public static g(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
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
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
return-object v0
.end method
.method public static h(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
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
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
return-object v0
.end method
.method public static i(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
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
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
return-object v0
.end method
.method public static j(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
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
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
return-object v0
.end method
.method public static k(Ljava/lang/String;I)Lcom/google/android/gms/internal/fb$a;
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
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/fb$a;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/internal/fb$b;)V
return-object v0
.end method
.method public a(Lcom/google/android/gms/internal/fe;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/fb$a;->CC:Lcom/google/android/gms/internal/fe;
return-void
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/fb$a;->CREATOR:Lcom/google/android/gms/internal/fc;
const/4 v0, 0x0
return v0
.end method
.method public el()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fb$a;->Cu:I
return v0
.end method
.method public em()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fb$a;->Cw:I
return v0
.end method
.method public eq()Lcom/google/android/gms/internal/fb$a;
.registers 11
new-instance v0, Lcom/google/android/gms/internal/fb$a;
iget v1, p0, Lcom/google/android/gms/internal/fb$a;->wj:I
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->Cu:I
iget-boolean v3, p0, Lcom/google/android/gms/internal/fb$a;->Cv:Z
iget v4, p0, Lcom/google/android/gms/internal/fb$a;->Cw:I
iget-boolean v5, p0, Lcom/google/android/gms/internal/fb$a;->Cx:Z
iget-object v6, p0, Lcom/google/android/gms/internal/fb$a;->Cy:Ljava/lang/String;
iget v7, p0, Lcom/google/android/gms/internal/fb$a;->Cz:I
iget-object v8, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb$a;->ey()Lcom/google/android/gms/internal/ew;
move-result-object v9
invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/fb$a;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ew;)V
return-object v0
.end method
.method public er()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/fb$a;->Cv:Z
return v0
.end method
.method public es()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/fb$a;->Cx:Z
return v0
.end method
.method public et()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->Cy:Ljava/lang/String;
return-object v0
.end method
.method public eu()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fb$a;->Cz:I
return v0
.end method
.method public ev()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CA:Ljava/lang/Class;
return-object v0
.end method
.method  ew()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
goto :goto_5
.end method
.method public ex()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method  ey()Lcom/google/android/gms/internal/ew;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
invoke-static {v0}, Lcom/google/android/gms/internal/ew;->a(Lcom/google/android/gms/internal/fb$b;)Lcom/google/android/gms/internal/ew;
move-result-object v0
goto :goto_5
.end method
.method public ez()Ljava/util/HashMap;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
invoke-static {v0}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CC:Lcom/google/android/gms/internal/fe;
invoke-static {v0}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CC:Lcom/google/android/gms/internal/fe;
iget-object v1, p0, Lcom/google/android/gms/internal/fb$a;->CB:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fe;->ao(Ljava/lang/String;)Ljava/util/HashMap;
move-result-object v0
return-object v0
.end method
.method public g(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fb$b;->g(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fb$a;->wj:I
return v0
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
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->wj:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "                 typeIn="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->Cu:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "            typeInArray="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v2, p0, Lcom/google/android/gms/internal/fb$a;->Cv:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "                typeOut="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->Cw:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "           typeOutArray="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v2, p0, Lcom/google/android/gms/internal/fb$a;->Cx:Z
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "        outputFieldName="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/internal/fb$a;->Cy:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "      safeParcelFieldId="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v2, p0, Lcom/google/android/gms/internal/fb$a;->Cz:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "       concreteTypeName="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb$a;->ew()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb$a;->ev()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_a1
const-string v0, "     concreteType.class="
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/google/android/gms/internal/fb$a;->ev()Ljava/lang/Class;
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
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
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
iget-object v0, p0, Lcom/google/android/gms/internal/fb$a;->CD:Lcom/google/android/gms/internal/fb$b;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
goto :goto_ad
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/fb$a;->CREATOR:Lcom/google/android/gms/internal/fc;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/fb$a;Landroid/os/Parcel;I)V
return-void
.end method