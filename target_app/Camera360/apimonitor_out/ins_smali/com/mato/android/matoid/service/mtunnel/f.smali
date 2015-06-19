.class public final Lcom/mato/android/matoid/service/mtunnel/f;
.super Lcom/google/a/g;
.field private static final b:Lcom/mato/android/matoid/service/mtunnel/f;
.field private a:I
.field private c:Ljava/lang/String;
.field private d:Lcom/mato/android/matoid/service/mtunnel/b;
.field private e:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/f;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/mato/android/matoid/service/mtunnel/f;-><init>(B)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/f;->b:Lcom/mato/android/matoid/service/mtunnel/f;
sget-object v1, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;
iput-object v1, v0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
return-void
.end method
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "mato.mtunnel.UserInfo"
invoke-direct {p0, v0}, Lcom/google/a/g;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
return-void
.end method
.method private constructor <init>(B)V
.registers 3
invoke-direct {p0}, Lcom/google/a/g;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
return-void
.end method
.method private static a(Ljava/io/InputStream;)Lcom/mato/android/matoid/service/mtunnel/f;
.registers 3
invoke-static {p0}, Lcom/google/a/c;->a(Ljava/io/InputStream;)Lcom/google/a/c;
move-result-object v0
new-instance v1, Lcom/mato/android/matoid/service/mtunnel/f;
invoke-direct {v1}, Lcom/mato/android/matoid/service/mtunnel/f;-><init>()V
invoke-virtual {v1, v0}, Lcom/mato/android/matoid/service/mtunnel/f;->a(Lcom/google/a/c;)V
return-object v1
.end method
.method private a(Lcom/mato/android/matoid/service/mtunnel/b;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
if-nez p1, :cond_b
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_b
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
or-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
iput-object p1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
return-void
.end method
.method private a(Z)V
.registers 3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
or-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
iput-boolean p1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
return-void
.end method
.method private static b(Lcom/google/a/c;)Lcom/mato/android/matoid/service/mtunnel/f;
.registers 2
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/f;
invoke-direct {v0}, Lcom/mato/android/matoid/service/mtunnel/f;-><init>()V
invoke-virtual {v0, p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a(Lcom/google/a/c;)V
return-object v0
.end method
.method private static f()Lcom/mato/android/matoid/service/mtunnel/f;
.registers 1
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/f;->b:Lcom/mato/android/matoid/service/mtunnel/f;
return-object v0
.end method
.method private static g()Lcom/mato/android/matoid/service/mtunnel/f;
.registers 1
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/f;->b:Lcom/mato/android/matoid/service/mtunnel/f;
return-object v0
.end method
.method private h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
return-object v0
.end method
.method private i()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private j()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
and-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
return-void
.end method
.method private k()Lcom/mato/android/matoid/service/mtunnel/b;
.registers 2
iget-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
return-object v0
.end method
.method private l()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private m()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
and-int/lit8 v0, v0, -0x3
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
return-void
.end method
.method private n()Z
.registers 2
iget-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
return v0
.end method
.method private o()Z
.registers 2
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private p()V
.registers 2
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
iget v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
and-int/lit8 v0, v0, -0x5
iput v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
return-void
.end method
.method private q()V
.registers 2
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/b;->c:Lcom/mato/android/matoid/service/mtunnel/b;
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
return-void
.end method
.method public final a(Lcom/google/a/c;)V
.registers 4
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
:goto_3
:cond_3
invoke-virtual {p1}, Lcom/google/a/c;->a()I
move-result v0
sparse-switch v0, :sswitch_data_50
invoke-virtual {p1, v0}, Lcom/google/a/c;->a(I)Z
move-result v0
if-nez v0, :cond_3
:sswitch_10
return-void
:sswitch_11
invoke-virtual {p1}, Lcom/google/a/c;->j()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
or-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
goto :goto_3
:sswitch_21
invoke-virtual {p1}, Lcom/google/a/c;->m()I
move-result v0
invoke-static {v0}, Lcom/mato/android/matoid/service/mtunnel/b;->b(I)Lcom/mato/android/matoid/service/mtunnel/b;
move-result-object v0
if-eqz v0, :cond_3
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
if-nez v0, :cond_36
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_36
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
or-int/lit8 v1, v1, 0x2
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
iput-object v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
goto :goto_3
:sswitch_3f
invoke-virtual {p1}, Lcom/google/a/c;->i()Z
move-result v0
invoke-virtual {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->a()V
iget v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
or-int/lit8 v1, v1, 0x4
iput v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->a:I
iput-boolean v0, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
goto :goto_3
nop
:sswitch_data_50
.sparse-switch
0x0 -> :sswitch_10
0xa -> :sswitch_11
0x10 -> :sswitch_21
0x18 -> :sswitch_3f
.end sparse-switch
.end method
.method public final a(Lcom/google/a/d;)V
.registers 4
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->i()Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lcom/google/a/d;->a(ILjava/lang/String;)V
:cond_c
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->l()Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x2
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
invoke-virtual {v1}, Lcom/mato/android/matoid/service/mtunnel/b;->a()I
move-result v1
invoke-virtual {p1, v0, v1}, Lcom/google/a/d;->b(II)V
:cond_1c
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->o()Z
move-result v0
if-eqz v0, :cond_28
const/4 v0, 0x3
iget-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
invoke-virtual {p1, v0, v1}, Lcom/google/a/d;->a(IZ)V
:cond_28
return-void
.end method
.method public final b()Z
.registers 2
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->i()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
const/4 v0, 0x1
goto :goto_7
.end method
.method public final c()I
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->i()Z
move-result v1
if-eqz v1, :cond_10
const/4 v0, 0x1
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/google/a/d;->b(ILjava/lang/String;)I
move-result v0
add-int/lit8 v0, v0, 0x0
:cond_10
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->l()Z
move-result v1
if-eqz v1, :cond_22
const/4 v1, 0x2
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
invoke-virtual {v2}, Lcom/mato/android/matoid/service/mtunnel/b;->a()I
move-result v2
invoke-static {v1, v2}, Lcom/google/a/d;->d(II)I
move-result v1
add-int/2addr v0, v1
:cond_22
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->o()Z
move-result v1
if-eqz v1, :cond_30
const/4 v1, 0x3
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
invoke-static {v1, v2}, Lcom/google/a/d;->b(IZ)I
move-result v1
add-int/2addr v0, v1
:cond_30
return v0
.end method
.method public final d()Lcom/google/a/g;
.registers 2
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/f;
invoke-direct {v0}, Lcom/mato/android/matoid/service/mtunnel/f;-><init>()V
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
instance-of v2, p1, Lcom/mato/android/matoid/service/mtunnel/f;
if-nez v2, :cond_b
move v0, v1
goto :goto_4
:cond_b
check-cast p1, Lcom/mato/android/matoid/service/mtunnel/f;
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_19
move v0, v1
goto :goto_4
:cond_19
iget-object v2, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
iget-object v3, p1, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
if-eq v2, v3, :cond_21
move v0, v1
goto :goto_4
:cond_21
iget-boolean v2, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
iget-boolean v3, p1, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x29
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->i()Z
move-result v1
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->c:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x1f
add-int/2addr v0, v1
:cond_1d
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->l()Z
move-result v1
if-eqz v1, :cond_2c
iget-object v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->d:Lcom/mato/android/matoid/service/mtunnel/b;
invoke-virtual {v1}, Lcom/mato/android/matoid/service/mtunnel/b;->hashCode()I
move-result v1
mul-int/lit8 v1, v1, 0x25
add-int/2addr v0, v1
:cond_2c
invoke-direct {p0}, Lcom/mato/android/matoid/service/mtunnel/f;->o()Z
move-result v1
if-eqz v1, :cond_3a
iget-boolean v1, p0, Lcom/mato/android/matoid/service/mtunnel/f;->e:Z
if-eqz v1, :cond_3b
const/4 v1, 0x1
:goto_37
mul-int/lit8 v1, v1, 0x21
add-int/2addr v0, v1
:cond_3a
return v0
:cond_3b
const/4 v1, 0x0
goto :goto_37
.end method