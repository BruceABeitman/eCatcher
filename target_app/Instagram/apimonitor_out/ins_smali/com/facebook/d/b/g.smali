.class public final Lcom/facebook/d/b/g;
.super Ljava/lang/Object;
.source "SoftError.java"
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/Throwable;
.field private final d:Z
.field private final e:I
.field private final f:Z
.method constructor <init>(Lcom/facebook/d/b/h;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/facebook/d/b/h;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/d/b/g;->a:Ljava/lang/String;
invoke-virtual {p1}, Lcom/facebook/d/b/h;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/d/b/g;->b:Ljava/lang/String;
invoke-virtual {p1}, Lcom/facebook/d/b/h;->c()Ljava/lang/Throwable;
move-result-object v0
iput-object v0, p0, Lcom/facebook/d/b/g;->c:Ljava/lang/Throwable;
invoke-virtual {p1}, Lcom/facebook/d/b/h;->d()Z
move-result v0
iput-boolean v0, p0, Lcom/facebook/d/b/g;->d:Z
invoke-virtual {p1}, Lcom/facebook/d/b/h;->f()I
move-result v0
iput v0, p0, Lcom/facebook/d/b/g;->e:I
invoke-virtual {p1}, Lcom/facebook/d/b/h;->g()Z
move-result v0
iput-boolean v0, p0, Lcom/facebook/d/b/g;->f:Z
return-void
.end method
.method private static varargs a([Ljava/lang/Object;)I
.registers 2
invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/h;
.registers 3
new-instance v0, Lcom/facebook/d/b/h;
invoke-direct {v0}, Lcom/facebook/d/b/h;-><init>()V
invoke-virtual {v0, p0}, Lcom/facebook/d/b/h;->a(Ljava/lang/String;)Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/facebook/d/b/h;->b(Ljava/lang/String;)Lcom/facebook/d/b/h;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-eq p0, p1, :cond_a
if-eqz p0, :cond_c
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/d/b/g;
.registers 3
new-instance v0, Lcom/facebook/d/b/h;
invoke-direct {v0}, Lcom/facebook/d/b/h;-><init>()V
invoke-virtual {v0, p0}, Lcom/facebook/d/b/h;->a(Ljava/lang/String;)Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/facebook/d/b/h;->b(Ljava/lang/String;)Lcom/facebook/d/b/h;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/d/b/h;->h()Lcom/facebook/d/b/g;
move-result-object v0
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/d/b/g;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/d/b/g;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/Throwable;
.registers 2
iget-object v0, p0, Lcom/facebook/d/b/g;->c:Ljava/lang/Throwable;
return-object v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/d/b/g;->d:Z
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/facebook/d/b/g;->e:I
return v0
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
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/facebook/d/b/g;
iget-boolean v2, p0, Lcom/facebook/d/b/g;->d:Z
iget-boolean v3, p1, Lcom/facebook/d/b/g;->d:Z
if-eq v2, v3, :cond_1d
move v0, v1
goto :goto_4
:cond_1d
iget-boolean v2, p0, Lcom/facebook/d/b/g;->f:Z
iget-boolean v3, p1, Lcom/facebook/d/b/g;->f:Z
if-eq v2, v3, :cond_25
move v0, v1
goto :goto_4
:cond_25
iget v2, p0, Lcom/facebook/d/b/g;->e:I
iget v3, p1, Lcom/facebook/d/b/g;->e:I
if-eq v2, v3, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/facebook/d/b/g;->a:Ljava/lang/String;
iget-object v3, p1, Lcom/facebook/d/b/g;->a:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/facebook/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_39
move v0, v1
goto :goto_4
:cond_39
iget-object v2, p0, Lcom/facebook/d/b/g;->c:Ljava/lang/Throwable;
iget-object v3, p1, Lcom/facebook/d/b/g;->c:Ljava/lang/Throwable;
invoke-static {v2, v3}, Lcom/facebook/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_45
move v0, v1
goto :goto_4
:cond_45
iget-object v2, p0, Lcom/facebook/d/b/g;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/facebook/d/b/g;->b:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/facebook/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/d/b/g;->f:Z
return v0
.end method
.method public final hashCode()I
.registers 4
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/facebook/d/b/g;->a:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/facebook/d/b/g;->b:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-boolean v2, p0, Lcom/facebook/d/b/g;->d:Z
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
iget v2, p0, Lcom/facebook/d/b/g;->e:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/facebook/d/b/g;->a([Ljava/lang/Object;)I
move-result v0
return v0
.end method