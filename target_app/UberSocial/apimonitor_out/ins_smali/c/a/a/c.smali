.class final Lc/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.field private static final a:J = -0x5ce4582f8fa3edecL
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/util/Hashtable;
.field private e:Ljava/util/Hashtable;
.method constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lc/a/a/c;->b:Ljava/lang/String;
iput-object v0, p0, Lc/a/a/c;->c:Ljava/lang/String;
iput-object v0, p0, Lc/a/a/c;->d:Ljava/util/Hashtable;
iput-object v0, p0, Lc/a/a/c;->e:Ljava/util/Hashtable;
return-void
.end method
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lc/a/a/c;->b:Ljava/lang/String;
iput-object p2, p0, Lc/a/a/c;->c:Ljava/lang/String;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lc/a/a/c;->d:Ljava/util/Hashtable;
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lc/a/a/c;->e:Ljava/util/Hashtable;
return-void
.end method
.method static synthetic a(Lc/a/a/c;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lc/a/a/c;->b:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lc/a/a/c;Ljava/util/Hashtable;)V
.registers 2
iput-object p1, p0, Lc/a/a/c;->d:Ljava/util/Hashtable;
return-void
.end method
.method static synthetic b(Lc/a/a/c;)Ljava/util/Hashtable;
.registers 2
iget-object v0, p0, Lc/a/a/c;->d:Ljava/util/Hashtable;
return-object v0
.end method
.method static synthetic b(Lc/a/a/c;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lc/a/a/c;->c:Ljava/lang/String;
return-void
.end method
.method static synthetic b(Lc/a/a/c;Ljava/util/Hashtable;)V
.registers 2
iput-object p1, p0, Lc/a/a/c;->e:Ljava/util/Hashtable;
return-void
.end method
.method  a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lc/a/a/c;->b:Ljava/lang/String;
return-object v0
.end method
.method  a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lc/a/a/c;->d:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method  a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lc/a/a/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method  a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/16 v1, 0x22
if-nez p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v0, 0x0
invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
if-ne v0, v1, :cond_23
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
if-ne v0, v1, :cond_23
const/4 v0, 0x1
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x2
invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p2
:cond_23
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_4
iget-object v0, p0, Lc/a/a/c;->d:Ljava/util/Hashtable;
invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
.end method
.method  a(Lc/a/a/c;)Z
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p0}, Lc/a/a/c;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lc/a/a/c;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method  b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lc/a/a/c;->c:Ljava/lang/String;
return-object v0
.end method
.method  b(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lc/a/a/c;->d:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method  c(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lc/a/a/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method  c()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lc/a/a/c;->b:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lc/a/a/c;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public clone()Ljava/lang/Object;
.registers 4
new-instance v1, Lc/a/a/c;
iget-object v0, p0, Lc/a/a/c;->b:Ljava/lang/String;
iget-object v2, p0, Lc/a/a/c;->c:Ljava/lang/String;
invoke-direct {v1, v0, v2}, Lc/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lc/a/a/c;->d:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
iput-object v0, v1, Lc/a/a/c;->d:Ljava/util/Hashtable;
iget-object v0, p0, Lc/a/a/c;->e:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Hashtable;
iput-object v0, v1, Lc/a/a/c;->e:Ljava/util/Hashtable;
return-object v1
.end method