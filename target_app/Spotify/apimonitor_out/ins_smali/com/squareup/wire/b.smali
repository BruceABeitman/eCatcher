.class final Lcom/squareup/wire/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/Comparator;
.field private final b:Ljava/lang/Class;
.field private final c:[I
.field private final d:[Lcom/squareup/wire/m;
.field private final e:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/squareup/wire/b$1;
invoke-direct {v0}, Lcom/squareup/wire/b$1;-><init>()V
sput-object v0, Lcom/squareup/wire/b;->a:Ljava/util/Comparator;
return-void
.end method
.method constructor <init>(Ljava/lang/Class;)V
.registers 7
const/4 v4, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/wire/b;->b:Ljava/lang/Class;
invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/squareup/wire/m;
iput-object v0, p0, Lcom/squareup/wire/b;->d:[Lcom/squareup/wire/m;
iget-object v0, p0, Lcom/squareup/wire/b;->d:[Lcom/squareup/wire/m;
sget-object v2, Lcom/squareup/wire/b;->a:Ljava/util/Comparator;
invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
iget-object v0, p0, Lcom/squareup/wire/b;->d:[Lcom/squareup/wire/m;
array-length v2, v0
iget-object v0, p0, Lcom/squareup/wire/b;->d:[Lcom/squareup/wire/m;
aget-object v0, v0, v1
invoke-interface {v0}, Lcom/squareup/wire/m;->a()I
move-result v0
if-ne v0, v4, :cond_35
iget-object v0, p0, Lcom/squareup/wire/b;->d:[Lcom/squareup/wire/m;
add-int/lit8 v3, v2, -0x1
aget-object v0, v0, v3
invoke-interface {v0}, Lcom/squareup/wire/m;->a()I
move-result v0
if-ne v0, v2, :cond_35
iput-boolean v4, p0, Lcom/squareup/wire/b;->e:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/squareup/wire/b;->c:[I
:cond_34
return-void
:cond_35
iput-boolean v1, p0, Lcom/squareup/wire/b;->e:Z
new-array v0, v2, [I
iput-object v0, p0, Lcom/squareup/wire/b;->c:[I
move v0, v1
:goto_3c
if-ge v0, v2, :cond_34
iget-object v1, p0, Lcom/squareup/wire/b;->c:[I
iget-object v3, p0, Lcom/squareup/wire/b;->d:[Lcom/squareup/wire/m;
aget-object v3, v3, v0
invoke-interface {v3}, Lcom/squareup/wire/m;->a()I
move-result v3
aput v3, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_3c
.end method
.method public static a(Lcom/squareup/wire/m;)I
.registers 2
invoke-interface {p0}, Lcom/squareup/wire/m;->a()I
move-result v0
return v0
.end method
.method public final a(I)Lcom/squareup/wire/m;
.registers 5
iget-boolean v0, p0, Lcom/squareup/wire/b;->e:Z
if-eqz v0, :cond_b
add-int/lit8 v0, p1, -0x1
:try_start_6
:goto_6
iget-object v1, p0, Lcom/squareup/wire/b;->d:[Lcom/squareup/wire/m;
aget-object v0, v1, v0
:try_end_a
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_a} :catch_12
return-object v0
:cond_b
iget-object v0, p0, Lcom/squareup/wire/b;->c:[I
invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I
move-result v0
goto :goto_6
:catch_12
move-exception v0
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown enum tag "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/squareup/wire/b;->b:Ljava/lang/Class;
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method