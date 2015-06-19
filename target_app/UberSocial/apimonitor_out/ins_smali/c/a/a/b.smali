.class final Lc/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Lc/a/a/b;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/String;I)I
.registers 3
:goto_0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-ge p1, v0, :cond_10
invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Lc/a/a/b;->b(C)Z
move-result v0
if-eqz v0, :cond_11
:cond_10
return p1
:cond_11
add-int/lit8 p1, p1, 0x1
goto :goto_0
.end method
.method static a(Ljava/lang/String;)Lc/a/a/c;
.registers 4
sget-object v0, Lc/a/a/b;->a:Lc/a/a/b;
if-nez v0, :cond_b
new-instance v0, Lc/a/a/b;
invoke-direct {v0}, Lc/a/a/b;-><init>()V
sput-object v0, Lc/a/a/b;->a:Lc/a/a/b;
:cond_b
new-instance v0, Lc/a/a/c;
invoke-direct {v0}, Lc/a/a/c;-><init>()V
if-eqz p0, :cond_1e
new-instance v1, Lc/a/a/d;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lc/a/a/d;-><init>(Lc/a/a/d;)V
invoke-static {p0, v0, v1}, Lc/a/a/b;->a(Ljava/lang/String;Lc/a/a/c;Lc/a/a/d;)V
invoke-static {p0, v0, v1}, Lc/a/a/b;->b(Ljava/lang/String;Lc/a/a/c;Lc/a/a/d;)V
:cond_1e
return-object v0
.end method
.method static a(Lc/a/a/c;)Ljava/lang/String;
.registers 6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lc/a/a/c;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Lc/a/a/c;->b(Lc/a/a/c;)Ljava/util/Hashtable;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v3
:goto_14
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-nez v0, :cond_1f
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1f
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {p0}, Lc/a/a/c;->b(Lc/a/a/c;)Ljava/util/Hashtable;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "; "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "=\""
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v0, 0x22
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_14
.end method
.method private static a(Ljava/lang/String;Lc/a/a/d;)Ljava/lang/String;
.registers 7
const/4 v1, 0x1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget v0, p1, Lc/a/a/d;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p1, Lc/a/a/d;->a:I
move v0, v1
:cond_d
iget v3, p1, Lc/a/a/d;->a:I
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x22
if-ne v3, v4, :cond_24
if-eqz v0, :cond_24
iget v0, p1, Lc/a/a/d;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p1, Lc/a/a/d;->a:I
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_24
iget v3, p1, Lc/a/a/d;->a:I
add-int/lit8 v4, v3, 0x1
iput v4, p1, Lc/a/a/d;->a:I
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v3
if-nez v0, :cond_44
move v0, v1
:goto_31
:cond_31
if-eqz v0, :cond_36
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_36
iget v3, p1, Lc/a/a/d;->a:I
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
if-ne v3, v4, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_44
const/16 v4, 0x5c
if-ne v3, v4, :cond_31
const/4 v0, 0x0
goto :goto_31
.end method
.method private static a(Ljava/lang/String;Lc/a/a/c;Lc/a/a/d;)V
.registers 5
invoke-static {p0, p2}, Lc/a/a/b;->b(Ljava/lang/String;Lc/a/a/d;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lc/a/a/c;->a(Lc/a/a/c;Ljava/lang/String;)V
iget v0, p2, Lc/a/a/d;->a:I
invoke-static {p0, v0}, Lc/a/a/b;->a(Ljava/lang/String;I)I
move-result v0
iput v0, p2, Lc/a/a/d;->a:I
iget v0, p2, Lc/a/a/d;->a:I
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-ge v0, v1, :cond_25
iget v0, p2, Lc/a/a/d;->a:I
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x2f
if-eq v0, v1, :cond_2b
:cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_2b
iget v0, p2, Lc/a/a/d;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p2, Lc/a/a/d;->a:I
invoke-static {p0, p2}, Lc/a/a/b;->b(Ljava/lang/String;Lc/a/a/d;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lc/a/a/c;->b(Lc/a/a/c;Ljava/lang/String;)V
return-void
.end method
.method private static a(C)Z
.registers 2
const/16 v0, 0x28
if-eq p0, v0, :cond_3e
const/16 v0, 0x29
if-eq p0, v0, :cond_3e
const/16 v0, 0x5b
if-eq p0, v0, :cond_3e
const/16 v0, 0x5d
if-eq p0, v0, :cond_3e
const/16 v0, 0x3c
if-eq p0, v0, :cond_3e
const/16 v0, 0x3e
if-eq p0, v0, :cond_3e
const/16 v0, 0x40
if-eq p0, v0, :cond_3e
const/16 v0, 0x2c
if-eq p0, v0, :cond_3e
const/16 v0, 0x3b
if-eq p0, v0, :cond_3e
const/16 v0, 0x3a
if-eq p0, v0, :cond_3e
const/16 v0, 0x5c
if-eq p0, v0, :cond_3e
const/16 v0, 0x22
if-eq p0, v0, :cond_3e
const/16 v0, 0x2f
if-eq p0, v0, :cond_3e
const/16 v0, 0x3f
if-eq p0, v0, :cond_3e
const/16 v0, 0x3d
if-eq p0, v0, :cond_3e
const/4 v0, 0x0
:goto_3d
return v0
:cond_3e
const/4 v0, 0x1
goto :goto_3d
.end method
.method private static b(Ljava/lang/String;Lc/a/a/d;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget v1, p1, Lc/a/a/d;->a:I
invoke-static {p0, v1}, Lc/a/a/b;->a(Ljava/lang/String;I)I
move-result v1
iput v1, p1, Lc/a/a/d;->a:I
iget v1, p1, Lc/a/a/d;->a:I
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_21
iget v1, p1, Lc/a/a/d;->a:I
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1}, Lc/a/a/b;->a(C)Z
move-result v1
if-eqz v1, :cond_27
:cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_27
iget v1, p1, Lc/a/a/d;->a:I
add-int/lit8 v2, v1, 0x1
iput v2, p1, Lc/a/a/d;->a:I
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
iget v1, p1, Lc/a/a/d;->a:I
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v1, v2, :cond_54
iget v1, p1, Lc/a/a/d;->a:I
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1}, Lc/a/a/b;->b(C)Z
move-result v1
if-eqz v1, :cond_54
iget v1, p1, Lc/a/a/d;->a:I
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
invoke-static {v1}, Lc/a/a/b;->a(C)Z
move-result v1
if-eqz v1, :cond_27
:cond_54
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Ljava/lang/String;Lc/a/a/c;Lc/a/a/d;)V
.registers 5
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
invoke-static {p1, v0}, Lc/a/a/c;->a(Lc/a/a/c;Ljava/util/Hashtable;)V
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
invoke-static {p1, v0}, Lc/a/a/c;->b(Lc/a/a/c;Ljava/util/Hashtable;)V
:goto_10
iget v0, p2, Lc/a/a/d;->a:I
invoke-static {p0, v0}, Lc/a/a/b;->a(Ljava/lang/String;I)I
move-result v0
iput v0, p2, Lc/a/a/d;->a:I
iget v0, p2, Lc/a/a/d;->a:I
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-lt v0, v1, :cond_21
return-void
:cond_21
iget v0, p2, Lc/a/a/d;->a:I
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x3b
if-eq v0, v1, :cond_31
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_31
iget v0, p2, Lc/a/a/d;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p2, Lc/a/a/d;->a:I
invoke-static {p0, p1, p2}, Lc/a/a/b;->c(Ljava/lang/String;Lc/a/a/c;Lc/a/a/d;)V
goto :goto_10
.end method
.method private static b(C)Z
.registers 2
const/16 v0, 0x21
if-lt p0, v0, :cond_a
const/16 v0, 0x7e
if-gt p0, v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private static c(Ljava/lang/String;Lc/a/a/c;Lc/a/a/d;)V
.registers 6
invoke-static {p0, p2}, Lc/a/a/b;->b(Ljava/lang/String;Lc/a/a/d;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
iget v0, p2, Lc/a/a/d;->a:I
invoke-static {p0, v0}, Lc/a/a/b;->a(Ljava/lang/String;I)I
move-result v0
iput v0, p2, Lc/a/a/d;->a:I
iget v0, p2, Lc/a/a/d;->a:I
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-ge v0, v2, :cond_22
iget v0, p2, Lc/a/a/d;->a:I
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v2, 0x3d
if-eq v0, v2, :cond_28
:cond_22
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_28
iget v0, p2, Lc/a/a/d;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p2, Lc/a/a/d;->a:I
iget v0, p2, Lc/a/a/d;->a:I
invoke-static {p0, v0}, Lc/a/a/b;->a(Ljava/lang/String;I)I
move-result v0
iput v0, p2, Lc/a/a/d;->a:I
iget v0, p2, Lc/a/a/d;->a:I
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-lt v0, v2, :cond_44
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_44
iget v0, p2, Lc/a/a/d;->a:I
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v2, 0x22
if-ne v0, v2, :cond_5a
invoke-static {p0, p2}, Lc/a/a/b;->a(Ljava/lang/String;Lc/a/a/d;)Ljava/lang/String;
move-result-object v0
:goto_52
invoke-static {p1}, Lc/a/a/c;->b(Lc/a/a/c;)Ljava/util/Hashtable;
move-result-object v2
invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:cond_5a
invoke-static {p0, p2}, Lc/a/a/b;->b(Ljava/lang/String;Lc/a/a/d;)Ljava/lang/String;
move-result-object v0
goto :goto_52
.end method