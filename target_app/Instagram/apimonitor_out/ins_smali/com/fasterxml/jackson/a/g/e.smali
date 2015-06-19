.class public final Lcom/fasterxml/jackson/a/g/e;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"
.implements Lcom/fasterxml/jackson/a/g/j;
.implements Lcom/fasterxml/jackson/a/t;
.implements Ljava/io/Serializable;
.field public static final a:Lcom/fasterxml/jackson/a/c/l;
.field protected b:Lcom/fasterxml/jackson/a/g/g;
.field protected c:Lcom/fasterxml/jackson/a/g/g;
.field protected final d:Lcom/fasterxml/jackson/a/u;
.field protected e:Z
.field protected transient f:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/fasterxml/jackson/a/c/l;
const-string v1, " "
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/c/l;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/a/g/e;->a:Lcom/fasterxml/jackson/a/c/l;
return-void
.end method
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/g/e;->a:Lcom/fasterxml/jackson/a/c/l;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/g/e;-><init>(Lcom/fasterxml/jackson/a/u;)V
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/a/g/e;)V
.registers 3
iget-object v0, p1, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/a/g/e;-><init>(Lcom/fasterxml/jackson/a/g/e;Lcom/fasterxml/jackson/a/u;)V
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/a/g/e;Lcom/fasterxml/jackson/a/u;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/fasterxml/jackson/a/g/f;->a:Lcom/fasterxml/jackson/a/g/f;
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
sget-object v0, Lcom/fasterxml/jackson/a/g/h;->a:Lcom/fasterxml/jackson/a/g/h;
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/g/e;->e:Z
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
iget-object v0, p1, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
iget-object v0, p1, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
iget-boolean v0, p1, Lcom/fasterxml/jackson/a/g/e;->e:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/g/e;->e:Z
iget v0, p1, Lcom/fasterxml/jackson/a/g/e;->f:I
iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
iput-object p2, p0, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/a/u;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/fasterxml/jackson/a/g/f;->a:Lcom/fasterxml/jackson/a/g/f;
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
sget-object v0, Lcom/fasterxml/jackson/a/g/h;->a:Lcom/fasterxml/jackson/a/g/h;
iput-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/a/g/e;->e:Z
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
iput-object p1, p0, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;
return-void
.end method
.method private b()Lcom/fasterxml/jackson/a/g/e;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/a/g/e;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/a/g/e;-><init>(Lcom/fasterxml/jackson/a/g/e;)V
return-object v0
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/a/g/e;->b()Lcom/fasterxml/jackson/a/g/e;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/fasterxml/jackson/a/h;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->d:Lcom/fasterxml/jackson/a/u;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Lcom/fasterxml/jackson/a/u;)V
:cond_9
return-void
.end method
.method public final a(Lcom/fasterxml/jackson/a/h;I)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
invoke-interface {v0}, Lcom/fasterxml/jackson/a/g/g;->a()Z
move-result v0
if-nez v0, :cond_e
iget v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
:cond_e
if-lez p2, :cond_1d
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V
:goto_17
const/16 v0, 0x7d
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
return-void
:cond_1d
const/16 v0, 0x20
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
goto :goto_17
.end method
.method public final b(Lcom/fasterxml/jackson/a/h;)V
.registers 3
const/16 v0, 0x7b
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
invoke-interface {v0}, Lcom/fasterxml/jackson/a/g/g;->a()Z
move-result v0
if-nez v0, :cond_13
iget v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
:cond_13
return-void
.end method
.method public final b(Lcom/fasterxml/jackson/a/h;I)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
invoke-interface {v0}, Lcom/fasterxml/jackson/a/g/g;->a()Z
move-result v0
if-nez v0, :cond_e
iget v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
:cond_e
if-lez p2, :cond_1d
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V
:goto_17
const/16 v0, 0x5d
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
return-void
:cond_1d
const/16 v0, 0x20
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
goto :goto_17
.end method
.method public final c(Lcom/fasterxml/jackson/a/h;)V
.registers 4
const/16 v0, 0x2c
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V
return-void
.end method
.method public final d(Lcom/fasterxml/jackson/a/h;)V
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/a/g/e;->e:Z
if-eqz v0, :cond_a
const-string v0, " : "
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(Ljava/lang/String;)V
:goto_9
return-void
:cond_a
const/16 v0, 0x3a
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
goto :goto_9
.end method
.method public final e(Lcom/fasterxml/jackson/a/h;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
invoke-interface {v0}, Lcom/fasterxml/jackson/a/g/g;->a()Z
move-result v0
if-nez v0, :cond_e
iget v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
:cond_e
const/16 v0, 0x5b
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
return-void
.end method
.method public final f(Lcom/fasterxml/jackson/a/h;)V
.registers 4
const/16 v0, 0x2c
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeRaw(C)V
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V
return-void
.end method
.method public final g(Lcom/fasterxml/jackson/a/h;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->b:Lcom/fasterxml/jackson/a/g/g;
iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V
return-void
.end method
.method public final h(Lcom/fasterxml/jackson/a/h;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/a/g/e;->c:Lcom/fasterxml/jackson/a/g/g;
iget v1, p0, Lcom/fasterxml/jackson/a/g/e;->f:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/a/g/g;->a(Lcom/fasterxml/jackson/a/h;I)V
return-void
.end method