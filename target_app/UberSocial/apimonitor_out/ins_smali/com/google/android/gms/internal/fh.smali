.class public Lcom/google/android/gms/internal/fh;
.super Lcom/google/android/gms/internal/fb;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/jb;
.field private final a:I
.field private final b:Landroid/os/Parcel;
.field private final c:I
.field private final d:Lcom/google/android/gms/internal/fe;
.field private final e:Ljava/lang/String;
.field private f:I
.field private g:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/jb;
invoke-direct {v0}, Lcom/google/android/gms/internal/jb;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/jb;
return-void
.end method
.method constructor <init>(ILandroid/os/Parcel;Lcom/google/android/gms/internal/fe;)V
.registers 6
const/4 v1, 0x2
invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/fh;->a:I
invoke-static {p2}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Parcel;
iput-object v0, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Parcel;
iput v1, p0, Lcom/google/android/gms/internal/fh;->c:I
iput-object p3, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
if-nez v0, :cond_1c
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/fh;->e:Ljava/lang/String;
:goto_19
iput v1, p0, Lcom/google/android/gms/internal/fh;->f:I
return-void
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->e()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/fh;->e:Ljava/lang/String;
goto :goto_19
.end method
.method private constructor <init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/internal/fe;Ljava/lang/String;)V
.registers 7
const/4 v2, 0x1
invoke-direct {p0}, Lcom/google/android/gms/internal/fb;-><init>()V
iput v2, p0, Lcom/google/android/gms/internal/fh;->a:I
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Parcel;
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Parcel;
const/4 v1, 0x0
invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V
iput v2, p0, Lcom/google/android/gms/internal/fh;->c:I
invoke-static {p2}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fe;
iput-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
invoke-static {p3}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/internal/fh;->e:Ljava/lang/String;
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/internal/fh;->f:I
return-void
.end method
.method public static a(Lcom/google/android/gms/internal/fb;)Lcom/google/android/gms/internal/fh;
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-static {p0}, Lcom/google/android/gms/internal/fh;->b(Lcom/google/android/gms/internal/fb;)Lcom/google/android/gms/internal/fe;
move-result-object v1
new-instance v2, Lcom/google/android/gms/internal/fh;
check-cast p0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/fh;-><init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Lcom/google/android/gms/internal/fe;Ljava/lang/String;)V
return-object v2
.end method
.method public static a(Landroid/os/Bundle;)Ljava/util/HashMap;
.registers 5
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_d
:cond_21
return-object v1
.end method
.method private static a(Ljava/util/HashMap;)Ljava/util/HashMap;
.registers 5
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2b
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/fb$a;
invoke-virtual {v1}, Lcom/google/android/gms/internal/fb$a;->h()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_d
:cond_2b
return-object v2
.end method
.method private static a(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fb;)V
.registers 7
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fe;->a(Ljava/lang/Class;)Z
move-result v1
if-nez v1, :cond_83
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb;->a()Ljava/util/HashMap;
move-result-object v2
invoke-virtual {p1}, Lcom/google/android/gms/internal/fb;->a()Ljava/util/HashMap;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/fe;->a(Ljava/lang/Class;Ljava/util/HashMap;)V
invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1d
:cond_1d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_83
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/fb$a;
invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->i()Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_1d
:try_start_35
invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/fb;
invoke-static {p0, v1}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fb;)V
:try_end_3e
.catch Ljava/lang/InstantiationException; {:try_start_35 .. :try_end_3e} :catch_3f
.catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_3e} :catch_61
goto :goto_1d
:catch_3f
move-exception v1
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Could not instantiate an object of type "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->i()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catch_61
move-exception v1
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Could not access object of type "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/google/android/gms/internal/fb$a;->i()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_83
return-void
.end method
.method private a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
.registers 7
packed-switch p2, :pswitch_data_76
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown type = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1c
invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
:goto_1f
return-void
:pswitch_20
const-string v0, "\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/jk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1f
:pswitch_38
const-string v0, "\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p3, [B
check-cast p3, [B
invoke-static {p3}, Lcom/google/android/gms/internal/jd;->a([B)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1f
:pswitch_50
const-string v0, "\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
check-cast p3, [B
check-cast p3, [B
invoke-static {p3}, Lcom/google/android/gms/internal/jd;->b([B)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1f
:pswitch_67
check-cast p3, Ljava/util/HashMap;
invoke-static {p1, p3}, Lcom/google/android/gms/internal/jn;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
goto :goto_1f
:pswitch_6d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Method does not accept concrete type."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
nop
:pswitch_data_76
.packed-switch 0x0
:pswitch_1c
:pswitch_1c
:pswitch_1c
:pswitch_1c
:pswitch_1c
:pswitch_1c
:pswitch_1c
:pswitch_20
:pswitch_38
:pswitch_50
:pswitch_67
:pswitch_6d
.end packed-switch
.end method
.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Landroid/os/Parcel;I)V
.registers 8
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->e()I
move-result v0
packed-switch v0, :pswitch_data_bc
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown field out type = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->e()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_24
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
:goto_33
return-void
:pswitch_34
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_40
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_50
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F
move-result v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_60
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_70
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_7c
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_8c
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_98
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)[B
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_a4
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/Bundle;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/fh;->a(Landroid/os/Bundle;)Ljava/util/HashMap;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
goto :goto_33
:pswitch_b4
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Method does not accept concrete type."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_data_bc
.packed-switch 0x0
:pswitch_24
:pswitch_34
:pswitch_40
:pswitch_50
:pswitch_60
:pswitch_70
:pswitch_7c
:pswitch_8c
:pswitch_98
:pswitch_98
:pswitch_a4
:pswitch_b4
.end packed-switch
.end method
.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->d()Z
move-result v0
if-eqz v0, :cond_c
check-cast p3, Ljava/util/ArrayList;
invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/util/ArrayList;)V
:goto_b
return-void
:cond_c
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->c()I
move-result v0
invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
goto :goto_b
.end method
.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Ljava/util/ArrayList;)V
.registers 8
const-string v0, "["
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p3}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v0, 0x0
:goto_a
if-ge v0, v1, :cond_21
if-eqz v0, :cond_13
const-string v2, ","
invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_13
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->c()I
move-result v2
invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_21
const-string v0, "]"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/fb$a;Landroid/os/Parcel;I)V
.registers 8
const-string v0, "\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p3}, Lcom/google/android/gms/internal/fb$a;->k()Z
move-result v0
if-eqz v0, :cond_19
invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Landroid/os/Parcel;I)V
:goto_18
return-void
:cond_19
invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/fh;->b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Landroid/os/Parcel;I)V
goto :goto_18
.end method
.method private a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V
.registers 12
invoke-static {p2}, Lcom/google/android/gms/internal/fh;->a(Ljava/util/HashMap;)Ljava/util/HashMap;
move-result-object v6
const/16 v0, 0x7b
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v7
const/4 v0, 0x0
move v1, v0
:goto_f
:cond_f
invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-ge v0, v7, :cond_45
invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v5
invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
if-eqz v0, :cond_f
if-eqz v1, :cond_30
const-string v1, ","
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_30
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/google/android/gms/internal/fb$a;
move-object v0, p0
move-object v1, p1
move-object v4, p3
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/fb$a;Landroid/os/Parcel;I)V
const/4 v0, 0x1
move v1, v0
goto :goto_f
:cond_45
invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I
move-result v0
if-eq v0, v7, :cond_64
new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Overread allowed size end="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p3}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v0
:cond_64
const/16 v0, 0x7d
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
return-void
.end method
.method private static b(Lcom/google/android/gms/internal/fb;)Lcom/google/android/gms/internal/fe;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/fe;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fe;-><init>(Ljava/lang/Class;)V
invoke-static {v0, p0}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fb;)V
invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->b()V
invoke-virtual {v0}, Lcom/google/android/gms/internal/fe;->a()V
return-object v0
.end method
.method private b(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/fb$a;Landroid/os/Parcel;I)V
.registers 11
const/4 v2, 0x0
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->f()Z
move-result v0
if-eqz v0, :cond_88
const-string v0, "["
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->e()I
move-result v0
packed-switch v0, :pswitch_data_18c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Unknown field type out."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1b
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[I
move-result-object v0
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jc;->a(Ljava/lang/StringBuilder;[I)V
:goto_22
:cond_22
const-string v0, "]"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_27
return-void
:pswitch_28
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->t(Landroid/os/Parcel;I)[Ljava/math/BigInteger;
move-result-object v0
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jc;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
goto :goto_22
:pswitch_30
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->s(Landroid/os/Parcel;I)[J
move-result-object v0
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jc;->a(Ljava/lang/StringBuilder;[J)V
goto :goto_22
:pswitch_38
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->u(Landroid/os/Parcel;I)[F
move-result-object v0
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jc;->a(Ljava/lang/StringBuilder;[F)V
goto :goto_22
:pswitch_40
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->v(Landroid/os/Parcel;I)[D
move-result-object v0
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jc;->a(Ljava/lang/StringBuilder;[D)V
goto :goto_22
:pswitch_48
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->w(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
move-result-object v0
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jc;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
goto :goto_22
:pswitch_50
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)[Z
move-result-object v0
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jc;->a(Ljava/lang/StringBuilder;[Z)V
goto :goto_22
:pswitch_58
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->x(Landroid/os/Parcel;I)[Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/google/android/gms/internal/jc;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
goto :goto_22
:pswitch_60
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_68
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;I)[Landroid/os/Parcel;
move-result-object v1
array-length v3, v1
move v0, v2
:goto_6e
if-ge v0, v3, :cond_22
if-lez v0, :cond_77
const-string v4, ","
invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_77
aget-object v4, v1, v0
invoke-virtual {v4, v2}, Landroid/os/Parcel;->setDataPosition(I)V
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->m()Ljava/util/HashMap;
move-result-object v4
aget-object v5, v1, v0
invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V
add-int/lit8 v0, v0, 0x1
goto :goto_6e
:cond_88
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->e()I
move-result v0
packed-switch v0, :pswitch_data_1a8
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Unknown field type out"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_97
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
goto :goto_27
:pswitch_9f
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto :goto_27
:pswitch_a7
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J
move-result-wide v0
invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_b0
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)F
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_b9
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)D
move-result-wide v0
invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_c2
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_cb
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v0
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_d4
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v0
const-string v1, "\""
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Lcom/google/android/gms/internal/jk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_ed
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)[B
move-result-object v0
const-string v1, "\""
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Lcom/google/android/gms/internal/jd;->a([B)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_106
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)[B
move-result-object v0
const-string v1, "\""
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Lcom/google/android/gms/internal/jd;->b([B)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "\""
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_11e
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->size()I
const-string v0, "{"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
:goto_134
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_174
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v1, :cond_147
const-string v1, ","
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_147
const-string v1, "\""
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, "\""
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, ":"
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "\""
invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/jk;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move v1, v2
goto :goto_134
:cond_174
const-string v0, "}"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_27
:pswitch_17b
invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->z(Landroid/os/Parcel;I)Landroid/os/Parcel;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V
invoke-virtual {p2}, Lcom/google/android/gms/internal/fb$a;->m()Ljava/util/HashMap;
move-result-object v1
invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V
goto/16 :goto_27
nop
:pswitch_data_1a8
.packed-switch 0x0
:pswitch_97
:pswitch_9f
:pswitch_a7
:pswitch_b0
:pswitch_b9
:pswitch_c2
:pswitch_cb
:pswitch_d4
:pswitch_ed
:pswitch_106
:pswitch_11e
:pswitch_17b
.end packed-switch
:pswitch_data_18c
.packed-switch 0x0
:pswitch_1b
:pswitch_28
:pswitch_30
:pswitch_38
:pswitch_40
:pswitch_48
:pswitch_50
:pswitch_58
:pswitch_60
:pswitch_60
:pswitch_60
:pswitch_68
.end packed-switch
.end method
.method protected a(Ljava/lang/String;)Ljava/lang/Object;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Converting to JSON does not require this method."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a()Ljava/util/HashMap;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
iget-object v1, p0, Lcom/google/android/gms/internal/fh;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fe;->a(Ljava/lang/String;)Ljava/util/HashMap;
move-result-object v0
goto :goto_5
.end method
.method protected b(Ljava/lang/String;)Z
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Converting to JSON does not require this method."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public d()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/fh;->a:I
return v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/jb;
const/4 v0, 0x0
return v0
.end method
.method public e()Landroid/os/Parcel;
.registers 4
const/4 v2, 0x2
iget v0, p0, Lcom/google/android/gms/internal/fh;->f:I
packed-switch v0, :pswitch_data_26
:goto_6
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Parcel;
return-object v0
:pswitch_9
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Parcel;
invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/fh;->g:I
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Parcel;
iget v1, p0, Lcom/google/android/gms/internal/fh;->g:I
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
iput v2, p0, Lcom/google/android/gms/internal/fh;->f:I
goto :goto_6
:pswitch_1b
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->b:Landroid/os/Parcel;
iget v1, p0, Lcom/google/android/gms/internal/fh;->g:I
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
iput v2, p0, Lcom/google/android/gms/internal/fh;->f:I
goto :goto_6
nop
:pswitch_data_26
.packed-switch 0x0
:pswitch_9
:pswitch_1b
.end packed-switch
.end method
.method  f()Lcom/google/android/gms/internal/fe;
.registers 4
iget v0, p0, Lcom/google/android/gms/internal/fh;->c:I
packed-switch v0, :pswitch_data_28
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid creation type: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/google/android/gms/internal/fh;->c:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_20
const/4 v0, 0x0
:goto_21
return-object v0
:pswitch_22
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
goto :goto_21
:pswitch_25
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
goto :goto_21
:pswitch_data_28
.packed-switch 0x0
:pswitch_20
:pswitch_22
:pswitch_25
.end packed-switch
.end method
.method public toString()Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
const-string v1, "Cannot convert to JSON on client side."
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/google/android/gms/internal/fh;->e()Landroid/os/Parcel;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V
new-instance v1, Ljava/lang/StringBuilder;
const/16 v2, 0x64
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v2, p0, Lcom/google/android/gms/internal/fh;->d:Lcom/google/android/gms/internal/fe;
iget-object v3, p0, Lcom/google/android/gms/internal/fh;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fe;->a(Ljava/lang/String;)Ljava/util/HashMap;
move-result-object v2
invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/fh;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/jb;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/fh;Landroid/os/Parcel;I)V
return-void
.end method