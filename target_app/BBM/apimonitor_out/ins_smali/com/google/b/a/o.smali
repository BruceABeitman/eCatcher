.class public final Lcom/google/b/a/o;
.super Ljava/lang/Object;
.source "Preconditions.java"
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
return-object p0
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
if-nez p0, :cond_c
new-instance v0, Ljava/lang/NullPointerException;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-object p0
.end method
.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.registers 9
const/4 v0, 0x0
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v1
array-length v4, p1
mul-int/lit8 v4, v4, 0x10
add-int/2addr v1, v4
invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V
move v1, v0
:goto_13
array-length v4, p1
if-ge v0, v4, :cond_33
const-string v4, "%s"
invoke-virtual {v2, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_33
invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v0, 0x1
aget-object v0, p1, v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v4, 0x2
move v6, v1
move v1, v0
move v0, v6
goto :goto_13
:cond_33
invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
array-length v1, p1
if-ge v0, v1, :cond_60
const-string v1, " ["
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v0, 0x1
aget-object v0, p1, v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move v0, v1
:goto_4a
array-length v1, p1
if-ge v0, v1, :cond_5b
const-string v1, ", "
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v0, 0x1
aget-object v0, p1, v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_4a
:cond_5b
const/16 v0, 0x5d
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_60
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static a(ZLjava/lang/Object;)V
.registers 4
if-nez p0, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method public static varargs a(ZLjava/lang/String;[Ljava/lang/Object;)V
.registers 5
if-nez p0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
invoke-static {p1, p2}, Lcom/google/b/a/o;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method public static b(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static b(ZLjava/lang/Object;)V
.registers 4
if-nez p0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method