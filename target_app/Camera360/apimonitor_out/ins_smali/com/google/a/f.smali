.class public final Lcom/google/a/f;
.super Ljava/lang/Object;
.field private static a:Ljava/util/Hashtable; = null
.field private static b:B = 0x1t
.field private static c:B = 0x2t
.field private static d:B = 0x4t
.field private e:Ljava/lang/String;
.field private f:Lcom/google/a/m$a;
.field private g:B
.field private h:I
.field private i:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
sput-object v0, Lcom/google/a/f;->a:Ljava/util/Hashtable;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Lcom/google/a/m$a;IBLjava/lang/Object;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/a/f;->e:Ljava/lang/String;
iput-object p2, p0, Lcom/google/a/f;->f:Lcom/google/a/m$a;
iput p3, p0, Lcom/google/a/f;->h:I
iput-byte p4, p0, Lcom/google/a/f;->g:B
iput-object p5, p0, Lcom/google/a/f;->i:Ljava/lang/Object;
return-void
.end method
.method public static a(Ljava/lang/String;I)Lcom/google/a/f;
.registers 4
invoke-static {p0}, Lcom/google/a/f;->a(Ljava/lang/String;)Ljava/util/Hashtable;
move-result-object v0
new-instance v1, Ljava/lang/Integer;
invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/a/f;
return-object v0
.end method
.method public static a(Ljava/lang/String;Lcom/google/a/m$a;IZLjava/lang/Object;)Lcom/google/a/f;
.registers 11
new-instance v0, Lcom/google/a/f;
const/4 v4, 0x0
move-object v1, p0
move-object v2, p1
move v3, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/a/f;-><init>(Ljava/lang/String;Lcom/google/a/m$a;IBLjava/lang/Object;)V
return-object v0
.end method
.method private static a(Ljava/lang/String;)Ljava/util/Hashtable;
.registers 4
sget-object v0, Lcom/google/a/f;->a:Ljava/util/Hashtable;
invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
if-nez v0, :cond_27
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Extensions not supported by "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_27
return-object v0
.end method
.method public static a(Lcom/google/a/f;)V
.registers 4
iget-object v1, p0, Lcom/google/a/f;->e:Ljava/lang/String;
sget-object v0, Lcom/google/a/f;->a:Ljava/util/Hashtable;
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
if-nez v0, :cond_16
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
sget-object v2, Lcom/google/a/f;->a:Ljava/util/Hashtable;
invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_16
new-instance v1, Ljava/lang/Integer;
iget v2, p0, Lcom/google/a/f;->h:I
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public static a(Ljava/lang/String;Lcom/google/a/f;)V
.registers 5
invoke-static {p0}, Lcom/google/a/f;->a(Ljava/lang/String;)Ljava/util/Hashtable;
move-result-object v0
new-instance v1, Ljava/lang/Integer;
iget v2, p1, Lcom/google/a/f;->h:I
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V
if-eqz p1, :cond_3b
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3b
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Extension "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " not supported by "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b
return-void
.end method
.method private static b(Ljava/lang/String;Lcom/google/a/m$a;IZLjava/lang/Object;)Lcom/google/a/f;
.registers 11
if-eqz p3, :cond_10
const/4 v0, 0x4
:goto_3
or-int/lit8 v0, v0, 0x2
int-to-byte v4, v0
new-instance v0, Lcom/google/a/f;
move-object v1, p0
move-object v2, p1
move v3, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/a/f;-><init>(Ljava/lang/String;Lcom/google/a/m$a;IBLjava/lang/Object;)V
return-object v0
:cond_10
const/4 v0, 0x0
goto :goto_3
.end method
.method private static b(Ljava/lang/String;)Ljava/util/Enumeration;
.registers 2
invoke-static {p0}, Lcom/google/a/f;->a(Ljava/lang/String;)Ljava/util/Hashtable;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method private g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/a/f;->e:Ljava/lang/String;
return-object v0
.end method
.method public final a()Lcom/google/a/m$a;
.registers 2
iget-object v0, p0, Lcom/google/a/f;->f:Lcom/google/a/m$a;
return-object v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/google/a/f;->h:I
return v0
.end method
.method public final c()Z
.registers 2
iget-byte v0, p0, Lcom/google/a/f;->g:B
and-int/lit8 v0, v0, 0x1
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final d()Z
.registers 2
iget-byte v0, p0, Lcom/google/a/f;->g:B
and-int/lit8 v0, v0, 0x2
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final e()Z
.registers 2
iget-byte v0, p0, Lcom/google/a/f;->g:B
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:cond_4
:goto_4
return v0
:cond_5
instance-of v2, p1, Lcom/google/a/f;
if-eqz v2, :cond_1d
check-cast p1, Lcom/google/a/f;
iget v2, p0, Lcom/google/a/f;->h:I
iget v3, p1, Lcom/google/a/f;->h:I
if-ne v2, v3, :cond_1b
iget-object v2, p0, Lcom/google/a/f;->e:Ljava/lang/String;
iget-object v3, p1, Lcom/google/a/f;->e:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:cond_1b
move v0, v1
goto :goto_4
:cond_1d
move v0, v1
goto :goto_4
.end method
.method public final f()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/a/f;->i:Ljava/lang/Object;
return-object v0
.end method
.method public final hashCode()I
.registers 3
iget-object v0, p0, Lcom/google/a/f;->e:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
iget v1, p0, Lcom/google/a/f;->h:I
xor-int/2addr v0, v1
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/google/a/f;->i:Ljava/lang/Object;
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/google/a/f;->i:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
:goto_e
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/google/a/f;->e:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/google/a/f;->h:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "["
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_3d
const-string/jumbo v0, "null"
goto :goto_e
.end method